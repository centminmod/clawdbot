> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [ClawJacked](./clawjacked-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Open Upstream Security Issues

> **Status:** These issues are open in upstream openclaw/openclaw and confirmed to affect the local codebase. Monitor for patches.
>
> **Last checked:** 10-03-2026 (03:23 AEST)

| Issue | Severity | Summary | Local Impact |
|-------|----------|---------|--------------|
| [#8512](https://github.com/openclaw/openclaw/issues/8512) | ~~CRITICAL~~ WONTFIX | Plugin HTTP routes bypass gateway authentication | Closed upstream as NOT_PLANNED (2026-03-07); opt-in auth added via `matchedPluginRoutesRequireGatewayAuth()` (`route.auth==="gateway"`) but not enforced by default; still affects plugin routes without explicit auth config at `src/gateway/server/plugins-http.ts:52-58` |
| [#20683](https://github.com/openclaw/openclaw/issues/20683) | ~~HIGH~~ FIXED | Control UI allows token-only auth over HTTP (allowInsecureAuth bypass) | Fixed upstream (COMPLETED); `src/gateway/server/ws-connection/connect-policy.ts:22-33` |
| [#17936](https://github.com/openclaw/openclaw/issues/17936) | HIGH | message/sendAttachment exfiltrates local files when sandbox disabled | `src/infra/outbound/message-action-params.ts:279-280` — `normalizeSandboxMediaParams()` skips path validation when `sandboxRoot` absent; default sandbox-off mode is affected |
| [#20305](https://github.com/openclaw/openclaw/issues/20305) | HIGH | message tool cross-user sends in multi-tenant deployments (no per-agent scoping) | `src/infra/outbound/message-action-runner.ts` — no `allowedRecipients` or per-agent channel filtering; affects deployments with `dmScope: "per-channel-peer"` and 200+ agents |
| [#3277](https://github.com/openclaw/openclaw/issues/3277) | ~~HIGH~~ FIXED | Path validation bypass via `startsWith` prefix | Fixed upstream (COMPLETED 2026-02-15, consolidated Feb 19 sync 2); `src/infra/archive-path.ts:12,50` - `validateArchiveEntryPath()` + `resolveArchiveOutputPath()` (hardened Feb 15, consolidated to module Feb 19) |
| [#4949](https://github.com/openclaw/openclaw/issues/4949) | HIGH (WONTFIX) | Browser control server DNS rebinding | Closed upstream as NOT_PLANNED (2026-02-17); still affects local code at `src/browser/server.ts:65`; no Host header validation |
| [#4950](https://github.com/openclaw/openclaw/issues/4950) | HIGH (WONTFIX) | Arbitrary JS execution via browser evaluate (default on) | Closed upstream as NOT_PLANNED (2026-02-17); still affects local code at `src/browser/constants.ts:2` - `DEFAULT_BROWSER_EVALUATE_ENABLED = true` |
| [#4995](https://github.com/openclaw/openclaw/issues/4995) | HIGH (WONTFIX) | iMessage dmPolicy auto-responds with pairing codes | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/imessage/monitor/monitor-provider.ts:120,247-278` |
| [#5052](https://github.com/openclaw/openclaw/issues/5052) | ~~HIGH~~ FIXED | Config validation fail-open returns `{}` | Fixed upstream (COMPLETED 2026-03-07); commit `f53e10e3f` — `src/config/io.ts:757-760` now throws `INVALID_CONFIG` error instead of returning `{}`; fail-closed behavior confirmed locally |
| [#5255](https://github.com/openclaw/openclaw/issues/5255) | HIGH (WONTFIX) | Browser file upload arbitrary read | Closed upstream as NOT_PLANNED (2026-02-17); still affects local code at `src/browser/pw-tools-core.interactions.ts:531` |
| [#5995](https://github.com/openclaw/openclaw/issues/5995) | HIGH (WONTFIX) | Secrets exposed in session transcripts | Closed upstream as NOT_PLANNED (2026-03-01); `config.get` redacted via `redactConfigSnapshot()` (PR #9858); by-design transcript exposure |
| [#6606](https://github.com/openclaw/openclaw/issues/6606) | HIGH (WONTFIX) | Telegram webhook binds to 0.0.0.0 with optional secret | Closed upstream as NOT_PLANNED (2026-02-13); still affects local code at `src/telegram/webhook.ts:84,95,96-101` |
| [#6609](https://github.com/openclaw/openclaw/issues/6609) | ~~HIGH~~ FIXED | Browser bridge server optional authentication | Fixed upstream (COMPLETED 2026-02-14); `src/browser/bridge-server.ts:33-42` |
| [#8054](https://github.com/openclaw/openclaw/issues/8054) | ~~HIGH~~ FIXED | Type coercion `"undefined"` credentials | Fixed upstream (COMPLETED 2026-02-13); `src/wizard/onboarding.gateway-config.ts:206` |
| [#8516](https://github.com/openclaw/openclaw/issues/8516) | HIGH (WONTFIX) | Browser download/trace endpoints arbitrary file write | Closed upstream as NOT_PLANNED (2026-03-01); local code already hardened — `src/browser/routes/agent.act.download.ts:51,103` uses `resolveWritableOutputPathOrRespond()` from `src/browser/routes/output-paths.ts:9` (download routes extracted to dedicated module) |
| [#8586](https://github.com/openclaw/openclaw/issues/8586) | ~~HIGH~~ FIXED | Configurable bypass allows unrestricted command exec | Fixed upstream (COMPLETED 2026-02-14); `src/agents/bash-tools.exec.ts:202-210,272-274` |
| [#8591](https://github.com/openclaw/openclaw/issues/8591) | HIGH (WONTFIX) | Env vars exposed via shell commands | Closed upstream as NOT_PLANNED (2026-02-13); still affects local code at `src/agents/bash-tools.exec.ts:293,301` |
| [#8590](https://github.com/openclaw/openclaw/issues/8590) | ~~HIGH~~ FIXED | Status endpoint exposes sensitive internal info | Fixed upstream (COMPLETED 2026-02-15); `src/gateway/server-methods/health.ts:28-31` |
| [#8696](https://github.com/openclaw/openclaw/issues/8696) | HIGH (WONTFIX) | Playwright download path traversal | Closed upstream as NOT_PLANNED (2026-02-24); `src/browser/pw-tools-core.downloads.ts:26-31` — `sanitizeUntrustedFileName()` (from `safe-filename.js`) + `buildTempDownloadPath()` (hardened Feb 15 sync 2) |
| [#8776](https://github.com/openclaw/openclaw/issues/8776) | ~~HIGH~~ FIXED | soul-evil hook silently hijacks agent | Fixed in PR [#14757](https://github.com/openclaw/openclaw/pull/14757) — soul-evil hook completely removed |
| [#9435](https://github.com/openclaw/openclaw/issues/9435) | ~~HIGH~~ FIXED | Gateway auth token exposed in URL query params | Fixed in PR [#9436](https://github.com/openclaw/openclaw/pull/9436) — query token acceptance removed from `src/gateway/hooks.ts`, dashboard URL no longer passes `?token=` |
| [#9512](https://github.com/openclaw/openclaw/issues/9512) | ~~HIGH~~ FIXED | Skill download archive path traversal | Fixed upstream (COMPLETED 2026-02-14); `src/agents/skills-install.ts:331,342` — now calls `extractArchiveSafe()` |
| [#9517](https://github.com/openclaw/openclaw/issues/9517) | ~~HIGH~~ FIXED | Gateway canvas host auth bypass | Fixed in PR [#9518](https://github.com/openclaw/openclaw/pull/9518) — `authorizeCanvasRequest()` at `src/gateway/server/http-auth.ts:58` |
| [#9627](https://github.com/openclaw/openclaw/issues/9627) | ~~HIGH~~ FIXED | Config secrets exposed in JSON after update/doctor | Fixed upstream (COMPLETED 2026-02-25); `src/config/io.ts` — resolved by `redactConfigSnapshot()` + env var reference preservation; root cause addressed |
| [#9813](https://github.com/openclaw/openclaw/issues/9813) | ~~HIGH~~ FIXED (DUP #9627) | Gateway expands ${ENV_VAR} on meta writeback | Closed upstream as COMPLETED (2026-02-13); `src/config/io.ts:1043` — partially mitigated by `redactConfigSnapshot()` (PR #9858) + env var reference preservation (commit `f59df9589`); root cause still open in #9627 |
| [#11126](https://github.com/openclaw/openclaw/issues/11126) | HIGH (DUP #9627, WONTFIX) | Config write paths resolve ${VAR} to cleartext | Closed upstream as NOT_PLANNED (2026-02-13); same as #9627/#9813 — `src/config/io.ts:1043` |
| [#9795](https://github.com/openclaw/openclaw/issues/9795) | LOW | sanitizeMimeType regex not end-anchored (by design) | `src/media-understanding/apply.ts:90-100` |
| [#9792](https://github.com/openclaw/openclaw/issues/9792) | INVALID (CLOSED) | validateHostEnv skips baseEnv (by design) | Closed upstream as COMPLETED (2026-03-01); `src/agents/bash-tools.exec-runtime.ts:57` + `src/agents/bash-tools.exec.ts:369`; by-design behavior confirmed |
| [#9791](https://github.com/openclaw/openclaw/issues/9791) | INVALID (CLOSED) | Fullwidth marker bypass (fold is length-preserving) | Closed upstream (COMPLETED 2026-02-15); `src/security/external-content.ts:127-167` |
| [#9667](https://github.com/openclaw/openclaw/issues/9667) | INVALID (CLOSED) | JWT verification in nonexistent file | Closed upstream as NOT_PLANNED (2026-03-01); `src/auth/jwt.ts` does not exist |
| [#4940](https://github.com/openclaw/openclaw/issues/4940) | MEDIUM (WONTFIX) | commands.restart bypass via exec tool | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/agents/bash-tools.exec.ts` (no commands.restart check) |
| [#5120](https://github.com/openclaw/openclaw/issues/5120) | ~~MEDIUM~~ FIXED | Webhook token accepted via query parameters | Fixed in PR [#9436](https://github.com/openclaw/openclaw/pull/9436) — query token extraction removed from `src/gateway/hooks.ts`; upstream issue confirmed CLOSED/NOT_PLANNED (2026-02-17) |
| [#5122](https://github.com/openclaw/openclaw/issues/5122) | ~~MEDIUM~~ WONTFIX | readJsonBody() Slowloris DoS (no read timeout) | Closed upstream as NOT_PLANNED (2026-02-17); local mitigation remains: `src/gateway/hooks.ts:178-194` delegates to `readJsonBodyWithLimit()` with 30s timeout (commit `3cbcba10c`) |
| [#5123](https://github.com/openclaw/openclaw/issues/5123) | ~~MEDIUM (WONTFIX)~~ FIXED LOCALLY | ReDoS in session filter regex | Closed upstream NOT_PLANNED (2026-02-17); fixed locally by `a2dfe9879` (Feb 24 sync 7): `matchSessionFilter()` now uses `compileSafeRegex()` at `src/infra/exec-approval-forwarder.ts:62-68` |
| [#5124](https://github.com/openclaw/openclaw/issues/5124) | ~~MEDIUM~~ FIXED | ReDoS in log redaction patterns | Fixed upstream (COMPLETED 2026-02-14); `src/logging/redact.ts:50-60` |
| [#6021](https://github.com/openclaw/openclaw/issues/6021) | MEDIUM (WONTFIX) | Timing attack in non-gateway token comparisons | Closed upstream as NOT_PLANNED (2026-02-13); fully mitigated locally ��� node token uses `verifyPairingToken()` at `src/infra/node-pairing.ts:214` which delegates to `safeEqualSecret()` (constant-time) |
| [#7862](https://github.com/openclaw/openclaw/issues/7862) | ~~MEDIUM~~ FIXED | Session transcripts 644 instead of 600 (fixed upstream and locally) | Fixed upstream COMPLETED (2026-02-16); 0o600 fix applied upstream; `src/auto-reply/reply/session.ts:96`, `src/agents/pi-embedded-runner/session-manager-init.ts`, `src/gateway/server-methods/sessions.ts` |
| [#8027](https://github.com/openclaw/openclaw/issues/8027) | ~~MEDIUM~~ FIXED | web_fetch hidden text prompt injection | Fixed upstream (COMPLETED); `src/agents/tools/web-fetch-utils.ts:59-61` |
| [#8592](https://github.com/openclaw/openclaw/issues/8592) | ~~MEDIUM~~ FIXED | No detection of encoded/obfuscated commands | Fixed upstream (COMPLETED); `src/infra/exec-safety.ts:1-44` |
| [#8588](https://github.com/openclaw/openclaw/issues/8588) | ~~MEDIUM~~ FIXED | Sensitive config files accessible when sandbox is home dir | Fixed upstream (COMPLETED 2026-03-01); `src/agents/sandbox/context.ts:42-49` — workspaceAccess=rw restriction enforced |
| [#8589](https://github.com/openclaw/openclaw/issues/8589) | LOW | Sandbox file read lacks content filtering | `src/agents/pi-tools.read.ts:286-302` (no redaction on read) |
| [#8593](https://github.com/openclaw/openclaw/issues/8593) | ~~MEDIUM~~ FIXED | chat.send handler lacks input length validation | Fixed upstream (COMPLETED 2026-02-15); `src/gateway/protocol/schema/logs-chat.ts:4-11` |
| [#8594](https://github.com/openclaw/openclaw/issues/8594) | MEDIUM (WONTFIX) | No rate limiting on gateway endpoints | Closed upstream as NOT_PLANNED (2026-02-13); still affects local code at `src/gateway/server-constants.ts` (no rate limit controls) |
| [#9007](https://github.com/openclaw/openclaw/issues/9007) | LOW | Google Places URL path interpolation (skill, not core) | `skills/local-places/src/local_places/google_places.py:238` |
| [#9065](https://github.com/openclaw/openclaw/issues/9065) | ~~LOW~~ FIXED | ~/.openclaw group-writable after sudo install | Fixed upstream (COMPLETED 2026-03-01); permissions hardened for sudo install path |
| [#10324](https://github.com/openclaw/openclaw/issues/10324) | MEDIUM (WONTFIX) | Memory index multi-write lacks transactions | Closed upstream as NOT_PLANNED (2026-02-24); still affects local code at `src/memory/manager-embedding-ops.ts:693-805` (DELETEs+INSERTs without BEGIN/COMMIT) |
| [#10326](https://github.com/openclaw/openclaw/issues/10326) | ~~MEDIUM~~ FIXED | Child process stop() lacks SIGKILL escalation | Fixed upstream (COMPLETED 2026-02-14); `src/imessage/client.ts:110-131`, `src/signal/daemon.ts:96-100` |
| [#10330](https://github.com/openclaw/openclaw/issues/10330) | MEDIUM (WONTFIX) | TOCTOU race in device auth token storage | Closed upstream as NOT_PLANNED (2026-02-24); still affects local code at `src/infra/device-auth-store.ts:92-119` (read+write with no lock) |
| [#10331](https://github.com/openclaw/openclaw/issues/10331) | ~~MEDIUM~~ FIXED | Session store stale cache inside write lock | Fixed upstream (COMPLETED 2026-02-14); `src/config/sessions/store.ts:679,645` |
| [#10333](https://github.com/openclaw/openclaw/issues/10333) | ~~MEDIUM~~ FIXED | BlueBubbles filename multipart header injection | Fixed in PR [#11093](https://github.com/openclaw/openclaw/pull/11093) — `sanitizeFilename()` at `extensions/bluebubbles/src/attachments.ts:33` |
| [#10646](https://github.com/openclaw/openclaw/issues/10646) | HIGH (WONTFIX) | Weak UUID: Math.random() fallback + tool call IDs | Closed upstream as NOT_PLANNED (2026-02-24); still affects local code at `ui/src/ui/uuid.ts:23-33` (fallback), `src/auto-reply/reply/get-reply-inline-actions.ts:191` (toolCallId) |
| [#7139](https://github.com/openclaw/openclaw/issues/7139) | ~~MEDIUM~~ FIXED | Default config: sandbox off, plaintext creds | Fixed upstream (COMPLETED); `src/agents/sandbox/config.ts:166` — sandbox default changed |
| [#9875](https://github.com/openclaw/openclaw/issues/9875) | MEDIUM (WONTFIX) | Orphaned tool_use blocks from backgrounded exec | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/agents/session-transcript-repair.ts:342` (reactive repair, not proactive) |
| [#11900](https://github.com/openclaw/openclaw/issues/11900) | MEDIUM | Context files (USER.md, SOUL.md) loaded for all senders | `src/agents/bootstrap-files.ts:64-96` — no `senderIsOwner` check; `attempt.ts:1426` calls unconditionally |
| [#12571](https://github.com/openclaw/openclaw/issues/12571) | MEDIUM (WONTFIX) | Session isolation leak in cron jobs after ~24h | Closed upstream as NOT_PLANNED; still affects local code at `src/cron/service/jobs.ts` — isolated sessions leak to main session after extended runtime |
| [#11832](https://github.com/openclaw/openclaw/issues/11832) | ~~MEDIUM~~ FIXED | Per-agent tools.exec config not applied | Fixed upstream (COMPLETED); `src/auto-reply/reply/get-reply-directives.ts:66-81` |
| [#12541](https://github.com/openclaw/openclaw/issues/12541) | LOW (WONTFIX) | Voice-call webhook spoofing via signature bypass config | Closed upstream as NOT_PLANNED; still affects local code at `extensions/voice-call/src/config.ts` — `skipSignatureVerification` disables HMAC-SHA256; opt-in, not default |
| [#6304](https://github.com/openclaw/openclaw/issues/6304) | ~~LOW~~ FIXED | Matrix plugin transitive dep vuln (request pkg) | Fixed upstream (COMPLETED); `extensions/matrix/package.json` — transitive dep updated |
| [#4807](https://github.com/openclaw/openclaw/issues/4807) | LOW (WONTFIX) | Sandbox setup script missing from npm package | Closed upstream as NOT_PLANNED (2026-02-17); `package.json` files array excludes `scripts/`; `scripts/sandbox-common-setup.sh` not shipped |
| [#3359](https://github.com/openclaw/openclaw/issues/3359) | ~~MEDIUM~~ FIXED | npm audit vulns in tar/hono | Fixed upstream (COMPLETED 2026-03-01); `package.json` pnpm.overrides: tar@7.5.7, hono@4.11.8 (above vuln thresholds); upstream closed as fully resolved |
| [#3086](https://github.com/openclaw/openclaw/issues/3086) | ~~LOW~~ FIXED | Windows ACL false flag as mode=666 | `src/security/audit-fs.ts:86-116` + `src/security/windows-acl.ts` — icacls-based ACL checks implemented |
| [#10521](https://github.com/openclaw/openclaw/issues/10521) | INVALID (CLOSED) | Security audit flags claude-opus-4-6 as below 4.5 | Closed upstream (COMPLETED); `src/security/audit-extra.sync.ts:177` (`isClaude45OrHigher` regex) correctly matches `claude-opus-4-6` in current code |
| [#10033](https://github.com/openclaw/openclaw/issues/10033) | ENHANCEMENT (WONTFIX) | Feature: secrets management integration | Closed upstream as NOT_PLANNED (2026-02-13); current state: plaintext creds with 0o600 perms |
| [#10927](https://github.com/openclaw/openclaw/issues/10927) | ENHANCEMENT (CLOSED) | Random IDs for external content wrapper tags | Closed upstream (COMPLETED); `src/security/external-content.ts:47-48` — static tags; `replaceMarkers()` at `:127-167` already sanitizes injected markers |
| [#10890](https://github.com/openclaw/openclaw/issues/10890) | ENHANCEMENT (CLOSED) | RFC: Skill Security Framework (manifests, signing, sandboxing) | Closed upstream (COMPLETED); comprehensive proposal for phased skill security; relates to #9512 |
| [#11437](https://github.com/openclaw/openclaw/issues/11437) | CRITICAL (WONTFIX) | CWD .env → config path override → plugin code exec via jiti | Closed upstream as NOT_PLANNED (2026-02-24); still affects local code at `src/infra/dotenv.ts:10`, `src/config/paths.ts:91-109`, `src/plugins/config-state.ts:98,216` |
| [#11434](https://github.com/openclaw/openclaw/issues/11434) | CRITICAL (WONTFIX) | CWD .env → arbitrary dynamic import via OPENCLAW_BROWSER_CONTROL_MODULE | Closed upstream as NOT_PLANNED (2026-02-24); still affects local code at `src/gateway/server-browser.ts:13-14` — raw `await import(override)` |
| [#11431](https://github.com/openclaw/openclaw/issues/11431) | ~~CRITICAL~~ FIXED | Hook/plugin npm install runs lifecycle scripts (no --ignore-scripts) | Fixed in PRs: `92702af7a` (plugins+hooks, Feb 12 sync 1) + [#14659](https://github.com/openclaw/openclaw/pull/14659) (skills, Feb 13 sync 1) — `--ignore-scripts` added to all install commands |
| [#11023](https://github.com/openclaw/openclaw/issues/11023) | HIGH (WONTFIX) | Sandbox browser bridge started without auth token | Closed upstream as NOT_PLANNED (2026-02-13); `startBrowserBridgeServer` called at `src/agents/sandbox/browser.ts:355-366` WITH `authToken` and `authPassword` (line ref updated Mar 1 sync 1; auth IS present); relates to #6609 |
| [#11945](https://github.com/openclaw/openclaw/issues/11945) | HIGH (WONTFIX) | config.patch bypasses commands.restart restriction | Closed upstream as NOT_PLANNED (2026-02-13); still affects local code at `src/gateway/server-methods/config.ts:424` |
| [#13683](https://github.com/openclaw/openclaw/issues/13683) | ~~HIGH~~ FIXED | CLI `config get` returns unredacted secrets to sandboxed agents | Fixed upstream (COMPLETED 2026-02-14); `src/cli/config-cli.ts:279-284` |
| [#13786](https://github.com/openclaw/openclaw/issues/13786) | ~~HIGH~~ FIXED | BlueBubbles webhook auth bypass via loopback proxy trust | Fixed in PR [#13787](https://github.com/openclaw/openclaw/pull/13787) — loopback bypass removed; all requests require password auth |
| [#13718](https://github.com/openclaw/openclaw/issues/13718) | ~~HIGH~~ FIXED | Unauthenticated Nostr profile API allows remote config tampering | Fixed in PR [#13719](https://github.com/openclaw/openclaw/pull/13719) — gateway-auth required for `/api/channels/` plugin routes (`server-http.ts:518-533`) |
| [#13937](https://github.com/openclaw/openclaw/issues/13937) | ~~MEDIUM~~ FIXED | HTML not escaped in Control UI webchat (XSS) | Closed as COMPLETED 2026-02-11; `ui/` webchat HTML escaping fix applied upstream |
| [#14137](https://github.com/openclaw/openclaw/issues/14137) | ~~HIGH~~ FIXED | Gateway auth has no rate limiting (CWE-307) | Fixed upstream (COMPLETED); `src/gateway/auth.ts` — rate limiting added |
| [#13274](https://github.com/openclaw/openclaw/issues/13274) | ~~HIGH~~ FIXED | SSRF guard bypassed by IPv4-compatible IPv6 addresses | Fixed by `c0c0e0f9a` — `isPrivateIpAddress()` (`src/infra/net/ssrf.ts:108`) now handles full-form IPv4-mapped IPv6 via `extractEmbeddedIpv4FromIpv6()` at `src/shared/net/ip.ts:279` |
| [#11738](https://github.com/openclaw/openclaw/issues/11738) | ~~HIGH~~ FIXED | Canvas authorization IP co-tenancy bypass | Fixed upstream (COMPLETED 2026-02-24); `src/gateway/server-http.ts:685-716` — canvas auth no longer relies on IP co-tenancy |
| [#11793](https://github.com/openclaw/openclaw/issues/11793) | HIGH (WONTFIX) | HTTP API session keys lack ownership validation | Closed upstream as NOT_PLANNED; still affects local code at `src/gateway/http-utils.ts:71-73` — `x-openclaw-session-key` header accepted as-is with no ownership check |
| [#11024](https://github.com/openclaw/openclaw/issues/11024) | ~~HIGH~~ FIXED | Gmail push endpoint embeds auth token in URL query string | Fixed upstream (COMPLETED 2026-02-14); `src/hooks/gmail-setup-utils.ts:315` |
| [#11811](https://github.com/openclaw/openclaw/issues/11811) | ~~HIGH~~ FIXED | MSTeams attachment fetch follows redirects before allowlist checks (SSRF) | Fixed upstream (COMPLETED); `extensions/msteams/src/attachments/download.ts:93` |
| [#15906](https://github.com/openclaw/openclaw/issues/15906) | HIGH (WONTFIX) | RCE via rogue gateway impersonation (mDNS discovery spoofing) | Closed upstream as NOT_PLANNED (2026-02-26); still affects local code at `apps/android/.../GatewayDiscovery.kt:148-162` (TLS fingerprint stored but not enforced); `apps/macos/.../ShellExecutor.swift:14-32`; partial mitigation via device pairing nonce/challenge |
| [#15950](https://github.com/openclaw/openclaw/issues/15950) | ~~HIGH~~ FIXED | Android production build permits cleartext traffic globally | Fixed upstream (COMPLETED); `apps/android/.../network_security_config.xml:4` |
| [#14875](https://github.com/openclaw/openclaw/issues/14875) | ~~HIGH~~ FIXED | Feishu channel hardcodes CommandAuthorized bypassing access groups | Fixed upstream (COMPLETED 2026-02-13); `extensions/feishu/src/bot.ts:1331` |
| [#14117](https://github.com/openclaw/openclaw/issues/14117) | ~~MEDIUM~~ FIXED | Session isolation & message attribution failure | Fixed upstream (COMPLETED 2026-02-14); cross-session message leakage; relates to #12571 |
| [#14808](https://github.com/openclaw/openclaw/issues/14808) | ~~MEDIUM~~ FIXED LOCALLY (WONTFIX upstream) | apiKey resolved to plaintext in models.json cache | Closed upstream as NOT_PLANNED (2026-02-13); fixed locally by `17ab46aed` (Mar 8 sync 3) — `normalizeProviders()` now reverse-looks up env var names at `src/agents/models-config.providers.ts:275`, replacing resolved plaintext apiKeys before writing models.json; relates to #9627/#13683 |
| [#11202](https://github.com/openclaw/openclaw/issues/11202) | MEDIUM | Model catalog apiKeys injected into LLM prompt context every turn | `src/agents/models-config.ts` — `normalizeProviders()` includes resolved `apiKey` in model catalog serialized to LLM; all provider keys sent to active provider |
| [#16059](https://github.com/openclaw/openclaw/issues/16059) | ~~MEDIUM~~ FIXED | Extension relay /extension WebSocket unauthenticated | Fixed upstream (sync 15); `src/browser/extension-relay.ts:709-714` — `/extension` path now requires `relayAuthToken` (same as `/cdp`) |
| [#10992](https://github.com/openclaw/openclaw/issues/10992) | ~~MEDIUM~~ FIXED | Sub-agents bypass exec approvals for safeBins commands | Fixed upstream (COMPLETED); `src/agents/bash-tools.exec.ts:137,265-277,333` |
| [#15990](https://github.com/openclaw/openclaw/issues/15990) | ~~MEDIUM~~ FIXED | Context compaction leaks content between sessions | Fixed upstream (COMPLETED); `src/agents/pi-embedded-runner/compact.ts` — cross-session data bleed fixed; relates to #12571/#14117 |
| [#12542](https://github.com/openclaw/openclaw/issues/12542) | ~~MEDIUM~~ FIXED | Diagnostics-OTEL exports unredacted session/chat IDs | Fixed upstream (COMPLETED); `extensions/diagnostics-otel/src/service.ts:391,427-494` |
| [#21656](https://github.com/openclaw/openclaw/issues/21656) | MEDIUM | System event format spoofing via external channels (prompt injection) | `src/auto-reply/reply/session-updates.ts:110-111` — `System: [timestamp]` prefix unauthenticated; external Telegram/WhatsApp messages indistinguishable from real system events |
| [#22681](https://github.com/openclaw/openclaw/issues/22681) | MEDIUM | Env blocklist missing GLIBC_TUNABLES, JAVA_TOOL_OPTIONS, JDK_JAVA_OPTIONS | `src/infra/host-env-security-policy.json` — 16 blockedKeys + 3 blockedPrefixes; missing JVM/glibc env injection vectors |
| [#24693](https://github.com/openclaw/openclaw/issues/24693) | MEDIUM | Hook completion events leak cross-agent via mainSessionKey routing | `src/gateway/server/hooks.ts:77-78,86-87` — completion events routed to `mainSessionKey` instead of hook's target `agentId` (available at line 39 but unused) |
| [#25712](https://github.com/openclaw/openclaw/issues/25712) | ~~MEDIUM~~ FIXED | Multi-agent media isolation: inbound files shared across agents | Fixed upstream (COMPLETED 2026-03-03); inbound media TTL cleanup added (commit `ba9eaf2ee`); `src/media/store.ts:13` still uses global `resolveMediaDir()` but TTL limits cross-agent contamination window |
| [#25714](https://github.com/openclaw/openclaw/issues/25714) | MEDIUM | Webchat UI cross-session tool data flash (UI state race) | `ui/src/ui/app-tool-stream.ts` — prior session's tool stream buffers not cleared before new session renders; causes brief cross-session data flash in webchat |
| [#12173](https://github.com/openclaw/openclaw/issues/12173) | ~~MEDIUM~~ FIXED | apply_patch tool path traversal when sandbox disabled | Fixed by `5544646a0` — `resolvePatchPath()` now calls `assertSandboxPath()` at `src/agents/apply-patch.ts:297,314` regardless of sandbox mode; further hardened by `5e7c3250c` adding `workspaceOnly` guards |
| [#10659](https://github.com/openclaw/openclaw/issues/10659) | ENHANCEMENT | Feature: Masked secrets to prevent agent reading raw API keys | Enhancement request; relates to #10033 (secrets management) |
| [#38604](https://github.com/openclaw/openclaw/issues/38604) | MEDIUM | Sandbox containers have no default pidsLimit — fork bomb risk | `src/agents/sandbox/config.ts:108` — `pidsLimit: agentDocker?.pidsLimit ?? globalDocker?.pidsLimit` has no fallback default; `src/agents/sandbox/docker.ts:398-399` only adds `--pids-limit` when explicitly set |
| [#29829](https://github.com/openclaw/openclaw/issues/29829) | ~~MEDIUM~~ FIXED | EXEC_SECRET_REF_ID_PATTERN allows path traversal sequences | Fixed by `d30dc28b8` — `validateExecSecretRefId()` now splits by `/` and rejects `.` and `..` segments (`src/secrets/ref-contract.ts:86-95`); pattern definition at `src/secrets/ref-contract.ts:9` |
| [#9325](https://github.com/openclaw/openclaw/issues/9325) | N/A (CLOSED) | Skill removal without notification | Closed upstream as NOT_PLANNED (2026-03-01); ClawHub platform moderation issue |
| [#11879](https://github.com/openclaw/openclaw/issues/11879) | N/A (CLOSED) | Malicious ClawHub skill exfiltrating to Feishu | Closed upstream as NOT_PLANNED (2026-03-07); ecosystem/marketplace issue; 13,981 installs |

## AI Agent Reliability & Safety Issues

> **Scope:** Issues where the AI agent fails to follow instructions, misuses tools, loses context, or acts autonomously against user intent. These complement security vulnerabilities above -- security issues stay in the security table; this table tracks **behavioral reliability** risks.
>
> **Cross-references:** Issues appearing in both tables are linked. The security table tracks the vulnerability; this table tracks the agent behavior failure mode.
>
> **Why this matters:** Real-world incidents (e.g., AI agent deleting user's inbox despite "confirm before acting" instruction) show that instruction adherence, context preservation, and tool-call safety are security-critical properties. Context compaction can silently remove safety instructions. Runaway loops can burn tokens or take destructive actions. Tool calls can execute before safety checks complete.

| Issue | Severity | Category | Summary | Local Impact |
|-------|----------|----------|---------|--------------|
| [#7903](https://github.com/openclaw/openclaw/issues/7903) | CRITICAL | AUTONOMY_CONTROL | Self-talk detection runs AFTER tool execution, not before | `src/auto-reply/` — no pre-execution self-talk check; safety validation occurs post-action |
| [#24884](https://github.com/openclaw/openclaw/issues/24884) | ~~HIGH~~ WONTFIX | CONTEXT_MGMT | Orphaned tool_use IDs after context compaction break all providers | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/agents/session-transcript-repair.ts` — `repairToolUseResultPairing()` insufficient for compaction scenarios; cross-ref #9875 |
| [#24852](https://github.com/openclaw/openclaw/issues/24852) | ~~HIGH~~ FIXED | PERSONA_DRIFT | Subagent sessions don't load SOUL.md/workspace files | Fixed upstream (COMPLETED 2026-02-24); `src/agents/bootstrap-files.ts:98` — subagent bootstrap now received via `resolveBootstrapContextForRun()`; cross-ref #11900 |
| [#21597](https://github.com/openclaw/openclaw/issues/21597) | HIGH | AUTONOMY_CONTROL | Heartbeat unbounded tool-call loops burn tokens | `src/agents/pi-embedded-runner/run.ts:739` — compaction cycle guard (`MAX_OVERFLOW_COMPACTION_ATTEMPTS = 3`) exists but no tool-call loop guard for heartbeat path |
| [#21621](https://github.com/openclaw/openclaw/issues/21621) | HIGH | CONTEXT_MGMT | Browser tool triggers compaction deadlock | `src/agents/pi-embedded-runner/compact.ts` — browser tool output can trigger compaction which deadlocks on tool completion |
| [#10649](https://github.com/openclaw/openclaw/issues/10649) | HIGH | CONTEXT_MGMT | Unexplained data appears after context compaction | `src/agents/pi-embedded-runner/compact.ts` — data integrity not fully verified post-compaction |
| [#18223](https://github.com/openclaw/openclaw/issues/18223) | HIGH | CONTEXT_MGMT | Compaction SIGKILLs in-flight exec tool processes | `src/agents/pi-embedded-runner/compact.ts` — compaction can terminate running tool processes mid-execution |
| [#6870](https://github.com/openclaw/openclaw/issues/6870) | HIGH | PERSONA_DRIFT | SOUL.md not passed to custom/non-default providers | `src/agents/bootstrap-files.ts` — bootstrap context only sent to default provider path |
| [#2597](https://github.com/openclaw/openclaw/issues/2597) | MEDIUM | CONTEXT_MGMT | Context/state lost after compaction (general) | `src/agents/pi-embedded-runner/compact.ts` — general compaction data loss reports |
| [#15171](https://github.com/openclaw/openclaw/issues/15171) | MEDIUM | CONTEXT_MGMT | Compaction drops tail-end messages silently | `src/agents/pi-embedded-runner/compact.ts` — messages near end of context window lost during compaction |
| [#24800](https://github.com/openclaw/openclaw/issues/24800) | MEDIUM | CONTEXT_MGMT | Auto-compaction not triggered during tool loops | `src/agents/pi-embedded-runner/run.ts` — tool-call loops can exhaust context without triggering compaction |
| [#19758](https://github.com/openclaw/openclaw/issues/19758) | MEDIUM | TOOL_CALL | Session corruption after context pruning | `src/agents/session-transcript-repair.ts` — pruning can corrupt tool_use/tool_result pairing |
| [#24509](https://github.com/openclaw/openclaw/issues/24509) | ~~MEDIUM~~ WONTFIX | TOOL_CALL | "No tool call found" regression after compaction | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/agents/pi-embedded-runner/compact.ts` — compacted transcript loses tool_use_id mapping |
| [#20484](https://github.com/openclaw/openclaw/issues/20484) | ~~MEDIUM~~ FIXED | CONTEXT_MGMT | Post-compaction audit triggers injection detection false positive | Fixed upstream (COMPLETED 2026-02-28); `src/security/audit.ts` — compaction audit warning format updated; cross-ref #21656 |
| [#21084](https://github.com/openclaw/openclaw/issues/21084) | MEDIUM | HALLUCINATION | Session JSONL not persisted on crash (data loss) | `src/auto-reply/reply/session.ts` — crash during write loses session transcript; no fsync/WAL |
| [#25795](https://github.com/openclaw/openclaw/issues/25795) | ~~MEDIUM~~ WONTFIX | CONTEXT_MGMT | Suspicious 'System: Post-Compaction Audit' injected into conversation — potential prompt injection surface | Closed upstream as NOT_PLANNED (2026-03-01); still affects local code at `src/agents/pi-extensions/compaction-safeguard.ts` — post-compaction audit injects System: prefixed message; same format as #21656 spoofing surface |
| [#25647](https://github.com/openclaw/openclaw/issues/25647) | ~~MEDIUM~~ FIXED | TOOL_CALL | transcript-sanitize pi-extension never loaded — orphaned tool_result possible via extension path | Fixed upstream (COMPLETED 2026-03-01); `src/agents/pi-embedded-runner/extensions.ts` — extension loading path repaired |
| [#25392](https://github.com/openclaw/openclaw/issues/25392) | ~~MEDIUM~~ FIXED | CONTEXT_MGMT | Default AGENTS.md template headings mismatch compaction code — critical context lost after every compaction | Fixed upstream (96021a2b1 Mar 5 sync 2); `src/agents/pi-extensions/compaction-safeguard.ts:679` now falls back to legacy section names (`"Every Session"`, `"Safety"`) so extraction succeeds regardless of AGENTS.md template version |
| [#29363](https://github.com/openclaw/openclaw/issues/29363) | MEDIUM | PERSONA_DRIFT | Subagent sessions inject ALL workspace files instead of AGENTS.md + TOOLS.md only | `src/agents/bootstrap-files.ts:52-55` — `applyContextModeFilter()` only restricts when `contextMode==="lightweight"` (not set for subagents); `src/agents/pi-embedded-runner/run/attempt.ts:1432` — `bootstrapContextMode` not set for subagent sessions; SOUL.md, IDENTITY.md, USER.md all injected |
| [#41100](https://github.com/openclaw/openclaw/issues/41100) | LOW | CONTEXT_MGMT | Compaction safeguard fails silently — returns `cancel: true` without `reason` field | `src/agents/pi-extensions/compaction-safeguard.ts` — hook cancels compaction without reason; user sees "Compaction cancelled" with no actionable explanation |

### Category Tags

- **CONTEXT_MGMT** -- Context loss, compaction removing instructions, cross-session leakage, stale state
- **AUTONOMY_CONTROL** -- Agent cannot be stopped, enters runaway loops, unbounded tool-call chains
- **TOOL_CALL** -- Tool calls executed incorrectly, unauthorized, before safety checks, or with unintended side effects
- **HALLUCINATION** -- Agent fabricates information, outputs incorrect data, creates fake user messages
- **PERSONA_DRIFT** -- Agent ignores persona/SOUL.md files, identity corruption after compaction, bootstrap not loaded
- **INSTRUCTION_ADHERENCE** -- Agent ignores explicit user instructions (e.g., "confirm before acting")
- **APPROVAL_WORKFLOW** -- Approval gates bypassed, delayed, or non-functional

### #10646: Weak UUID / Math.random() in Tool Call IDs

**Vulnerability:** Two distinct Math.random() usages in security-relevant contexts.

1. **UI UUID fallback** (`ui/src/ui/uuid.ts:23-33`): `weakRandomBytes()` uses `Math.floor(Math.random() * 256)` when Web Crypto API is unavailable. Low practical risk since modern environments always have crypto.

2. **Tool call IDs** (`src/auto-reply/reply/get-reply-inline-actions.ts:191`): `cmd_${Date.now()}_${Math.random().toString(16).slice(2)}` — always uses Math.random(), no crypto path. Used for tool call/result correlation in session transcripts.

**Secondary:** Tmp file suffixes in `src/cron/store.ts:91`, `src/cron/run-log.ts:130-131`, `src/browser/trash.ts:16`, `src/tts/tts.ts:387` (low risk, collision-resistant via PID/timestamp).

**Confirmed safe:** 52 files use `crypto.randomUUID`/`randomBytes` for proper crypto paths.

### #7139: Default Config — Sandbox Disabled, Plaintext Credentials

**Sandbox defaults to "off"** at `src/agents/sandbox/config.ts:166`:

```
mode: agentSandbox?.mode ?? agent?.mode ?? "off"
```

A Docker sandbox implementation exists with proper isolation (`--network none`, `--cap-drop ALL`, `--read-only`) but is opt-in only. Gateway bind defaults to "loopback" (safe). Credentials are plaintext with 0o600 permissions, flagged by `collectSecretsInConfigFindings()`. File permission hardening is extensive (80+ locations use 0o600/0o700).

### #3277: Path Validation Bypasses

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-15

**Severity:** ~~HIGH~~ FIXED

**Vulnerability:** `startsWith(params.destDir)` is bypassable when paths share prefixes (e.g., `/tmp/foo` vs `/tmp/foobar`). Tar extraction has zero path validation.

**Affected code:**
- `src/infra/archive-path.ts:12` - `validateArchiveEntryPath()` validates all entry paths (hardened Feb 15, consolidated to module Feb 19 sync 2)
- `src/infra/archive-path.ts:50` - `resolveArchiveOutputPath()` ensures output stays within dest dir
- `src/infra/archive.ts:231-269,330-340` - ZIP/TAR extraction with `validateArchiveEntryPath()` filter + symlink rejection

### #5052: Config Validation Silently Drops Security Settings

**Vulnerability:** When config validation fails, the entire config including `dmPolicy`, `allowFrom`, and all security settings are silently reset to `{}`. The bot will respond to ANY sender.

**Affected code:** `src/config/io.ts:719-720`

**Detection aid (sync 10):** The forensic config write audit (`748d6821d`) flags writes where `hasMetaBefore` is false or `gatewayModeAfter` is null when it was previously set — both indicators that config was silently replaced with `{}`. The `suspicious` field in `$STATE_DIR/logs/config-audit.jsonl` will contain `"missing-meta-before-write"` or `"gateway-mode-removed"` when this fail-open triggers during a subsequent write.

### #5255: Browser File Upload Arbitrary Read

**Vulnerability:** The `setInputFilesViaPlaywright` function accepts user-controlled file paths and passes them directly to Playwright without validation. Attackers with browser control access can read arbitrary files readable by the OpenClaw process.

**Affected code:** `src/browser/pw-tools-core.interactions.ts:531` - `opts.paths` passed directly to `setInputFiles()` without path validation.

### #5995: Secrets in Session Transcripts

**Vulnerability:** When agents call `gateway config.get` or shell commands like `env`, resolved secret values are persisted to session transcript `.jsonl` files. Even users following best practices (env vars, 1Password) have secrets logged.

**Note:** `logging.redactSensitive` only affects console output, not transcripts.

### #8027: web_fetch Hidden Text Prompt Injection

**Vulnerability:** HTML elements with `style="display:none"` or `visibility:hidden` pass through to agent context. Malicious web pages can inject hidden instructions.

**Affected code:** `src/agents/tools/web-fetch-utils.ts:59-61` strips `<script>/<style>/<noscript>` but not CSS-hidden elements.

### #8054: Type Coercion "undefined" Credentials

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-13

**Severity:** ~~HIGH~~ FIXED

**Vulnerability:** `String(undefined).trim()` produces the literal string `"undefined"`, not an empty string. Attackers may authenticate with password/token `"undefined"`.

**Affected code:** `src/wizard/onboarding.gateway-config.ts:206` and similar patterns across CLI files.

### #8512: Plugin HTTP Routes Bypass Gateway Authentication (CRITICAL)

**Severity:** CRITICAL (CVSS 10.0)
**CWE:** CWE-862 (Missing Authorization)

**Vulnerability:** Gateway plugin HTTP routes are dispatched without any gateway authentication checks. `createGatewayPluginRequestHandler()` accepts only `registry` and `log` parameters — no authentication context, token validator, or security gate is passed. Any network client can reach plugin HTTP endpoints even when the gateway token/password is configured.

**Affected code:**
- `src/gateway/server/plugins-http.ts:47-96` - `createGatewayPluginRequestHandler` with `route.handler(req, res)` dispatch at `:64` (auth enforcement is external, in `server-http.ts:518-533`)

**Verification:**
- No imports for `authorizeGatewayConnect` or `resolvedAuth` validation in the file
- Other endpoints (OpenAI, tools-invoke, open-responses) DO call `authorizeGatewayConnect`
- Plugin HTTP dispatch at `server-http.ts:534` (now gateway-auth protected for `/api/channels/` routes at `:518-533`, PR #13719)

### #6609: Browser Bridge Server Optional Authentication

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~HIGH~~ FIXED (was CVSS 7.7)
**CWE:** CWE-306 (Missing Authentication for Critical Function)

**Vulnerability:** Browser bridge server's authentication token is optional. When started without `authToken`, all browser automation endpoints are exposed without authentication.

**Affected code:**
- `src/browser/bridge-server.ts:24` - `authToken?: string` (optional parameter)
- `src/browser/bridge-server.ts:32-51` - Auth now required; loopback check + express setup with abort handling

**Verification:**
- `startBrowserBridgeServer` called at `src/agents/sandbox/browser.ts:355-366` WITH `authToken` and `authPassword` parameters
- Bridge auth registry at `src/browser/bridge-auth-registry.ts` manages ephemeral port auth

### #8696: Playwright Download Path Traversal

**Severity:** HIGH (CVSS 8.8)
**CWE:** CWE-22 (Path Traversal)

**Vulnerability:** Playwright download helpers use the server's suggested filename without sanitization, allowing path traversal writes outside `/tmp/openclaw/downloads`. A malicious `Content-Disposition` header like `filename=../../../../../etc/passwd` can write files to arbitrary locations.

**Affected code:**
- `src/browser/pw-tools-core.downloads.ts:26` - `sanitizeUntrustedFileName()` (from `safe-filename.js`) applies `path.posix.basename()` + `path.win32.basename()` + control char stripping (hardened Feb 15 sync 2; function renamed from `sanitizeDownloadFileName` in Mar 2 sync 7)
- `src/browser/pw-tools-core.downloads.ts:28-31` - `buildTempDownloadPath()` calls `sanitizeUntrustedFileName()`
- `src/browser/pw-tools-core.downloads.ts:90` - `suggestedFilename()` now sanitized before use

**Verification (post-hardening):**
- `sanitizeUntrustedFileName()` applies dual `path.basename()` (posix + win32) and strips control chars
- Traversal via `../` in filenames is now blocked

### #9512: Skill Download Archive Path Traversal

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~HIGH~~ FIXED (was CVSS 7.6)
**CWE:** CWE-22 (Path Traversal)

**Vulnerability:** `skills.install` with download installer extracts archives via system `tar`/`unzip` without validating entry paths. Malicious archives with `../` sequences can write files outside the target directory (Zip Slip attack).

**Affected code:**
- `src/agents/skills-install.ts:316-342` - `extractArchive()` function now calls `extractArchiveSafe()` from `src/infra/archive.ts`
- `src/agents/skills-install.ts:331` - zip: now calls `extractArchiveSafe()` with `validateArchiveEntryPath()` validation
- `src/agents/skills-install.ts:342` - tar: now calls `extractArchiveSafe()` with `validateArchiveEntryPath()` + symlink rejection

**Verification (post-fix):**
- All archive extraction now uses `validateArchiveEntryPath()` + `resolveCheckedOutPath()` from `src/infra/archive.ts`
- Zip Slip attacks blocked by path normalization + prefix checking with trailing separator

### #9517: Gateway Canvas Host Auth Bypass

**Severity:** HIGH (CVSS 7.5)
**CWE:** CWE-862 (Missing Authorization)

**Vulnerability:** Gateway HTTP server serves Canvas host and A2UI endpoints without enforcing gateway auth, allowing unauthenticated access to canvas files.

**Affected code:**
- `src/gateway/server-http.ts:685-716` - Canvas/A2UI handler dispatch (now auth-wrapped via `authorizeCanvasRequest()` at `src/gateway/server/http-auth.ts:58`, PR #9518)
- `src/gateway/server-http.ts:800-841` - WebSocket upgrade for canvas (`attachGatewayUpgradeHandler`; canvas WS auth-wrapped via `authorizeCanvasRequest()` at `server-http.ts:815`, PR #9518)

**Verification:**
- No `authorizeGatewayConnect` call before `canvasHost.handleHttpRequest(req, res)`
- Other endpoints in the same file DO call authorization methods

### #5120: Webhook Token Accepted via Query Parameters

**Status: FIXED** in PR [#9436](https://github.com/openclaw/openclaw/pull/9436)

**Severity:** ~~MEDIUM~~ FIXED
**CWE:** CWE-598 (Sensitive Query Strings)

**Vulnerability:** Webhook endpoint accepted authentication tokens via URL query parameters, causing credential leakage through logs, browser history, and Referer headers.

**Fix:** Query token extraction removed entirely from `src/gateway/hooks.ts`. `extractHookToken()` now only accepts `Authorization: Bearer` header and `X-OpenClaw-Token` header. Server returns HTTP 400 when `?token=` is present (`src/gateway/server-http.ts:383-387`).

### #4949: Browser Control Server DNS Rebinding

**Severity:** HIGH
**CWE:** CWE-350 (Reliance on Reverse DNS Resolution)

**Vulnerability:** Browser control server binds to `127.0.0.1` but performs no Host header validation. DNS rebinding attacks can bypass localhost restriction to reach browser automation endpoints from a remote origin.

**Affected code:**
- `src/browser/server.ts:65` - binds to `"127.0.0.1"` (middleware extracted to `src/browser/server-middleware.ts:24-35`)
- `src/browser/server.ts:20-86` - auth now required via `isAuthorizedBrowserRequest()` (commit `9230a2ae1`, refactored in `28014de97`), but still no Host header or origin validation

**Partial mitigation (Feb 13 sync 5):** Commit `9230a2ae1` adds bearer token / password auth middleware to all browser control HTTP routes. DNS rebinding still possible but requests now need valid authentication credentials, significantly raising the bar. New `browser.control_no_auth` audit check flags when no auth is configured.

### #4950: Arbitrary JS Execution via Browser Evaluate (Default On)

**Severity:** HIGH
**CWE:** CWE-94 (Improper Control of Code Generation)

**Vulnerability:** Browser evaluate tool is enabled by default (`DEFAULT_BROWSER_EVALUATE_ENABLED = true`), allowing execution of arbitrary JavaScript in the browser context without sandboxing.

**Affected code:**
- `src/browser/constants.ts:2` - `DEFAULT_BROWSER_EVALUATE_ENABLED = true`
- `src/browser/pw-tools-core.interactions.ts:219-268` - `evaluateViaPlaywright()` passes JS directly to `page.evaluate()` without sandbox

**Note:** Config flag exists (commit `78f0bc3`) but defaults to enabled. Users must explicitly opt out.

### #4995: iMessage dmPolicy Auto-Responds with Pairing Codes

**Severity:** HIGH
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** Default `dmPolicy` is `"pairing"`, which automatically responds to unknown contacts with valid pairing codes. Any sender can receive a pairing code without owner verification.

**Affected code:**
- `src/imessage/monitor/monitor-provider.ts:120` - default `dmPolicy` is `"pairing"`
- `src/imessage/monitor/monitor-provider.ts:247-278` - auto-responds (pairing decision logic extracted to `inbound-processing.ts:81,201`) with pairing code to unknown contacts

### #5122: readJsonBody() Slowloris DoS (No Read Timeout)

**Severity:** MEDIUM
**CWE:** CWE-400 (Uncontrolled Resource Consumption)

**Vulnerability:** `readJsonBody()` has a body size limit but no read timeout. An attacker can hold connections open indefinitely by sending data one byte at a time (Slowloris attack).

**Affected code:** `src/gateway/hooks.ts:178-194` - size limit present, timeout absent.

### #5123: ReDoS in Session Filter Regex

**Status: FIXED LOCALLY** — `a2dfe9879` (Feb 24 sync 7) changes `matchSessionFilter()` to use `compileSafeRegex()` from new `src/security/safe-regex.ts`, preventing nested quantifier patterns from causing catastrophic backtracking. Upstream closed NOT_PLANNED (2026-02-17).

**Severity:** ~~MEDIUM~~ FIXED LOCALLY
**CWE:** CWE-1333 (Inefficient Regular Expression Complexity)

**Vulnerability:** User-supplied strings were compiled into regexes via `new RegExp()` without safeguards. Malicious patterns could cause catastrophic backtracking.

**Affected code (historical — now mitigated):**
- `src/infra/exec-approval-forwarder.ts:58-66` - `matchSessionFilter()` now uses `compileSafeRegex()` (was `new RegExp()`, fixed Feb 24 sync 7)
- `src/discord/monitor/exec-approvals.ts:395` - now uses `buildGatewayConnectionDetails()` (refactored Feb 15 sync 2, shifted by Discord CV2 rewrite Feb 16 sync 2)

### #5124: ReDoS in Log Redaction Patterns

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~MEDIUM~~ FIXED
**CWE:** CWE-1333 (Inefficient Regular Expression Complexity)

**Vulnerability:** Log redaction `parsePattern()` compiles arbitrary regex patterns that could cause catastrophic backtracking on large log entries.

**Affected code:** `src/logging/redact.ts:50-60` - `parsePattern()` compiles arbitrary regex for log processing.

### #6021: Timing Attack in Non-Gateway Token Comparisons

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13. Partially mitigated locally.

**Severity:** MEDIUM (WONTFIX)
**CWE:** CWE-208 (Observable Timing Discrepancy)

**Vulnerability:** Gateway auth correctly uses `safeEqual` (timing-safe), but hook tokens, node pairing, and device pairing use direct `===`/`!==` comparisons vulnerable to timing attacks.

**Affected code:**
- `src/security/secret-equal.ts:3-16` - `safeEqualSecret` uses `timingSafeEqual` (correct)
- `src/gateway/server-http.ts:402` - hook token now uses `safeEqualSecret()` (fixed in Feb 13 sync 4, commit `113ebfd6a`)
- `src/infra/node-pairing.ts:214` - node token uses `verifyPairingToken()` which calls `safeEqualSecret()` (constant-time, mitigated)
- `src/infra/device-pairing.ts:485` - device token verification uses `verifyPairingToken()` (wraps `safeEqualSecret()`, fixed in Feb 13 sync 4, commit `113ebfd6a`)

### #6606: Telegram Webhook Binds to 0.0.0.0 with Optional Secret

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13. Vulnerability still present in local code.

**Severity:** HIGH (WONTFIX)
**CWE:** CWE-668 (Exposure of Resource to Wrong Sphere)

**Vulnerability:** Telegram webhook server defaults to binding on `0.0.0.0` (all interfaces), and the webhook secret token is optional. Without a secret, any network client can send fake webhook events.

**Affected code:**
- `src/telegram/webhook.ts:95` - defaults to `127.0.0.1` binding (hardened from `0.0.0.0`)
- `src/telegram/webhook.ts:84` - `webhookSecret` is optional in type signature
- `src/telegram/webhook.ts:96-101` - secret now **mandatory** at runtime (throws if missing/empty, commit `633fe8b9c`)

### #7862: Session Transcripts 644 Instead of 600

**Severity:** MEDIUM
**CWE:** CWE-732 (Incorrect Permission Assignment for Critical Resource)

**Vulnerability:** Session transcript `.jsonl` files are created with default permissions (0o644) instead of restrictive permissions (0o600). Other local users can read session data containing tool calls, messages, and potentially secrets.

**Upstream status:** FIXED — closed as COMPLETED 2026-02-16; commit `ae0b110e4` added `mode: 0o600` to all three write paths.

**Local status:** NOT FIXED — the 0o600 fix was applied in `ae0b110e4` but accidentally reverted by `9f261f592 revert: PR 18288 accidental merge`. Three sites remain unpatched:
- `src/auto-reply/reply/session.ts:96` - `fs.writeFileSync(sessionFile, ..., "utf-8")` (no mode)
- `src/agents/pi-embedded-runner/session-manager-init.ts` - no mode on session file reset
- `src/gateway/server-methods/sessions.ts:420` - `fs.writeFileSync(filePath, ..., "utf-8")` (no mode)

### #8516: Browser Download/Trace Endpoints Arbitrary File Write

**Severity:** HIGH
**CWE:** CWE-22 (Path Traversal)

**Vulnerability:** Browser download and trace endpoints accept arbitrary file paths without validation or authentication. POST `/download` and `/trace/stop` pass `body.path` directly to file system operations.

**Affected code:**
- `src/browser/routes/agent.act.download.ts:51,103` - POST `/wait/download` and POST `/download` use `resolveWritableOutputPathOrRespond()` from `src/browser/routes/output-paths.ts:9` (download routes extracted to dedicated module)
- `src/browser/routes/agent.debug.ts:119-150` - POST `/trace/stop` uses `body.path` without validation

**Note:** Related to #8696 (Playwright download path traversal) but affects different endpoints.

### #8586: Configurable Bypass Allows Unrestricted Command Exec

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-269 (Improper Privilege Management)

**Vulnerability:** When `elevatedMode=full` is configured, all security controls on command execution are bypassed. The `bypassApprovals` flag skips `resolveExecApprovals` entirely, allowing any command without user confirmation.

**Affected code:**
- `src/agents/bash-tools.exec.ts:202-210` — `elevatedMode` resolution; `elevatedMode=full` sets security to "full", ask to "off"
- `src/agents/bash-tools.exec.ts:272-274` — `bypassApprovals` flag; skips all approval checks when `elevatedMode === "full"`

### #8590: Status Endpoint Exposes Sensitive Internal Info

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-15

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** Gateway status/health endpoint returns unredacted internal information including file paths, session IDs, agent IDs, and model configuration to any connected client.

**Affected code:**
- `src/gateway/server-methods/health.ts:28-31` - returns full unredacted `getStatusSummary()`
- `src/commands/status.summary.ts:135-210` - exposes paths, session IDs, agent IDs, model configs

### #8591: Env Vars Exposed via Shell Commands

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13. Vulnerability still present in local code.

**Severity:** HIGH (WONTFIX)
**CWE:** CWE-526 (Exposure of Sensitive Information Through Environmental Variables)

**Vulnerability:** Full `process.env` is passed as the base environment to child processes. An agent can run `env` or `printenv` to dump all environment variables, including API keys and secrets.

**Affected code:**
- `src/agents/bash-tools.exec.ts:293,301` — full `process.env` passed to child spawn via `coerceEnv(process.env)` + `{ ...baseEnv, ...params.env }`
- `src/infra/host-env-security-policy.json` + `sanitizeHostExecEnv()` at `src/infra/host-env-security.ts:82` — policy blocks injection INTO env (via `validateHostEnv()` at `bash-tools.exec-runtime.ts:57`, enforcement at `bash-tools.exec.ts:330`), but doesn't filter what children can READ

### #8592: No Detection of Encoded/Obfuscated Commands

**Severity:** MEDIUM (partially affected)
**CWE:** CWE-116 (Improper Encoding or Escaping)

**Vulnerability:** `isSafeExecutableValue()` validates executable names against an allowlist but does not detect base64-encoded, hex-encoded, or otherwise obfuscated command arguments.

**Affected code:** `src/infra/exec-safety.ts:1-44` - validates executable names only; obfuscated arguments pass through.

**Cross-ref:** [PR #16907](https://github.com/openclaw/openclaw/pull/16907) (OPEN) — obfuscated command detection

### #8593: chat.send Handler Lacks Input Length Validation

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-15

**Severity:** ~~MEDIUM~~ FIXED
**CWE:** CWE-20 (Improper Input Validation)

**Vulnerability:** `ChatSendParamsSchema` validates structure but the message field has no `maxLength` constraint. Extremely large messages could cause resource exhaustion.

**Affected code:** `src/gateway/protocol/schema/logs-chat.ts:4-11` - schema exists but lacks length limits on message field.

### #8776: soul-evil Hook Silently Hijacks Agent

**Status: FIXED** — closed via PR [#14757](https://github.com/openclaw/openclaw/pull/14757) (Feb 13 sync 1)

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-506 (Embedded Malicious Code)

**Vulnerability:** The `soul-evil` hook shipped bundled with OpenClaw and could silently replace the agent's SOUL.md (system prompt) content. When activated, it overrode the agent's personality and behavior without explicit user notification.

**Fix:** Complete removal of soul-evil hook. Deleted `src/hooks/soul-evil.ts` (280 lines), `src/hooks/soul-evil.test.ts` (252 lines), bundled handler directory (`src/hooks/bundled/soul-evil/`), documentation (`docs/hooks/soul-evil.md`), and package.json references (-981 lines total). Thanks @Imccccc.

### #9007: Google Places URL Path Interpolation (Skill, Not Core)

**Severity:** LOW (partially affected)
**CWE:** CWE-918 (Server-Side Request Forgery)

**Vulnerability:** Google Places API URL construction interpolates `place_id` without sanitization. Located in the optional `local-places` skill, not core code.

**Affected code:**
- `skills/local-places/src/local_places/google_places.py:238` - `place_id` interpolated into URL
- `skills/local-places/src/local_places/main.py:52-54` - FastAPI route passes `place_id` directly

### #9065: ~/.openclaw Group-Writable After sudo Install

**Severity:** LOW (partially affected)
**CWE:** CWE-276 (Incorrect Default Permissions)

**Vulnerability:** Code correctly uses `mode: 0o700` for directory creation (`src/config/io.ts:1138`), but when installed via `sudo`, the directory inherits root ownership. Subsequent user-space operations may create group-writable files.

**Note:** This is an operational issue (sudo usage), not a code bug. `src/security/audit.ts:245-256` already detects group-writable state directories.

### #9435: Gateway Auth Token Exposed in URL Query Params

**Status: FIXED** in PR [#9436](https://github.com/openclaw/openclaw/pull/9436)

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-598 (Sensitive Query Strings)

**Vulnerability:** Gateway authentication tokens were passed via URL query parameters (`?token=...`) in dashboard and onboarding flows, exposing credentials through logs, browser history, and Referer headers.

**Fix:** Query token acceptance completely removed. `extractHookToken()` in `src/gateway/hooks.ts:159-176` no longer reads `url.searchParams`. `src/commands/dashboard.ts` no longer constructs `?token=` URLs. `src/commands/onboard-helpers.ts` no longer passes token in URL. Server now returns HTTP 400 when `?token=` is present (`src/gateway/server-http.ts:383-387`).

### #9627: Config Secrets Exposed in JSON After Update/Doctor

**Severity:** HIGH
**CWE:** CWE-312 (Cleartext Storage of Sensitive Information)

**Vulnerability:** When `openclaw doctor` or `openclaw config set` writes the config file, environment variable references (`${VAR}`) are resolved to plaintext values. The write-back serializes resolved secrets to disk in cleartext JSON, destroying the original `${VAR}` references.

**Affected code:**
- `src/config/io.ts:1043` - `writeConfigFile` now preserves env var references for unchanged paths (commit `f59df9589`), but resolved values still leak for paths that change
- `src/config/env-substitution.ts:88` - `substituteString` is a one-way transformation
- `src/commands/doctor.ts:307` - `writeConfigFile(cfg)` writes env-resolved config back to disk

**Detection aid (sync 10):** Commit `748d6821d` adds forensic config write auditing (`src/config/io.ts:511-538`). Every `writeConfigFile` call now appends a `config-audit.jsonl` record with previous/next content hashes and byte sizes. When env vars are expanded to cleartext, the `nextBytes` will exceed `previousBytes` (longer cleartext vs short `${VAR}` refs), and the `suspicious` field flags `size-drop` anomalies for the reverse case. Check `$STATE_DIR/logs/config-audit.jsonl` to trace which process triggered the expansion.

### #9813: Gateway Expands ${ENV_VAR} on Meta Writeback (DUPLICATE of #9627)

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-13

**Severity:** ~~HIGH~~ FIXED (DUPLICATE)
**CWE:** CWE-312 (Cleartext Storage of Sensitive Information)

**Vulnerability:** Same root cause as #9627. When the gateway updates `meta.lastTouchedAt` in the config file, the writeback path resolves `${ENV_VAR}` references to plaintext values, destroying the original references.

**Affected code:**
- `src/config/io.ts:1043` - `writeConfigFile` now preserves env var references for unchanged paths (commit `f59df9589`), partially mitigating meta writeback expansion

**Our analysis:** This is the same `writeConfigFile` code path documented in #9627. The trigger differs (gateway meta writeback vs `doctor`/`config set`), but the underlying bug — env var expansion on write — is identical. Closed as COMPLETED upstream on 2026-02-13 (duplicate closed, root cause tracked in #9627 which remains OPEN).

### #9795: sanitizeMimeType Regex Not End-Anchored (By Design)

**Severity:** LOW/INFORMATIONAL
**CWE:** N/A

**Vulnerability claimed:** The `sanitizeMimeType` regex `/^([\w-]+\/[\w.+-]+)/` is not end-anchored, potentially allowing MIME type confusion.

**Affected code:**
- `src/media-understanding/apply.ts:90-100` - `sanitizeMimeType` function

**Our analysis:** The unanchored end is **standard MIME parsing behavior**. MIME types can include parameters like `; charset=utf-8` which the regex correctly discards by capturing only `type/subtype`. The function also calls `.toLowerCase()` (line 94) before the regex match, handling case-insensitivity. The reporter's suggested fix (adding `$` anchor) would break legitimate MIME types with parameters. This is a Qodo AI automated finding that misidentifies correct behavior as a vulnerability.

### #9792: validateHostEnv Skips baseEnv (By Design)

**Severity:** INVALID
**CWE:** N/A

**Vulnerability claimed:** `validateHostEnv` only validates agent-supplied `params.env` but not the host's own `baseEnv`, potentially allowing dangerous environment variables.

**Affected code:**
- `src/agents/bash-tools.exec-runtime.ts:57` (definition) + `src/agents/bash-tools.exec.ts:369` (call) �� validation scoped to `params.env` only; centralized as `sanitizeHostExecEnv()` at `src/infra/host-env-security.ts:82` in Feb 21 sync 7

**Our analysis:** `baseEnv = coerceEnv(process.env)` is the **host's own environment**, not untrusted input. The code comment at line 969 states: "We validate BEFORE merging to prevent any dangerous vars from entering the stream." Validating `baseEnv` would **break the gateway** — the host always has `PATH` set, which `validateHostEnv` explicitly rejects (it's designed to block agents from injecting `PATH` overrides). The validation boundary is intentionally scoped to untrusted agent-supplied variables. This is a Qodo AI automated finding.

### #9791: Fullwidth Character Markers Bypass (Fold Is Length-Preserving)

**Severity:** INVALID
**CWE:** N/A

**Vulnerability claimed:** Fullwidth Unicode characters (e.g., `＜` U+FF1C) could bypass marker detection in `replaceMarkers`, causing index misalignment when mapping between folded and original strings.

**Affected code:**
- `src/security/external-content.ts:127-167` - `replaceMarkers` and `foldMarkerChar`

**Our analysis:** `foldMarkerChar` maps each fullwidth character to a single ASCII character (`\uFF21`→`A`, `\uFF1C`→`<`, etc.). Both fullwidth characters and their ASCII replacements are **single BMP UTF-16 code units**, so the fold is **length-preserving**. Indices from `pattern.regex.exec(folded)` map correctly back to `content.slice()` positions on the original string. The reporter suggests "perform all operations on folded string" — this would **lose original content** between markers, which is the opposite of correct behavior. This is a Qodo AI automated finding.

### #9667: JWT Token Verification Incomplete (File Does Not Exist)

**Severity:** INVALID
**CWE:** N/A

**Vulnerability claimed:** Incomplete JWT token verification in `src/auth/jwt.ts` allows authentication bypass.

**Our analysis:** The file `src/auth/jwt.ts` **does not exist** in the codebase. Grep confirms zero JWT-related files in the entire `src/` directory. This was filed by an "automated bug hunting system" with a generic proposed fix referencing a nonexistent file. Entirely fabricated.

### #4940: commands.restart Bypass via Exec Tool

**Severity:** MEDIUM
**CWE:** CWE-863 (Incorrect Authorization)

**Vulnerability:** The gateway tool correctly checks `commands.restart=true` before allowing restart actions (`src/agents/tools/gateway-tool.ts:84-87`), but the exec tool can run `openclaw gateway restart` without checking this config flag. The exec approval system (`src/infra/exec-approvals.ts`) only validates executable paths against allowlist patterns, not the semantic meaning of commands.

**Affected code:**
- `src/agents/tools/gateway-tool.ts:84-87` - correctly checks `commands.restart` (this is the SECURE path)
- `src/agents/bash-tools.exec.ts` - no check for `commands.restart` (BYPASS path)
- `src/infra/exec-approvals.ts` - no command-semantic filtering

**Note:** Requires agent to have exec access (security mode `allowlist` with `openclaw` allowlisted, or `full`).

### #8588: Sensitive Config Files Accessible When Sandbox Is Home Dir

**Severity:** MEDIUM (partially affected)
**CWE:** CWE-552 (Files or Directories Accessible to External Parties)

**Vulnerability:** When users configure `workspace: "~"` (home directory) with `workspaceAccess: "rw"`, the sandbox root becomes the home directory, exposing `~/.openclaw/openclaw.json` (API keys, bot tokens) and `~/.openclaw/credentials/` to the agent. The sandbox path validation only prevents path escape, with no exclusion of sensitive subdirectories.

**Affected code:**
- `src/agents/sandbox/context.ts:39-46` - `workspaceAccess === "rw"` uses `agentWorkspaceDir` as sandbox root
- `src/agents/sandbox-paths.ts:44-58` - path escape protection only, no sensitive dir exclusion
- `src/agents/sandbox/config.ts:168` - default `workspaceAccess: "none"` (safe)

**Cross-ref:** [PR #16929](https://github.com/openclaw/openclaw/pull/16929) (OPEN) — block sensitive dirs in sandbox

**Note:** Default configuration is SAFE. Only manifests with explicit non-default workspace + rw config.

### #8589: Sandbox File Read Lacks Content Filtering

**Severity:** LOW
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** The file read tool returns raw file contents without content filtering or sensitive-data redaction. Comprehensive redaction patterns exist in `src/logging/redact.ts` (API keys, tokens, PEM keys, etc.) but are only used for log/UI display, not applied to file read results returned to the agent.

**Affected code:**
- `src/agents/pi-tools.read.ts:286-302` - read tool returns raw content, processes only image MIME
- `src/logging/redact.ts:14-39,125-138` - redaction patterns exist but NOT applied to read results

**Note:** Sandbox path enforcement is the primary control. This is a defense-in-depth gap, not a boundary breach. Low severity because the sandbox boundary itself is correctly enforced.

### #8594: No Rate Limiting on Gateway Endpoints

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13. Vulnerability still present in local code.

**Severity:** MEDIUM (WONTFIX)
**CWE:** CWE-770 (Allocation of Resources Without Limits or Throttling)

**Vulnerability:** The gateway server lacks rate limiting on all RPC, HTTP, and WebSocket endpoints. No per-client, per-IP, or per-connection request throttling exists. Authenticated clients can send unlimited requests.

**Affected code:**
- `src/gateway/server-constants.ts` - payload size limits only (`MAX_PAYLOAD_BYTES=512KB`, `MAX_BUFFERED_BYTES=1.5MB`), no rate constants
- `src/gateway/server-http.ts` - no rate limiting middleware
- `src/gateway/server/ws-connection/message-handler.ts` - no per-message rate limiting

**Existing protections (not rate limiting):**
- Authentication required (not anonymous)
- Payload size limits (512KB frame, 256KB HTTP body)
- Deduplication cache (prevents duplicate processing but NOT request frequency)

### #10324: Memory Index Multi-Write Lacks Transactions

**Severity:** MEDIUM (CVSS 6.8)
**CWE:** CWE-362 (Concurrent Execution Using Shared Resource with Improper Synchronization)

**Vulnerability:** The `indexFile()` method performs multiple DELETE + INSERT operations across chunks, vector, FTS, and files tables without wrapping them in a database transaction. A crash or concurrent write mid-operation leaves the memory index in an inconsistent state (orphaned vectors, missing chunks, stale file records).

**Affected code:**
- `src/memory/manager-embedding-ops.ts:693-805` — `indexFile()` performs 5+ SQL operations (DELETE vector, DELETE FTS, DELETE chunks, INSERT loop, UPSERT files) with **no BEGIN/COMMIT**
- Contrast: `src/memory/manager-sync-ops.ts:293,305` correctly uses `BEGIN`/`COMMIT` for similar batch operations

### #10326: Child Process stop() Lacks SIGKILL Escalation

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~MEDIUM~~ FIXED (was CVSS 5.5)
**CWE:** CWE-404 (Improper Resource Shutdown or Release)

**Vulnerability:** Child process termination in iMessage and Signal daemons sends only SIGTERM with no fallback to SIGKILL. Misbehaving or hung child processes can remain alive indefinitely, consuming resources.

**Affected code:**
- `src/imessage/client.ts:110-131` — `stop()` sends SIGTERM at :125 after 500ms timeout; `Promise.race` at :120 resolves regardless, but never force-kills
- `src/signal/daemon.ts:96-100` — `stop()` sends SIGTERM at :98; fire-and-forget with no timeout or SIGKILL fallback

### #10330: TOCTOU Race in Device Auth Token Storage

**Severity:** MEDIUM (CVSS 6.2)
**CWE:** CWE-367 (Time-of-check Time-of-use Race Condition)

**Vulnerability:** `storeDeviceAuthToken()` reads the auth store from disk, modifies the in-memory object, and writes back without any file locking. Two concurrent authentication flows can race, with the second overwriting the first's token.

**Affected code:**
- `src/infra/device-auth-store.ts:92-119` — read at :100 (`readStore`), mutate :102-116, write at :117 (`writeStore`) with **no lock between read and write**
- Called from `src/gateway/client.ts:377-383` during device authentication

### #10331: Session Store Stale Cache Inside Write Lock

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~MEDIUM~~ FIXED (was CVSS 5.9)
**CWE:** CWE-662 (Improper Synchronization)

**Vulnerability:** Two session store write methods call `loadSessionStore()` without `skipCache: true`, reading stale cached data even though they hold the write lock. Concurrent requests to the same session can silently lose metadata updates.

**Affected code:**
- `src/config/sessions/store.ts:679` — `updateSessionStoreEntry()` inside `withSessionStoreLock()` calls `loadSessionStore(storePath)` **without `skipCache: true`**
- `src/config/sessions/store.ts:645` — `withSessionStoreLock()` helper
- `src/config/sessions/store.ts:547` — `updateSessionStore()` NOW correctly uses `{ skipCache: true }` (bug partially fixed in session pruning refactor)

**Impact:** 8 callers in hot paths (agent runner, channels, Slack, LINE, web) can lose session metadata updates under concurrent load.

### #10333: BlueBubbles Filename Multipart Header Injection

**Severity:** MEDIUM (CVSS 5.4)
**CWE:** CWE-93 (Improper Neutralization of CRLF Sequences in HTTP Headers)

**Vulnerability:** BlueBubbles attachment handling uses `path.basename()` as sole filename sanitization, which strips directory components but preserves `"`, `\r`, `\n`, and other characters that can inject into Content-Disposition headers.

**Affected code:**
- `extensions/bluebubbles/src/attachments.ts:33` — `sanitizeFilename()` uses only `path.basename()` at :33
- `extensions/bluebubbles/src/attachments.ts:214-217` — `addFile()` interpolates filename unescaped into `Content-Disposition: form-data; name="${name}"; filename="${fileName}"` at :217
- `extensions/bluebubbles/src/chat.ts:302+307` — constructs Content-Disposition header with `filename="${safeFilename}"` (sanitized via `path.basename()` + regex replacement)

### #10927: Random IDs for External Content Wrapper Tags (Enhancement)

**Category:** ENHANCEMENT (defense-in-depth)
**CWE:** N/A

**Proposal:** Add random 16-char IDs to external content wrapper tags (`<<<EXTERNAL_UNTRUSTED_CONTENT id="a7f3b2c1...">>>`) to prevent tag spoofing by malicious content.

**Current defense:** `replaceMarkers()` at `src/security/external-content.ts:127-167` already sanitizes injected `<<<EXTERNAL_UNTRUSTED_CONTENT>>>` tags (case-insensitive, including fullwidth Unicode variants) to `[[MARKER_SANITIZED]]`. The existing defense is functional; random IDs would add defense-in-depth and improve content correlation for debugging.

**Related:** #8027 (web_fetch hidden text prompt injection)

### #10890: RFC: Skill Security Framework (Enhancement)

**Category:** ENHANCEMENT (architecture proposal)
**CWE:** N/A

**Proposal:** Phased skill security framework:
- Phase 1: `openclaw skills audit` CLI, permission manifests, hash verification, install warnings
- Phase 2: Author verification, skill signing, version pinning
- Phase 3: Runtime sandboxing, tool allowlists per skill, anomaly detection

**Relevance:** Directly addresses the attack surface documented in #9512 (skill archive path traversal) and the ClawHavoc campaign. Proposes Deno-style deny-by-default permissions for the skill system. Not a vulnerability report; comprehensive RFC for skill ecosystem security.

### #11900: Context Files Loaded for All Senders Regardless of IsOwner

**Vulnerability:** Bootstrap context files (USER.md, SOUL.md, etc.) are loaded for every sender, including non-owners on public channels. The `resolveBootstrapContextForRun()` function has no `senderIsOwner` parameter.
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Affected code:**
- `src/agents/bootstrap-files.ts:64-96` — `resolveBootstrapContextForRun()` loads all bootstrap files unconditionally
- `src/agents/pi-embedded-runner/run/attempt.ts:1426` — calls `resolveBootstrapContextForRun()` without `senderIsOwner`
- `src/agents/pi-embedded-runner/run/attempt.ts:1499` — `senderIsOwner` only passed to `createOpenClawCodingTools()` for tool gating

**Impact:** Non-owner senders on public channels receive responses shaped by the owner's personal context files (personality, preferences, private notes). The content is not directly exposed but indirectly leaks through response behavior. Tool access is correctly gated by `senderIsOwner`, but context/personality files are not.

### #11832: Per-Agent tools.exec Config Not Applied

**Vulnerability:** Per-agent `tools.exec` configuration (host, security, ask, node) is silently ignored. Agents run with global exec defaults regardless of per-agent settings.
**CWE:** CWE-269 (Improper Privilege Management)

**Affected code:**
- `src/auto-reply/reply/get-reply-directives.ts:66-81` — `resolveExecOverrides()` reads from `directives` (inline `!exec=docker`) and `sessionEntry` only
- `src/auto-reply/reply/get-reply-directives.ts:93` — `agentCfg: AgentDefaults` is in scope but not consulted for exec settings
- `src/agents/pi-embedded-runner/run/attempt.ts:1483` — `execOverrides` passed to tool creation, but populated only from directives/session

**Impact:** If an operator configures per-agent exec restrictions (e.g., `agents.mybot.tools.exec.host = "docker"` for sandboxed execution), those restrictions are silently ignored. The agent runs with global exec defaults. Global config still applies; only per-agent overrides are lost.

### #11945: config.patch Bypasses commands.restart Restriction

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13. Vulnerability still present in local code.

**Severity:** HIGH (WONTFIX)
**CWE:** CWE-863 (Incorrect Authorization)

**Vulnerability:** The `config.patch` gateway RPC method writes arbitrary config changes and triggers an automatic SIGUSR1 restart without checking `commands.restart`. The restart action correctly gates on `commands.restart`, but `config.patch` bypasses this by pre-authorizing the SIGUSR1 via `authorizeGatewaySigusr1Restart()`.

**Attack surface:** An agent with config.patch access can:
1. Disable gateway auth (`gateway.auth.mode`)
2. Bind to 0.0.0.0 (expose loopback-only gateway)
3. Add attacker-controlled channels
4. Swap the model to an attacker-controlled endpoint
5. Change workspace paths to sensitive directories
6. Modify auth profiles/API keys

All changes take effect immediately via automatic restart.

**Affected code:**
- `src/gateway/server-methods/config.ts:424,484` — writes config then calls `scheduleGatewaySigusr1Restart()` with NO `commands.restart` check
- `src/infra/restart.ts:153` — `authorizeGatewaySigusr1Restart(delayMs)` pre-authorizes the SIGUSR1 signal
- `src/cli/gateway-cli/run-loop.ts:188` — `consumeGatewaySigusr1RestartAuthorization()` returns true (pre-authorized), bypassing `isGatewaySigusr1RestartExternallyAllowed()`
- **Contrast:** `src/agents/tools/gateway-tool.ts:85` — the explicit `restart` action correctly checks `commands.restart`

**No key-level authorization:** Config validation is structural (JSON schema) only. No allowlist/denylist restricts which keys agents may modify.

### #12571: Session Isolation Leak in Cron Jobs After Extended Runtime

**Severity:** MEDIUM
**CWE:** CWE-362 (Race Condition) / CWE-404 (Improper Resource Shutdown)

**Vulnerability:** After ~24 hours of continuous operation, cron jobs configured with `sessionTarget: "isolated"` begin leaking messages into the main session. The reporter observed ~165 successful isolated runs before the leak began, with 5 prompt injection payloads (agent identity overrides) delivered to the main agent over 4 hours.

**Affected code:**
- `src/cron/service/jobs.ts` — cron job execution with `sessionTarget` handling
- `src/agents/tools/cron-tool.ts` — cron tool with `sessionTarget: "isolated"` support
- Session isolation code paths in 25+ files

**Root cause hypothesis:** Session pool exhaustion, session ID collision after rollover, isolation context corruption, or WebSocket routing table degradation. The consistent ~24-hour timeframe suggests a periodic cleanup (GC, connection pool reset) that breaks isolation context.

**Impact:** Prompt injection via session leak — isolated agent identity payloads delivered to the wrong session. Requires specific cron config + extended runtime + multiple concurrent isolated sessions.

### #13683: CLI `config get` Returns Unredacted Secrets to Sandboxed Agents

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** The CLI `openclaw config get` command reads and outputs resolved config values (including secrets from `${ENV_VAR}` substitution) without applying the redaction system. The gateway RPC `config.get` handler correctly redacts via `redactConfigSnapshot()`, but the CLI path bypasses this entirely. A sandboxed agent with exec access can extract any API key configured via env var substitution.

**Affected code:**
- `src/cli/config-cli.ts:279-284` — `loadValidConfig()` returns resolved `snapshot.config`; `getAtPath()` reads values directly
- `src/cli/config-cli.ts:279-285` — output paths (`defaultRuntime.log`) emit unredacted values

**Correct implementation (for comparison):**
- `src/gateway/server-methods/config.ts:268` — RPC handler calls `redactConfigSnapshot(snapshot)` before `respond()`
- `src/config/redact-snapshot.ts:276-278` — `redactConfigObject()` is exported and available for use in CLI

**Relationship to existing issues:**
- #9627: Config *write-back* destroys `${VAR}` references (different attack: disk persistence)
- #5995: Secrets in session *transcripts* (different attack: log files)
- #8591: Env vars via `env`/`printenv` (related: alternate exfiltration path via `process.env`)

**Fix:** Apply `redactConfigObject()` to the value before output in CLI `config get`, or use `redactConfigSnapshot()` on the entire snapshot and read from the redacted copy.

### #13786: BlueBubbles Webhook Auth Bypass via Loopback Proxy Trust

**Status: FIXED** — fixed in PR [#13787](https://github.com/openclaw/openclaw/pull/13787) (Feb 13 sync 1)

**Severity:** ~~HIGH~~ FIXED (was CVSS 8.6)
**CWE:** CWE-288 (Authentication Bypass Using an Alternate Path or Channel)

**Vulnerability:** The BlueBubbles webhook handler unconditionally trusted loopback remote addresses, bypassing the shared-secret check. In same-host reverse-proxy deployments, all external traffic arrived as `127.0.0.1`, so attackers could inject webhook events without knowing the BlueBubbles password.

**Fix:** Removed the loopback remoteAddress bypass from `extensions/bluebubbles/src/monitor.ts`. All requests now require password authentication regardless of source IP. Test fixtures updated to require authenticated webhooks.

### #13718: Unauthenticated Nostr Profile API Allows Remote Config Tampering

**Status: FIXED** — fixed in PR [#13719](https://github.com/openclaw/openclaw/pull/13719) (Feb 13 sync 1)

**Severity:** ~~HIGH~~ FIXED (was CVSS 8.6)
**CWE:** CWE-306 (Missing Authentication for Critical Function)

**Vulnerability:** The Nostr plugin registered HTTP endpoints for profile management (GET/PUT/POST on `/api/channels/nostr/:accountId/profile`) that accepted unauthenticated requests. The PUT path wrote attacker-controlled profile data directly to the gateway config file and triggered relay publish operations.

**Fix:** Gateway now requires `authorizeGatewayConnect` for all `/api/channels/` plugin HTTP routes (`src/gateway/server-http.ts:248-270`). Channel plugin endpoints are gateway-auth protected by default; non-channel plugin routes remain plugin-owned. New `server.plugin-http-auth.test.ts` (174 lines). Also adds UI-side Nostr profile management in `ui/src/ui/app-channels.ts` (+23 lines).

### #13937: HTML Not Escaped in Control UI Webchat (XSS)

**Status: FIXED** — closed as COMPLETED upstream 2026-02-11

**Severity:** ~~MEDIUM~~ FIXED
**CWE:** CWE-79 (Cross-Site Scripting)

**Vulnerability:** When HTML content is posted as a message in the Control UI webchat, it was rendered as live HTML rather than escaped as plain text. User-confirmed with screenshot showing rendered `<h1>`, `<p>` tags from a pasted HTML error page.

**Affected code:** The webchat markdown rendering pipeline in `ui/` passed raw HTML through without sanitization (per CommonMark spec, which allows inline HTML). No explicit `innerHTML`/`dangerouslySetInnerHTML` usage found outside test files — the issue was in the markdown-to-HTML rendering configuration.

**Fix:** Issue closed as COMPLETED on 2026-02-11T23:40:42Z. No directly linked PR, but stateReason=COMPLETED indicates fix was applied. Verify fix lands in next upstream sync.

### #14137: Gateway Authentication Has No Rate Limiting (CWE-307)

**Severity:** HIGH
**CWE:** CWE-307 (Improper Restriction of Excessive Authentication Attempts)

**Vulnerability:** `authorizeGatewayConnect()` accepts unlimited failed authentication attempts with no rate limiting, lockout, or backoff. A PoC using 50 concurrent WebSocket connections achieves ~645 brute-force attempts/second with zero resistance. `safeEqual()` correctly uses `timingSafeEqual` (timing attacks mitigated), but the lack of attempt throttling means weak tokens can be brute-forced in seconds.

**Affected code:**
- `src/security/secret-equal.ts:3-16` — `safeEqualSecret()` (extracted from auth.ts, timing-safe)
- `src/gateway/server-http.ts:296-350` — hook auth failure rate limiting added (Feb 13 sync 4, commit `113ebfd6a`): 20 failures/60s per client IP, HTTP 429 response
- `src/gateway/server/ws-connection/message-handler.ts` — no per-connection attempt limiting

**Fix available:** PR [#13680](https://github.com/openclaw/openclaw/pull/13680) (OPEN, not merged) — per-IP sliding window: 10 failures in 60s → IP blocked for 5 minutes; HTTP 429 with Retry-After; localhost exempt.

**Relationship:** Subset of #8594 (general rate limiting, CWE-770, MEDIUM) but higher severity — specifically targets auth brute-force with demonstrated PoC.

### #14117: Session Isolation & Message Attribution Failure

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~MEDIUM~~ FIXED
**CWE:** CWE-200 (Exposure of Sensitive Information) / CWE-362 (Race Condition)

**Vulnerability:** Three distinct session management failures:
1. **Session crossover:** Messages sent to the main session appear in remote Triager sessions (connected via Tailscale) as if the user sent them to the Triager
2. **Raw cron output:** Cron job internals (session keys, stats, system prompts) displayed to users instead of clean notifications
3. **Message attribution:** System cannot distinguish between user input, leaked messages from other sessions, and automated system content

**Affected code:**
- Session routing code across `src/cron/service/jobs.ts`, `src/infra/outbound/`, `src/gateway/server/hooks.ts`
- 25+ files involved in session isolation paths

**Impact:** Private conversations in the main session are visible in remote sessions. Agents may respond to "user" messages that the user never sent, creating both privacy and integrity failures.

**Relationship:** Related to #12571 (session isolation leak in cron jobs after ~24h) — different manifestation. #12571 is cron-specific after extended runtime; #14117 is cross-session routing between main and remote sessions. May share root cause in session routing/isolation code.

### #14808: apiKey Resolved to Plaintext in models.json Cache File

**Status: WONTFIX** -- closed upstream as NOT_PLANNED 2026-02-13.

**Severity:** MEDIUM (WONTFIX, DUPLICATE of #9627/#13683 family)
**CWE:** CWE-312 (Cleartext Storage of Sensitive Information)

**Vulnerability:** When using `${VAR}` syntax for `apiKey` in `openclaw.json`, OpenClaw resolves the environment variable to plaintext at runtime and writes the resolved value to the agent's `models.json` cache file (`~/.openclaw/agents/main/agent/models.json`). A sandboxed agent with file read access can extract any API key configured via env var substitution.

**Affected code:**
- `src/agents/models-config.providers.ts:275` — `normalizeProviders()` returns provider objects including resolved `apiKey` fields; `JSON.stringify({ providers: normalizedProviders })` serializes them to disk
- `src/agents/models-config.ts:41` — file written with `mode: 0o600` (correct permissions, owner-only)

**Mitigation:** File has 0o600 permissions (only owner-readable), so external users cannot read it. However, the agent process itself can read the file, and a sandboxed agent with exec access can `cat` the file to extract all provider API keys.

**Relationship to existing issues:**
- #9627: Config *writeback* destroys `${VAR}` references in `openclaw.json` (same root cause, different file)
- #13683: CLI `config get` returns unredacted secrets (different path: CLI stdout)
- #5995: Secrets in session *transcripts* (different path: `.jsonl` files)
- #8591: Env vars via `env`/`printenv` (different path: `process.env`)

**Proposed fix (from issue):** Strip `apiKey` from provider objects before writing to `models.json`. Resolve credentials at HTTP request time instead of at cache write time.

### #14875: Feishu Channel Hardcodes CommandAuthorized Bypassing Access Groups

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-13

**Severity:** ~~HIGH~~ FIXED (was CVSS 7.1)
**CWE:** CWE-862 (Missing Authorization)

**Vulnerability:** The Feishu channel extension unconditionally sets `CommandAuthorized: true` for every inbound message, bypassing the access group command gating system. All 16 other channel implementations (Discord, Mattermost, Matrix, Zalo, ZaloUser, BlueBubbles, WhatsApp, Google Chat, IRC, Nextcloud Talk, MSTeams, Telegram, Slack, iMessage) properly compute this value dynamically via `resolveCommandAuthorizedFromAuthorizers`.

**Affected code (pre-fix):**
- ~~`extensions/feishu/src/bot.ts:877`~~ — `CommandAuthorized: true` hardcoded in permission error context (lines shifted; fix applied)
- ~~`extensions/feishu/src/bot.ts:965`~~ — `CommandAuthorized: true` hardcoded in main message context (lines shifted; fix applied)
- `extensions/feishu/src/bot.ts:1330` — now uses `CommandAuthorized: commandAuthorized` (dynamic, post-fix)
- Zero imports of `resolveCommandAuthorizedFromAuthorizers` in the Feishu extension (pre-fix)

**Verification:**
- `src/channels/command-gating.ts:8` defines `resolveCommandAuthorizedFromAuthorizers()`
- 16 other channel implementations all use dynamic `commandAuthorized` computation
- `src/gateway/server-methods/chat.ts:1071` also hardcodes `true` but is gateway-auth protected (owner-facing webchat, expected behavior)

**Impact:** Any Feishu user can execute admin/control commands (e.g., `/model`, `/new`, `/reset`, `/elevated`) regardless of access group configuration. Requires Feishu channel to be enabled with access groups configured. Without access groups, all users are already allowed, so this only affects Feishu deployments with access restrictions.

### #13274: SSRF Guard Bypassed by IPv4-Compatible IPv6 Addresses

**Severity:** HIGH
**CWE:** CWE-918 (Server-Side Request Forgery)

**Vulnerability:** ~~The `isPrivateIpAddress()` function does not recognize IPv4-compatible IPv6 addresses like `::127.0.0.1` or `::7f00:1` as private/loopback.~~ **FIXED by `c0c0e0f9a`** (Feb 15 sync 11).

**Fix details:** `isPrivateIpAddress()` (`src/infra/net/ssrf.ts:108`) uses hextet-level IPv6 parsing via `parseIpv6WithEmbeddedIpv4()` (`src/shared/net/ip.ts:91`). `extractEmbeddedIpv4FromIpv6()` (`src/shared/net/ip.ts:279`) handles IPv4-mapped (`::ffff:a.b.c.d`), IPv4-compatible (`::a.b.c.d`), and full-form variants (`0000:0000:0000:0000:0000:ffff:7f00:0001`). New test file `ssrf.test.ts` covers all bypass variants. Pre-resolution and post-resolution checks at `resolvePinnedHostnameWithPolicy()` (`src/infra/net/ssrf.ts:276`) both use the fixed function.

### #11738: Canvas Authorization IP Co-Tenancy Bypass

**Severity:** HIGH
**CWE:** CWE-287 (Improper Authentication)

**Vulnerability:** `hasAuthorizedWsClientForIp()` trusts any HTTP request whose source IP matches an already-authenticated WebSocket client. In shared-IP deployments (NAT, corporate proxy, or trusted reverse proxy), one authenticated client implicitly authorizes all other users on the same IP, creating a cross-user auth bypass for Canvas endpoints.

**Affected code:**
- `src/gateway/server-http.ts` — `hasAuthorizedWsClientForIp()` (removed as part of the Feb 24 fix; previously at `:146-151`) did pure IP-based matching with no per-user or per-session distinction
- `src/gateway/server/http-auth.ts:58` — `authorizeCanvasRequest()` (previously called `hasAuthorizedWsClientForIp()` at `server-http.ts:212` as fallback; IP co-tenancy path removed in fix)
- Relies on `client.clientIp` field which is the same for all users behind NAT

### #11793: HTTP API Session Keys Lack Ownership Validation

**Severity:** HIGH
**CWE:** CWE-639 (Authorization Bypass Through User-Controlled Key)

**Vulnerability:** Multiple HTTP API endpoints accept user-controlled session keys via the `x-openclaw-session-key` header or request body without ownership validation. In multi-user deployments (Tailscale Serve), any authenticated user can read and write another user's conversation history, memories, and tool execution context by supplying a predictable session key.

**Affected code:**
- `src/gateway/http-utils.ts:65-79` — `resolveSessionKey()` returns `x-openclaw-session-key` header value as-is (line 71-73) with no ownership check
- `src/gateway/tools-invoke-http.ts:44-48` — `resolveSessionKeyFromBody()` accepts arbitrary session key from request body
- Affected endpoints: `/v1/chat/completions`, `/v1/responses`, `/tools/invoke`, `/hooks/agent`

### #11024: Gmail Push Endpoint Embeds Auth Token in URL Query String

**Status: FIXED** -- closed as COMPLETED upstream 2026-02-14

**Severity:** ~~HIGH~~ FIXED
**CWE:** CWE-598 (Sensitive Query Strings)

**Vulnerability:** Gmail webhook setup constructs Pub/Sub push endpoints as `https://...?token=<secret>`, exposing the shared secret via URL telemetry surfaces (reverse-proxy logs, access logs, traces, analytics). Additionally, the setup prints tokens in CLI output and `--json` mode.

**Affected code:**
- `src/hooks/gmail-setup-utils.ts:315` — URL constructed with `?token=<secret>` parameter
- Same vulnerability class as previously fixed #9435 (gateway auth in URL) and #5120 (webhook query token), but in Gmail-specific code path that was missed

### #11811: MSTeams Attachment Fetch Follows Redirects Before Allowlist Checks (SSRF)

**Severity:** HIGH
**CWE:** CWE-918 (Server-Side Request Forgery)

**Vulnerability:** The MSTeams attachment downloader's `fetchWithAuthFallback()` performs the initial fetch with default redirect behavior (follows redirects automatically). If an allowed URL redirects to an internal/disallowed host, the HTTP client follows the redirect and returns the response without checking the redirect target against the allowlist.

**Affected code:**
- `extensions/msteams/src/attachments/download.ts:93` — `await fetchFn(params.url)` with default redirect behavior (no `redirect: "manual"`)
- Line 94-95: if `firstAttempt.ok`, returns immediately — redirect target URL was never validated
- Line 111-113: the authenticated retry correctly uses `redirect: "manual"`, but line 93 (unauthenticated first attempt) does not
- `extensions/msteams/src/attachments/shared.ts` — `isUrlAllowed()` only applied to initial URL at download.ts:237, not redirect targets

**Verification:**
- Line 237 calls `isUrlAllowed(candidate.url, allowHosts)` before `fetchWithAuthFallback` — initial URL is validated
- But `fetch()` at line 93 follows 30x redirects automatically — redirect target is not validated
- Contrast with line 111-113: authenticated path correctly uses `redirect: "manual"` and validates redirect at line 119

**Note:** Requires MSTeams channel to be enabled AND a compromised or attacker-controlled host in the `allowHosts` configuration. Relates to tracked #13274 (SSRF guard IPv6 bypass) but different attack vector: redirect-following vs DNS resolution.

### #11202: Model Catalog with Resolved apiKey in LLM Prompt Context

**Severity:** MEDIUM
**CWE:** CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** The runtime model catalog (resolved from `openclaw.json` providers) is serialized into every LLM request payload as system prompt context. Environment variable references (`${VAR}`) are resolved to plaintext before serialization, so all provider API keys are sent to whichever LLM provider handles the request. Every provider sees every other provider's keys.

**Affected code:**
- `src/agents/models-config.providers.ts:275` — `normalizeProviders()` returns provider objects including resolved `apiKey` fields
- `src/agents/models-config.providers.ts` — provider normalization includes credential resolution

**Relationship:** Related to #14808 (apiKey in models.json cache, now WONTFIX), #13683 (CLI config get unredacted), and #9627 (config write-back). Different vector: keys leaked to LLM providers via prompt, not just disk/CLI.

### #12173: apply_patch Tool Path Traversal When Sandbox Disabled

**Severity:** MEDIUM
**CWE:** CWE-22 (Path Traversal)

**Vulnerability:** `resolvePatchPath()` has two code paths. When `sandboxRoot` is set, it calls `assertSandboxPath()` (secure). When `sandboxRoot` is `undefined` (gateway/non-sandboxed mode), it falls through to `resolvePathFromCwd()` which accepts absolute paths and normalizes `../` via `path.resolve()` with zero containment checks. Default sandbox mode is "off" (`src/agents/sandbox/config.ts:166`).

**Affected code:**
- `src/agents/apply-patch.ts:286-327` — `resolvePatchPath()` function
- Lines 291-308: sandbox path (secure, calls `assertSandboxPath` at :297)
- Lines 311-326: non-sandbox path (workspaceOnly-guarded, calls `assertSandboxPath` at :314 when enabled)
- Called at lines 154, 162, 168, 174 for add/delete/update/move patch operations

**Mitigation note:** When sandbox is disabled, the exec tool already has unrestricted file access. This is an additional vector (apply_patch vs exec) but does not expand the attack surface beyond what exec provides. Severity is MEDIUM rather than HIGH because it does not bypass a security boundary that is otherwise enforced.

### #15906: RCE via Rogue Gateway Impersonation (mDNS Discovery Spoofing)

**Severity:** HIGH
**CWE:** CWE-300 (Channel Accessible by Non-Endpoint) / CWE-295 (Improper Certificate Validation)

**Vulnerability:** The OpenClaw Node discovery mechanism (mDNS/Bonjour and Wide Area DNS-SD) automatically discovers and presents Gateways to users for connection without enforcing TLS certificate pinning or TOFU (Trust-On-First-Use) verification. An attacker on the same local network can advertise a rogue mDNS service impersonating a legitimate Gateway. The TLS fingerprint from the mDNS TXT record (`gatewayTlsSha256`) is stored but never verified against the actual TLS certificate presented during connection.

**Affected code:**
- `apps/android/app/src/main/java/ai/openclaw/android/gateway/GatewayDiscovery.kt:148-162` -- `onServiceResolved` stores `tlsFingerprintSha256` from TXT record but does not enforce it; endpoint published immediately via `publish()`
- `apps/macos/Sources/OpenClawDiscovery/WideAreaGatewayDiscovery.swift:75-99` -- DNS-SD results resolved without identity verification or certificate pinning
- `apps/macos/Sources/OpenClaw/ShellExecutor.swift:14-32` -- `runDetailed()` executes arbitrary commands via `/usr/bin/env` with no allowlist or sandboxing

**Partial mitigation:** Device pairing nonce/challenge flow exists in `GatewaySession.kt:263-264,448-451`. New devices must go through pairing approval before the Gateway can send commands. Auto-approve for local connections reduces this protection. The core issue is that mDNS is inherently unauthenticated, and the TLS fingerprint metadata is informational only.

**Impact:** On shared/hostile networks (coffee shops, co-working spaces, conference WiFi), an attacker can impersonate a Gateway and potentially execute commands on paired Nodes. Requires network adjacency and either auto-approve being enabled or social engineering of the pairing approval.

### #15950: Android Production Build Permits Cleartext Traffic Globally

**Severity:** HIGH
**CWE:** CWE-319 (Cleartext Transmission of Sensitive Information)

**Vulnerability:** The Android app ships with a `network_security_config.xml` that globally enables cleartext HTTP traffic via `<base-config cleartextTrafficPermitted="true">`. This overrides the secure default for modern Android SDKs (API 28+), allowing all HTTP connections including credential-bearing gateway flows to be intercepted on untrusted networks.

**Affected code:**
- `apps/android/app/src/main/res/xml/network_security_config.xml:4` -- `<base-config cleartextTrafficPermitted="true" tools:ignore="InsecureBaseConfiguration" />`
- `apps/android/app/src/main/AndroidManifest.xml` -- `android:networkSecurityConfig="@xml/network_security_config"` applies the permissive config to all production builds

**Context:** The inline comment says "This app is primarily used on a trusted tailnet; allow cleartext for IP-based endpoints too." While this is true for Tailscale deployments, the production APK is distributed to all users, many of whom use non-Tailscale setups where cleartext traffic is actively dangerous.

**Impact:** Gateway auth tokens, API keys, and conversation data can be intercepted via MITM on any untrusted network. The `tools:ignore="InsecureBaseConfiguration"` annotation deliberately suppresses the Android lint warning for this security issue.

### #16059: Extension Relay /extension WebSocket Unauthenticated

**Severity:** ~~MEDIUM~~ **FIXED** (Feb 23 sync 15, commit [`40494d67f`](https://github.com/openclaw/openclaw/commit/40494d67f))
**CWE:** CWE-306 (Missing Authentication for Critical Function)

**Vulnerability:** ~~The browser extension relay server's `/extension` WebSocket endpoint accepts connections with only a loopback address check and a bypassable Origin header check. Unlike the `/cdp` WebSocket endpoint on the same server (which requires a cryptographic `relayAuthToken`), the `/extension` path has no token-based authentication. Any local process can connect as the Chrome extension by omitting the Origin header, allowing it to intercept CDP commands, inject forged responses, and impersonate the browser extension.~~

**Fix:** The `/extension` upgrade path now requires the same `relayAuthToken` check as `/cdp`. Both paths call `getRelayAuthTokenFromRequest()` and reject with HTTP 401 if the token is absent or mismatched.

**Affected code (current):**
- `src/browser/extension-relay.ts:703-707` — Origin check (unchanged): rejects non-`chrome-extension://` origins when present
- `src/browser/extension-relay.ts:709-714` — `/extension` path now requires `relayAuthToken` via `RELAY_AUTH_HEADER`
- `src/browser/extension-relay.ts:734-739` — `/cdp` path requires `relayAuthToken` via `RELAY_AUTH_HEADER` (unchanged)

### #10992: Sub-Agents Bypass Exec Approvals for safeBins Commands

**Severity:** MEDIUM
**CWE:** CWE-863 (Incorrect Authorization)

**Vulnerability:** Sub-agents created via `sessions_spawn` can bypass the exec approval mechanism when executing commands. Commands matching the `safeBins` allowlist execute without triggering approval requests, even when the parent agent's security mode is set to `allowlist` with `ask: "on-miss"`.

**Affected code:**
- `src/agents/bash-tools.exec.ts:137` -- `safeBins` resolved from `defaults?.safeBins`
- `src/agents/bash-tools.exec.ts:265-277` -- security/ask resolution reads from `defaults` parameter
- `src/agents/bash-tools.exec.ts:333` -- `resolveExecApprovals(agentId, { security, ask })` uses the resolved security mode
- `src/agents/tools/sessions-spawn-tool.ts` -- sub-agents inherit global safeBins allowlist

**Impact:** An attacker with access to spawn sub-agents can bypass the approval workflow by having sub-agents execute commands that match safeBins patterns. Requires exec access with safeBins configured (non-default).

### #15990: Context Compaction Leaks Content Between Sessions

**Severity:** MEDIUM
**CWE:** CWE-200 (Exposure of Sensitive Information) / CWE-362 (Race Condition)

**Vulnerability:** During context compaction (when a session approaches context window limits), foreign content from a different session/conversation can leak into the current agent's message queue. The agent then outputs the leaked content to the wrong user.

**Affected code:**
- `src/agents/pi-embedded-runner/compact.ts` -- compaction logic
- Session isolation code paths across 25+ files

**Evidence:** Reporter documented a full recipe appearing in an unrelated session during compaction recovery. Forensic analysis confirmed zero recipe-related content in the agent's own session files; content originated from a completely different context.

**Relationship:** Distinct from #12571 (cron-specific after 24h) and #14117 (cross-session routing, now FIXED). Different trigger pathway: context compaction during session recovery with concurrent active sessions.

### #12542: Diagnostics-OTEL Exports Unredacted Sensitive Data

**Severity:** MEDIUM
**CWE:** CWE-532 (Insertion of Sensitive Information into Log File)

**Vulnerability:** The diagnostics-otel plugin exports ALL diagnostic events to an external OTLP collector without PII filtering or secret redaction. Session IDs, chat IDs, model names, and potentially sensitive conversation metadata are all exported unredacted.

**Affected code:**
- `extensions/diagnostics-otel/src/service.ts:391` -- exports `evt.sessionId` to OTLP spans
- `extensions/diagnostics-otel/src/service.ts:427-428,449-450,493-494` -- exports `evt.chatId`
- `extensions/diagnostics-otel/src/service.ts:343` -- exports `evt.model`
- No imports of `redactSensitive` or any redaction functions in the file

**Mitigation:** Requires explicit opt-in configuration (`diagnostics.otel.enabled: true`). Not enabled by default (line 53: `if (!cfg?.enabled || !otel?.enabled)`). Low practical risk unless user deliberately enables OTEL export.

### #12541: Voice-Call Webhook Spoofing via Signature Bypass Config

**Severity:** LOW
**CWE:** CWE-287 (Improper Authentication)

**Vulnerability:** The voice-call server implements HMAC-SHA256 signature verification for webhooks but provides a `skipSignatureVerification` config option that bypasses it entirely. When enabled, any forged telephony webhook is accepted as legitimate.

**Affected code:**
- `extensions/voice-call/src/config.ts` -- `skipSignatureVerification` option in config schema
- `extensions/voice-call/src/runtime.ts` -- bypass logic when option is enabled

**Mitigation:** Optional extension. Config option is intended for development/testing and is not enabled by default. Production deployments should never enable it. Low severity because it requires deliberate misconfiguration.

### #20683: Control UI Allows Token-Only Auth Over HTTP (allowInsecureAuth)

**Severity:** HIGH (CVSS 8.3)
**CWE:** CWE-319 (Cleartext Transmission of Sensitive Information) / CWE-287 (Improper Authentication)

**Vulnerability:** When `gateway.controlUi.allowInsecureAuth: true` is configured, the gateway bypasses two security layers: (1) the HTTPS/localhost enforcement block for Control UI connections, and (2) the device identity verification and pairing requirement. Any client presenting a valid token can connect over unencrypted HTTP. Tokens in transit are fully plaintext-exposed to MITM attackers.

**Affected code:**
- `src/gateway/server/ws-connection/connect-policy.ts:22-33` — `allowInsecureAuthConfigured` + `allowBypass` flags resolved via `resolveControlUiAuthPolicy()`
- `src/gateway/server/ws-connection/connect-policy.ts:52-86` — `evaluateMissingDeviceIdentity()` handles device identity check; HTTPS enforcement skipped when `allowBypass = true`
- `src/gateway/server/ws-connection/message-handler.ts:510` — `handleMissingDeviceIdentity()`: device pairing requirement skipped when `allowInsecureAuth` configured
- `src/security/audit.ts:557-565` — security audit detects and flags as `severity: "warn"` (checkId: `gateway.control_ui.insecure_auth`), but audit is advisory only

**Exploit conditions:** Admin must set `allowInsecureAuth: true` (opt-in). Once enabled, passive MITM on the local network can capture the auth token and gain full `operator.admin + operator.approvals + operator.pairing` access.

### #17936: message/sendAttachment Local File Exfiltration When Sandbox Disabled

**Severity:** HIGH
**CWE:** CWE-22 (Path Traversal) / CWE-200 (Exposure of Sensitive Information)

**Vulnerability:** `normalizeSandboxMediaParams()` is the sole path-validation guard for the `message` tool's `media`, `path`, and `filePath` parameters. When `sandboxRoot` is absent (which is the case whenever sandbox mode is "off" — the default), the function skips validation entirely via an early `continue`. A prompt-injected or malicious agent can call `message(action: "sendAttachment", filePath: "/etc/passwd")`, which will be read from disk and sent to the attacker-controlled channel with zero path restriction.

**Affected code:**
- `src/infra/outbound/message-action-params.ts:279-280` — `if (!sandboxRoot) { continue; }` skips path validation
- `src/infra/outbound/message-action-runner.ts:792` — `sandboxRoot: input.sandboxRoot` — passes `undefined` when sandbox disabled
- Targets: credential files (`~/.openclaw/credentials/`), config (`~/.openclaw/openclaw.json`), SSH keys, `.env` files

**Impact:** Affects all deployments running without sandbox (default configuration). Requires prompt-injection vector (e.g., malicious web content via web_fetch, external message with injected instructions).

### #20305: message Tool Cross-User Sends in Multi-Tenant Deployments

**Severity:** HIGH
**CWE:** CWE-284 (Improper Access Control) / CWE-862 (Missing Authorization)

**Vulnerability:** In multi-tenant deployments where multiple agents serve different Telegram users via `dmScope: "per-channel-peer"`, the `message` tool has no per-agent recipient scoping. Any agent can send messages to any Telegram user or group the bot has ever interacted with — not just its own operator. Confirmed in a live security audit with 230 agents where 5 cross-user prompt injections were successfully delivered.

**Affected code:**
- `src/infra/outbound/message-action-runner.ts` — no `allowedRecipients`, `dmScope` filter, or per-agent channel restriction
- `src/agents/tools/message-tool.ts:769` — `sendAttachment` action has no cross-tenant recipient restriction
- No grep matches for `allowedRecipients`, `restrictSend`, `sendScope`, `channelFilter`, `recipientFilter` in the message pipeline

**Impact:** A malicious or prompt-injected agent can impersonate the bot to any user, deliver prompt injection payloads to other users' sessions, and enumerate all connected users. Single-user setups are unaffected.

### #21656: System Event Format Spoofing via External Channels

**Severity:** MEDIUM
**CWE:** CWE-345 (Insufficient Verification of Data Authenticity) / CWE-74 (Injection)

**Vulnerability:** Internal system events (post-compaction audit warnings, heartbeat status, cron events) are prepended to the `role: user` message body using the `System: [timestamp] <text>` format. This format is not authenticated, signed, or delivered via a separate message role. External attackers who know the format (documented in public issue #20484) can craft Telegram/WhatsApp messages that begin with `System: [timestamp] ⚠️ Post-Compaction Audit: ...` and the agent will receive them indistinguishably from real system events. Default-configured agents without explicit injection detection rules would likely comply with spoofed system instructions.

**Affected code:**
- `src/auto-reply/reply/session-updates.ts:110-111` — `const block = systemLines.map((l) => \`System: ${l}\`).join("\\n")` — unauthenticated `System:` prefix
- `src/infra/system-events.ts:51-82` — server-side queue is correctly server-generated, but the format is also injectable from external channels
- No HMAC, no signed prefix, no separate `role: system` delivery distinguishes real from spoofed

**Prerequisites:** Attacker must have access to a channel the agent listens to (Telegram, WhatsApp, etc.). Exploitation depends on agent configuration — agents with explicit injection detection (like HEARTBEAT.md rules) are resistant.

### #38604: Sandbox Containers Have No Default pidsLimit (Fork Bomb Risk)

**Severity:** MEDIUM
**CWE:** CWE-400 (Uncontrolled Resource Consumption)

**Vulnerability:** Docker sandbox containers are started without a `--pids-limit` flag when no explicit `pidsLimit` value is configured. A malicious agent process inside the sandbox can spawn unlimited child processes (fork bomb), consuming all available process slots on the host and causing a denial-of-service condition.

**Affected code:**
- `src/agents/sandbox/config.ts:108` — `pidsLimit: agentDocker?.pidsLimit ?? globalDocker?.pidsLimit` — no fallback default; resolves to `undefined` when neither per-agent nor global config sets `pidsLimit`
- `src/agents/sandbox/docker.ts:398-399` — `if (typeof params.cfg.pidsLimit === "number" && params.cfg.pidsLimit > 0) { args.push("--pids-limit", ...) }` — conditional; skips the flag entirely when `pidsLimit` is `undefined`

**Note:** The Docker default for `--pids-limit` is `-1` (unlimited) on most configurations. A safe default (e.g., 1024) should be applied when no explicit limit is set.

### #29829: EXEC_SECRET_REF_ID_PATTERN Allows Path Traversal Sequences

**Severity:** MEDIUM
**CWE:** CWE-22 (Path Traversal)

**Vulnerability:** The `EXEC_SECRET_REF_ID_PATTERN` regex permits `.` and `/` in secret reference IDs, allowing traversal sequences like `a/../../../etc/passwd` to pass validation. If resolved secret ref IDs are used in path construction downstream, this could allow reading arbitrary files from the host filesystem.

**Affected code:**
- `src/secrets/ref-contract.ts:9` — `const EXEC_SECRET_REF_ID_PATTERN = /^[A-Za-z0-9][A-Za-z0-9._:/-]{0,255}$/` — allows `.`, `/`, and `:` after the required initial alphanumeric, permitting traversal sequences
- `src/secrets/ref-contract.ts:86-95` — `validateExecSecretRefId()` now explicitly rejects `.` and `..` path segments; traversal blocked by `d30dc28b8`

**Note:** Severity depends on how resolved secret IDs are consumed downstream. The regex is permissive by static analysis; runtime path construction must be traced to confirm full exploitability.

### Notable Non-Core Issues

#### #9860: System Prompt Hijacking in google-antigravity Provider

**Not a core OpenClaw vulnerability.** This is a dependency issue in the `@mariozechner/pi-ai` library used by the google-antigravity provider. The attack uses triple identity injection combined with role corruption (`system` → `user` role remapping) to hijack the system prompt. Affects users of the Gemini provider through OpenClaw. Worth monitoring but the fix must come from the upstream dependency.

#### #9828: Config Schema Injected Into Every Session (~100-150k Tokens)

**Design concern, not a vulnerability.** The full config schema is injected into every agent session's system prompt, consuming an estimated 50-75% of the 200k context window. This creates both an information disclosure vector (config schema reveals internal structure) and a resource waste problem (reduced effective context for actual conversation). A potential optimization would be to inject only relevant config keys per session.

---

## Agent Reliability Subsections

### #29363: Subagent Sessions Inject ALL Workspace Files (Persona Drift)

**Severity:** MEDIUM (PERSONA_DRIFT)
**Category:** PERSONA_DRIFT

**Vulnerability:** When a subagent session is created, `resolveBootstrapContextForRun()` loads ALL workspace context files (SOUL.md, IDENTITY.md, USER.md, TOOLS.md, AGENTS.md) without filtering to subagent-appropriate files. The `applyContextModeFilter()` function can restrict context to "lightweight" mode (AGENTS.md + TOOLS.md only), but `contextMode` is never set to `"lightweight"` for subagent sessions — so all files are injected unconditionally.

**Affected code:**
- `src/agents/bootstrap-files.ts:52-55` — `applyContextModeFilter()` returns all files unless `contextMode === "lightweight"` (never set for subagent sessions)
- `src/agents/pi-embedded-runner/run/attempt.ts:1432` — `contextMode: params.bootstrapContextMode` — `bootstrapContextMode` is not set for subagent sessions; defaults to `undefined`

**Impact:** Subagents receive the owner's personal context files (SOUL.md, IDENTITY.md, USER.md) on every invocation. In multi-tenant deployments, this expands the attack surface for persona hijacking via subagent prompt injection. Cross-ref #11900 (context files loaded for all senders regardless of owner status).

### #41100: Compaction Safeguard Fails Silently (No Reason Field)

**Severity:** LOW (CONTEXT_MGMT)
**Category:** CONTEXT_MGMT

**Vulnerability:** When the compaction safeguard hook cancels compaction, it returns `{ cancel: true }` without a `reason` field. The user sees "Compaction cancelled" with no actionable explanation, making it impossible to diagnose whether the cancellation was intentional (safety condition met), a misconfiguration, or a logic error.

**Affected code:**
- `src/agents/pi-extensions/compaction-safeguard.ts` — hook returns `cancel: true` without a `reason` field explaining why compaction was blocked

**Impact:** Silent failure makes debugging compaction behavior difficult. Users cannot distinguish between deliberate safeguard cancellation (correct), hook misconfiguration, or a logic error. Low severity because compaction is not silently corrupted — just cancelled without explanation. Cross-ref #25392 (FIXED: AGENTS.md template heading mismatch previously caused compaction to always cancel).
