> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Open Upstream Security Pull Requests

> **Status:** These PRs in upstream openclaw/openclaw fix or harden security-related code. Monitor merge status and sync locally when merged.
>
> **Last checked:** 10-02-2026 (initial seed from cross-references in open-upstream-issues.md)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#9436](https://github.com/openclaw/openclaw/pull/9436) | MERGED | security-fix | Remove query token acceptance from gateway hooks | [#9435](https://github.com/openclaw/openclaw/issues/9435), [#5120](https://github.com/openclaw/openclaw/issues/5120) | SYNC NEEDED |
| [#9518](https://github.com/openclaw/openclaw/pull/9518) | MERGED | security-fix | Add `authorizeCanvasRequest()` for canvas/A2UI auth | [#9517](https://github.com/openclaw/openclaw/issues/9517) | SYNC NEEDED |
| [#11093](https://github.com/openclaw/openclaw/pull/11093) | MERGED | security-fix | Add `sanitizeFilename()` to BlueBubbles attachments | [#10333](https://github.com/openclaw/openclaw/issues/10333) | SYNC NEEDED |

**Total:** 3 tracked PRs (3 merged)

### Cross-Reference: PRs and Tracked Issues

| PR # | Fixes Issue(s) | Issue Severity | PR Status | Notes |
|------|---------------|----------------|-----------|-------|
| [#9436](https://github.com/openclaw/openclaw/pull/9436) | [#9435](https://github.com/openclaw/openclaw/issues/9435) (HIGH), [#5120](https://github.com/openclaw/openclaw/issues/5120) (MEDIUM) | HIGH | MERGED | Query token acceptance removed from `extractHookToken()` in `src/gateway/hooks.ts`; server returns HTTP 400 when `?token=` present |
| [#9518](https://github.com/openclaw/openclaw/pull/9518) | [#9517](https://github.com/openclaw/openclaw/issues/9517) (HIGH) | HIGH | MERGED | New `authorizeCanvasRequest()` at `src/gateway/server-http.ts:92-126` wraps canvas/A2UI endpoints |
| [#11093](https://github.com/openclaw/openclaw/pull/11093) | [#10333](https://github.com/openclaw/openclaw/issues/10333) (MEDIUM) | MEDIUM | MERGED | `sanitizeFilename()` at `extensions/bluebubbles/src/attachments.ts:26-30` strips dangerous chars from Content-Disposition filenames |

### #9436: Remove Query Token Acceptance from Gateway Hooks

**PR Status:** MERGED
**Category:** security-fix
**Closes:** [#9435](https://github.com/openclaw/openclaw/issues/9435) (HIGH — gateway auth token in URL), [#5120](https://github.com/openclaw/openclaw/issues/5120) (MEDIUM — webhook token via query params)

**Changes:**
- `src/gateway/hooks.ts` — `extractHookToken()` no longer reads `url.searchParams` for token
- `src/gateway/server-http.ts:150-157` — returns HTTP 400 when `?token=` query parameter is present
- `src/commands/dashboard.ts` — no longer constructs `?token=` URLs
- `src/commands/onboard-helpers.ts` — no longer passes token in URL

**Local Impact:** SYNC NEEDED — local `extractHookToken()` may still accept query tokens

### #9518: Add Canvas/A2UI Authorization

**PR Status:** MERGED
**Category:** security-fix
**Closes:** [#9517](https://github.com/openclaw/openclaw/issues/9517) (HIGH — canvas host auth bypass)

**Changes:**
- `src/gateway/server-http.ts:92-126` — new `authorizeCanvasRequest()` function
- `src/gateway/server-http.ts:356-376` — canvas HTTP handler now auth-wrapped
- `src/gateway/server-http.ts:425` — canvas WebSocket upgrade now auth-wrapped

**Local Impact:** SYNC NEEDED — local canvas endpoints may still be unauthenticated

### #11093: BlueBubbles Filename Sanitization

**PR Status:** MERGED
**Category:** security-fix
**Closes:** [#10333](https://github.com/openclaw/openclaw/issues/10333) (MEDIUM — multipart header injection)

**Changes:**
- `extensions/bluebubbles/src/attachments.ts:26-30` — `sanitizeFilename()` now strips `"`, `\r`, `\n`, and other Content-Disposition-dangerous characters beyond just `path.basename()`

**Local Impact:** SYNC NEEDED — local `sanitizeFilename()` may still use only `path.basename()`
