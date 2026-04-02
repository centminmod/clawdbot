> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [ClawJacked](./clawjacked-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## ClawJacked — Cross-Origin WebSocket Hijack (Feb 2026)

> **Source:** [BleepingComputer](https://www.bleepingcomputer.com/news/security/clawjacked-attack-let-malicious-websites-hijack-openclaw-to-steal-data/) · [Demo video](https://www.youtube.com/watch?v=A15fuHs7fOc)
> **Researcher:** Oasis Security (@luz-oasis)
> **Fix date:** Feb 26, 2026 — shipped in 2026.2.26
> **Disclosure:** March 1, 2026

---

### TL;DR (Plain English)

Any website open in your browser can connect to `ws://127.0.0.1:18789` — browsers don't block WebSocket connections to localhost. Before the fix, the OpenClaw gateway rate limiter exempted loopback addresses by default so that local CLI sessions would never get locked out. A malicious page could exploit this exemption to guess the gateway password at hundreds of attempts per second (Oasis Security lab measurement). On a successful guess, the gateway's auto-pairing logic would silently register the attacker's session as a trusted device — no user prompt required. From there, the attacker had full admin access.

---

### What Happened (Plain English)

Oasis Security discovered that a malicious website could silently take over a running OpenClaw gateway if a user visited the page while their gateway was active. The attack required no browser extension, no special permissions, and no user interaction beyond visiting the page.

**Timeline:**

- **Discovery:** Oasis Security identified the attack chain targeting the OpenClaw local gateway WebSocket
- **Fix turnaround:** OpenClaw engineers patched all three root causes within approximately 24 hours
- **Fix shipped:** Feb 26, 2026 in release `2026.2.26`
- **Public disclosure:** March 1, 2026 via BleepingComputer and Oasis Security demo

**The attack surface:** Three design decisions combined to create the vulnerability:

1. **No browser CORS block for WebSocket** — browsers restrict `fetch()`/`XMLHttpRequest` to localhost by default, but WebSocket connections (`ws://127.0.0.1:...`) are not blocked by the browser's private network access rules.
2. **Loopback rate-limit exemption** — the gateway's in-memory rate limiter exempted `127.0.0.1`/`::1` by design so local CLI tools would never get locked out. A browser connecting from localhost was treated identically to a local CLI session.
3. **Silent auto-pairing for local clients** — once a local connection authenticated, the gateway would auto-approve device pairing without prompting the user, provided no browser `Origin` header indicated a non-Control-UI browser context.

---

### Attack Chain (Technical)

**Step 1 — Browser opens WebSocket to gateway**

Malicious JavaScript running in any browser tab opens a WebSocket to `ws://127.0.0.1:18789`. Unlike `fetch()`, browsers do not enforce private network access restrictions for WebSocket connections to localhost.

**Step 2 — Rate limiter exempts loopback; no failures recorded**

The gateway's auth rate limiter checks whether the client IP is exempt before applying throttling (`src/gateway/auth-rate-limit.ts:131-133`):

```typescript
function isExempt(ip: string): boolean {
  return exemptLoopback && isLoopbackAddress(ip);
}
```

When exempt, the `check()` function returns `{ allowed: true }` immediately (`src/gateway/auth-rate-limit.ts:143-144`). Crucially, `recordFailure()` also short-circuits for exempt IPs (`src/gateway/auth-rate-limit.ts:176-177`), meaning failed password attempts from loopback are never counted. The module comment states this intent explicitly: "Loopback addresses (127.0.0.1 / ::1) are exempt by default so that local CLI sessions are never locked out" (`src/gateway/auth-rate-limit.ts:13-14`).

**Step 3 — Unlimited password guessing**

With no rate limiting applied, the browser could send authentication attempts as fast as the server could process them. Oasis Security measured "hundreds of attempts per second" in their lab testing. Weak or default passwords would fall quickly.

**Step 4 — Silent auto-pairing registers attacker as trusted device**

After a successful auth, the gateway checks whether to auto-approve device pairing (`src/gateway/server/ws-connection/handshake-auth-helpers.ts:48-62`):

```typescript
function shouldAllowSilentLocalPairing(params: {
  isLocalClient: boolean;
  hasBrowserOriginHeader: boolean;
  isControlUi: boolean;
  isWebchat: boolean;
  reason: "not-paired" | "role-upgrade" | "scope-upgrade" | "metadata-upgrade";
}): boolean {
  return (
    params.isLocalClient &&
    (!params.hasBrowserOriginHeader || params.isControlUi || params.isWebchat) &&
    (params.reason === "not-paired" || params.reason === "scope-upgrade")
  );
}
```

Before the fix, a browser WebSocket connection from localhost set `isLocalClient: true` but did not set `hasBrowserOriginHeader` in the path that reached this check — so silent pairing was allowed. When `pairing.request.silent === true`, the gateway immediately auto-approves without any user prompt (`src/gateway/server/ws-connection/message-handler.ts:829-838`):

```typescript
if (pairing.request.silent === true) {
  const approved = await approveDevicePairing(pairing.request.requestId);
  if (approved) {
    logGateway.info(
      `device pairing auto-approved device=${approved.device.deviceId} role=${approved.device.role ?? "unknown"}`,
    );
    // broadcasts device.pair.resolved { decision: "approved" }
  }
}
```

**Step 5 — Admin session: full gateway access**

With a paired admin session, the attacker could dump credentials stored in the gateway, list connected devices and nodes, read conversation logs, and execute shell commands on paired devices via the agent tool system.

---

### The Fix (2026.2.26)

Three targeted hardening changes closed the attack chain:

**1. Browser-origin loopback remapped to synthetic IP**

The gateway now detects when a connection carries an HTTP `Origin` header (indicating a browser WebSocket, not a CLI tool) and the client IP is a loopback address. In that case, the rate limiter sees the synthetic IP `198.18.0.1` instead of `127.0.0.1` (`src/gateway/server/ws-connection/handshake-auth-helpers.ts:9,25-46`):

```typescript
const BROWSER_ORIGIN_LOOPBACK_RATE_LIMIT_IP = "198.18.0.1";

function resolveHandshakeBrowserSecurityContext(params: { ... }): HandshakeBrowserSecurityContext {
  const hasBrowserOriginHeader = Boolean(
    params.requestOrigin && params.requestOrigin.trim() !== "",
  );
  return {
    hasBrowserOriginHeader,
    enforceOriginCheckForAnyClient: hasBrowserOriginHeader && !params.hasProxyHeaders,
    rateLimitClientIp:
      hasBrowserOriginHeader && isLoopbackAddress(params.clientIp)
        ? BROWSER_ORIGIN_LOOPBACK_RATE_LIMIT_IP  // <-- browser loopback → non-exempt IP
        : params.clientIp,
    authRateLimiter:
      hasBrowserOriginHeader && params.browserRateLimiter
        ? params.browserRateLimiter
        : params.rateLimiter,
  };
}
```

The synthetic IP `198.18.0.1` falls in the IANA benchmarking range (RFC 2544) — routable but never a real loopback address — so it is never exempt from rate limiting.

**2. Separate `browserRateLimiter` with no loopback exemption**

A dedicated `browserRateLimiter` instance is configured without the loopback exemption and applied to all browser-origin auth attempts. CLI tools continue using the original `rateLimiter` (which retains the loopback exemption so local CLI sessions are unaffected).

**3. Silent auto-pairing blocked for non-Control-UI browser clients**

`shouldAllowSilentLocalPairing()` now checks `hasBrowserOriginHeader`. A browser connection without `isControlUi` or `isWebchat` set returns `false` — the pairing request is queued for user approval instead of auto-approved.

---

### Impact Assessment

| What happened | What did NOT happen |
|---|---|
| Malicious websites could brute-force the gateway password from localhost | Attack required user to actively visit the malicious page |
| Successful auth led to silent device pairing (no user prompt) | No exploitation confirmed in the wild before disclosure |
| Admin session granted full gateway access | Loopback-only gateways (default config) were the target — public-facing gateways already had Origin checks |
| Gateway password length/complexity determined attack window | Gateways with strong random passwords were significantly harder to compromise |

---

### Remediation

- **Update to 2026.2.26 or later** ��� all three fixes are included in this release
- Run `openclaw security audit --deep` to verify WebSocket auth posture after upgrading
- Use a strong random gateway password (avoid short or dictionary passwords)
- Keep the gateway bound to loopback (`gateway.bind: "loopback"`) — the default — to limit attack surface even if a future bypass is found

---

### Note on Broader 2026.2.26 Release

ClawJacked was one of approximately 12 security fixes shipped in 2026.2.26. The same release addressed separate findings from @tdjackey and @zdi-disclosures covering unrelated vulnerabilities: symlink escape in workspace FS, path handling in browser temp output, exec approval bypass via trailing-space swap, macOS beta OAuth onboarding exposure, and several others. None of those findings are related to the ClawJacked cross-origin WebSocket attack chain.
