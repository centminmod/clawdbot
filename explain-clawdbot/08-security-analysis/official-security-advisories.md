> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Official Security Advisories (CVEs/GHSAs)

> **Source:** [github.com/openclaw/openclaw/security](https://github.com/openclaw/openclaw/security)
>
> These are officially disclosed vulnerabilities with assigned CVE/GHSA identifiers. Earlier advisories were patched in v2026.1.29-1.30; newer advisories (Feb 14) are pending version assignment.

### Advisory Summary

| ID | Severity | Summary | CWE | Patched | Credits |
|----|----------|---------|-----|---------|---------|
| [CVE-2026-24763](https://github.com/openclaw/openclaw/security/advisories/GHSA-mc68-q9jw-2h3v) | HIGH | Command Injection via Docker PATH Variable | CWE-78 | v2026.1.29 | @berkdedekarginoglu |
| [GHSA-g8p2-7wf7-98mq](https://github.com/openclaw/openclaw/security/advisories/GHSA-g8p2-7wf7-98mq) | HIGH | 1-Click RCE via gatewayUrl Token Exfiltration | CWE-200 | v2026.1.29 | DepthFirstDisclosures, @0xacb, @mavlevin |
| [GHSA-q284-4pvr-m585](https://github.com/openclaw/openclaw/security/advisories/GHSA-q284-4pvr-m585) | HIGH | OS Command Injection via sshNodeCommand | - | v2026.1.29 | @koko9xxx |
| [CVE-2026-25593](https://github.com/openclaw/openclaw/security/advisories/GHSA-g55j-c2v4-pjcg) | HIGH | Unauthenticated Local RCE via WebSocket config.apply | CWE-20, CWE-78, CWE-306 | v2026.1.20 | @hackerman70000 |
| [CVE-2026-25475](https://github.com/openclaw/openclaw/security/advisories/GHSA-r8g4-86fx-92mq) | MEDIUM | Local File Inclusion via MEDIA: Path Extraction | CWE-22, CWE-200 | v2026.1.30 | @jasonsutter87 |
| [GHSA-gv46-4xfq-jv58](https://github.com/openclaw/openclaw/security/advisories/GHSA-gv46-4xfq-jv58) | CRITICAL | Remote Code Execution via Node Invoke Approval Bypass | - | pending | - |
| [GHSA-943q-mwmv-hhvh](https://github.com/openclaw/openclaw/security/advisories/GHSA-943q-mwmv-hhvh) | HIGH | OC-02: Gateway /tools/invoke Tool Escalation + ACP Auto-Approval | - | pending | - |
| [GHSA-hv93-r4j3-q65f](https://github.com/openclaw/openclaw/security/advisories/GHSA-hv93-r4j3-q65f) | HIGH | Hook Session Key Override Cross-Session Routing | - | pending | - |
| [GHSA-64qx-vpxx-mvqf](https://github.com/openclaw/openclaw/security/advisories/GHSA-64qx-vpxx-mvqf) | HIGH | Arbitrary Transcript Path File Write via sessionFile | - | pending | - |
| [GHSA-56f2-hvwg-5743](https://github.com/openclaw/openclaw/security/advisories/GHSA-56f2-hvwg-5743) | HIGH | SSRF in Image Tool Remote Fetch | - | pending | - |
| [GHSA-xc7w-v5x6-cc87](https://github.com/openclaw/openclaw/security/advisories/GHSA-xc7w-v5x6-cc87) | MEDIUM | Webhook Auth Bypass Behind Reverse Proxy (Loopback Trust) | - | pending | - |
| [GHSA-qw99-grcx-4pvm](https://github.com/openclaw/openclaw/security/advisories/GHSA-qw99-grcx-4pvm) | MEDIUM | Chrome Extension Relay Wildcard Binding | - | pending | - |
| [GHSA-wfp2-v9c7-fh79](https://github.com/openclaw/openclaw/security/advisories/GHSA-wfp2-v9c7-fh79) | MEDIUM | SSRF via Attachment/Media URL Hydration | CWE-918 | < v2026.2.2 | - |
| [CVE-2026-24764](https://github.com/openclaw/openclaw/security/advisories/GHSA-782p-5fr5-7fj8) | LOW | Slack Integration Hardening: Channel Metadata Injection | CWE-74, CWE-94 | < v2026.2.3 | - |
| [GHSA-mv9j-6xhh-g383](https://github.com/openclaw/openclaw/security/advisories/GHSA-mv9j-6xhh-g383) | HIGH | Unauthenticated Nostr Profile HTTP Endpoints | - | pending | - |
| [GHSA-3m3q-x3gj-f79x](https://github.com/openclaw/openclaw/security/advisories/GHSA-3m3q-x3gj-f79x) | MEDIUM | Voice-Call Webhook Verification Bypass Behind Proxy | - | pending | - |
| [GHSA-pchc-86f6-8758](https://github.com/openclaw/openclaw/security/advisories/GHSA-pchc-86f6-8758) | HIGH | BlueBubbles Webhook Auth Bypass via Loopback Proxy Trust | - | v2026.2.13 | @MegaManSec |
| [GHSA-g27f-9qjv-22pm](https://github.com/openclaw/openclaw/security/advisories/GHSA-g27f-9qjv-22pm) | LOW | Log Poisoning via WebSocket Headers | - | pending | - |

### CVE-2026-24763: Docker PATH Command Injection

**GHSA:** GHSA-mc68-q9jw-2h3v
**Severity:** HIGH (CWE-78: OS Command Injection)
**Affected:** ≤ v2026.1.24
**Credits:** @berkdedekarginoglu

**Description:** Unsafe handling of the PATH environment variable when constructing shell commands in Docker sandbox execution. Authenticated users who could control environment variables could influence command execution within the container context.

**Impact:** Execution of unintended commands inside the container, access to container filesystem and environment variables, exposure of sensitive data.

**Fix:** Commit `771f23d` moved `setupCommand` PATH handling from shell string interpolation to a container env var. See [Post-merge hardening (PR #1)](./post-merge-hardening.md#post-merge-hardening-pr-1-129-upstream-commits).

### GHSA-g8p2-7wf7-98mq: gatewayUrl Token Exfiltration

**Severity:** HIGH (CWE-200: Exposure of Sensitive Information)
**Affected:** ≤ v2026.1.28
**Credits:** DepthFirstDisclosures, @0xacb, @mavlevin

**Description:** The Control UI trusted `gatewayUrl` from query string without validation and auto-connected on load, sending the stored gateway token in the WebSocket connect payload. Clicking a crafted link could send the token to an attacker-controlled server.

**Impact:** Full gateway compromise. The attacker gains operator-level access to the gateway API, enabling arbitrary config changes and code execution. Works even when gateway binds to loopback because the victim's browser acts as the bridge.

**Fix:** Control UI now requires user confirmation before connecting to a new gateway URL (`ui/src/ui/views/gateway-url-confirmation.ts`).

### GHSA-q284-4pvr-m585: sshNodeCommand Injection

**Severity:** HIGH
**Affected:** < v2026.1.29
**Credits:** @koko9xxx

**Description:** Two related vulnerabilities in the macOS app's SSH remote connection handling (`apps/macos/Sources/OpenClaw/CommandResolver.swift`):
1. `sshNodeCommand` constructed shell script without escaping user-supplied project path in error messages
2. `parseSSHTarget` did not validate that SSH targets couldn't begin with a dash

**Impact:** Arbitrary code execution on either the user's local machine or configured remote SSH host.

**Affected component:** macOS menubar application (Remote/SSH mode only). Not affected: CLI, web gateway, iOS/Android apps, Local mode users.

**Fix:** Commit `06289b36d` validates SSH targets and escapes paths.

### CVE-2026-25593: Unauthenticated Local RCE via WebSocket config.apply

**GHSA:** GHSA-g55j-c2v4-pjcg
**Severity:** HIGH (CWE-20: Improper Input Validation, CWE-78: OS Command Injection, CWE-306: Missing Authentication)
**Affected:** < v2026.1.20
**Credits:** @hackerman70000

**Description:** Unauthenticated local WebSocket client could write an unsafe `cliPath` value via the `config.apply` method, enabling command injection. An attacker on the same machine could connect to the gateway's WebSocket endpoint and modify configuration to inject arbitrary commands.

**Impact:** Local privilege escalation and arbitrary code execution as the OpenClaw gateway process user.

**Affected component:** Gateway WebSocket API. Requires local network access to gateway port.

**Fix:** Gateway now validates `cliPath` and requires authentication for config modification methods.

### CVE-2026-25475: Local File Inclusion via MEDIA: Path Extraction

**GHSA:** GHSA-r8g4-86fx-92mq
**Severity:** MEDIUM (CWE-22: Path Traversal, CWE-200: Information Exposure)
**Affected:** < v2026.1.30
**Credits:** @jasonsutter87

**Description:** The `isValidMedia()` function in `src/media/parse.ts` (now at lines 36-64) previously accepted arbitrary paths including system files like `/etc/passwd`, `~/.ssh/id_rsa`, and traversal paths like `../../../etc/passwd`. An attacker could craft a message containing a `MEDIA:` reference pointing to sensitive local files. Fixed: `isValidMedia()` now accepts all path types but `assertLocalMediaAllowed()` (`src/web/media.ts:42-69`) enforces directory root guards at load time.

**Impact:** Exposure of sensitive local files (credentials, configuration, SSH keys) through the media pipeline.

**Affected component:** Media path parsing in `src/media/parse.ts`.

**Fix:** Media path validation now restricts extraction to the media directory and rejects traversal sequences.

### GHSA-wfp2-v9c7-fh79: SSRF via Attachment/Media URL Hydration

**Severity:** MEDIUM (CWE-918: Server-Side Request Forgery)
**Affected:** < v2026.2.2
**Credits:** —

**Description:** Server-side request forgery via attachment or media URL hydration. An attacker could craft media/attachment URLs that, when hydrated by the server, trigger requests to internal services or unintended external endpoints.

**Impact:** Access to internal services, potential information disclosure via SSRF.

**Fix:** Patched in v2026.2.2.

### CVE-2026-24764: Slack Integration Hardening — Channel Metadata Injection

**GHSA:** GHSA-782p-5fr5-7fj8
**Severity:** LOW (CWE-74: Injection, CWE-94: Code Injection)
**Affected:** < v2026.2.3
**Credits:** —

**Description:** Slack channel metadata (topic, purpose, channel name) could influence system prompts, potentially allowing prompt injection via channel configuration fields that are reflected into the agent's context.

**Impact:** Prompt injection via Slack channel metadata. Low severity due to requiring Slack workspace admin access to modify channel metadata.

**Fix:** Patched in v2026.2.3. Channel metadata is now sanitized before inclusion in system prompts.

### GHSA-mv9j-6xhh-g383: Unauthenticated Nostr Profile HTTP Endpoints

**Severity:** HIGH
**Published:** 2026-02-14
**Credits:** —

**Description:** Unauthenticated Nostr profile HTTP endpoints allow remote profile and configuration tampering. An attacker could modify Nostr profile settings without authentication via the HTTP API endpoints.

**Impact:** Remote profile/config tampering via unauthenticated HTTP requests.

**Fix:** Pending. Related hardening: `3e0e78f82` (fix(nostr): guard profile mutations) adds mutation guards in `extensions/nostr/src/nostr-profile-http.ts`. See [Feb 15 sync 5](./post-merge-hardening/2026-02-15-sync-5.md).

### GHSA-3m3q-x3gj-f79x: Voice-Call Webhook Verification Bypass Behind Proxy

**Severity:** MEDIUM
**Published:** 2026-02-14
**Credits:** —

**Description:** The optional voice-call plugin's webhook verification may be bypassed when the gateway is deployed behind certain proxy configurations that alter or strip request headers used for signature validation.

**Impact:** Webhook authentication bypass in proxy configurations, potentially allowing unauthorized voice call events to be processed.

**Fix:** Pending. Related prior hardening: `a749db982` (Feb 4 sync 3) enhanced webhook verification with provider-specific validation for Twilio and Plivo. Further hardened by `29b587e73` (Telnyx fail-closed) and `ff11d8793` (Twilio ngrok signature enforcement) in [Feb 15 sync 6](./post-merge-hardening/2026-02-15-sync-6.md).

### GHSA-g27f-9qjv-22pm: Log Poisoning via WebSocket Headers

**Severity:** LOW
**Published:** 2026-02-14
**Credits:** —

**Description:** OpenClaw log poisoning (indirect prompt injection) via WebSocket headers. Crafted WebSocket connection headers could inject content into gateway logs, potentially influencing agent behavior if logs are consumed by the AI agent.

**Impact:** Indirect prompt injection via log content. Low severity due to requiring WebSocket connection access and the indirect nature of the injection path.

**Fix:** Pending.

### GHSA-pchc-86f6-8758: BlueBubbles Webhook Auth Bypass via Loopback Proxy Trust

**Severity:** HIGH
**Published:** 2026-02-14
**Credits:** @MegaManSec

**Description:** The optional BlueBubbles iMessage channel plugin could accept webhook requests as authenticated based only on the TCP peer address being loopback (`127.0.0.1`, `::1`, `::ffff:127.0.0.1`) even when the configured webhook secret was missing or incorrect. If a deployment exposes the BlueBubbles webhook endpoint through a same-host reverse proxy (or an attacker reaches loopback via SSRF), an unauthenticated party may be able to inject inbound webhook events into the agent pipeline.

**Impact:** Webhook authentication bypass in loopback proxy configurations, potentially allowing unauthorized BlueBubbles events to be processed.

**Fix:** Fixed in v2026.2.13. Commits `f836c385f`, `743f4b284` (defense-in-depth). Related hardening: `71f357d94` (LFI path hardening in BlueBubbles media-send). See [Feb 15 sync 6](./post-merge-hardening/2026-02-15-sync-6.md).

### Relationship to Third-Party Audits

These official CVEs are **distinct from** the two third-party security audits documented below:
- [Issue #1796 (Argus)](./issue-1796-argus-audit.md) — Automated scanner report (0/8 exploitable)
- [Medium Article (Saad Khalid)](./medium-article-audit.md) — Manual pentest claims (0/8 exploitable)

The official CVEs were responsibly disclosed through GitHub Security Advisories and patched before public disclosure. The third-party audits contain false positives, design observations, and overstated claims (see analysis sections).
