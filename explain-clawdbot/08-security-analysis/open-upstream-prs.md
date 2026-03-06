> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [ClawJacked](./clawjacked-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Open Upstream Security Pull Requests

> **Status:** These PRs in upstream openclaw/openclaw fix or harden security-related code. Monitor merge status and sync locally when merged.
>
> **Last checked:** 27-02-2026 (17:06 AEST)

### OPEN/DRAFT PRs (monitor for merge)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#28349](https://github.com/openclaw/openclaw/pull/28349) | OPEN | security-fix | Pass ssrfPolicy from config to web_fetch SSRF guard; adds allowRfc2544BenchmarkRange opt-in | — | OPEN/PENDING |
| [#28341](https://github.com/openclaw/openclaw/pull/28341) | OPEN | security-fix | Stop leaking API key snippets in /models chat output (maskApiKey still called locally) | — | OPEN/PENDING |
| [#28281](https://github.com/openclaw/openclaw/pull/28281) | OPEN | security-fix | Override basic-ftp (CVE-2026-27699 path traversal in downloadToDir) + fast-xml-parser >=5.3.8 | — | OPEN/PENDING |
| [#28272](https://github.com/openclaw/openclaw/pull/28272) | OPEN | security-fix | TOCTOU race in writeFileWithinRoot: check uses workspaceReal but write uses workspaceDir (line 706) | — | OPEN/PENDING |
| [#28243](https://github.com/openclaw/openclaw/pull/28243) | OPEN | security-fix | Gate Telegram channel_post commands by explicit allowFrom | — | OPEN/PENDING |
| [#28241](https://github.com/openclaw/openclaw/pull/28241) | OPEN | security-fix | Thread-ownership fail-closed on verifier errors (Slack cross-agent leakage) | — | OPEN/PENDING |
| [#28239](https://github.com/openclaw/openclaw/pull/28239) | OPEN | security-fix | Reject oversized pre-auth WebSocket frames (DoS/memory amplification) | — | OPEN/PENDING |
| [#28238](https://github.com/openclaw/openclaw/pull/28238) | OPEN | security-fix | Cap pending pre-auth WebSocket handshakes (resource exhaustion) | — | OPEN/PENDING |
| [#28205](https://github.com/openclaw/openclaw/pull/28205) | OPEN | security-fix | Fail-closed on invalid config (loadConfig was silently reverting to empty/insecure defaults) | — | OPEN/PENDING |
| [#28114](https://github.com/openclaw/openclaw/pull/28114) | OPEN | security-fix | Reject placeholder secrets in config.apply/config.patch writes (prevents silent credential overwrite) | [#21573](https://github.com/openclaw/openclaw/issues/21573) | OPEN/PENDING |
| [#28113](https://github.com/openclaw/openclaw/pull/28113) | OPEN | security-fix | Enforce allowlist on message tool outbound sends | — | OPEN/PENDING |
| [#28093](https://github.com/openclaw/openclaw/pull/28093) | OPEN | security-fix | Add agent access control enforcement in group chats | [#25963](https://github.com/openclaw/openclaw/issues/25963) | OPEN/PENDING |
| [#28301](https://github.com/openclaw/openclaw/pull/28301) | OPEN | hardening | Add config to disable Bonjour/mDNS (gateway.mdns.enabled) to reduce network exposure | [#28174](https://github.com/openclaw/openclaw/issues/28174) | OPEN/PENDING |
| [#27993](https://github.com/openclaw/openclaw/pull/27993) | OPEN | hardening | Add --password-file and --token-file to avoid credential exposure in ps output | — | OPEN/PENDING |
| [#27991](https://github.com/openclaw/openclaw/pull/27991) | OPEN | hardening | Add local-model-only security mode for corporate LAN deployments | — | OPEN/PENDING |
| [#27818](https://github.com/openclaw/openclaw/pull/27818) | OPEN | hardening | Sanitize Content-Disposition filenames from remote fetches (path traversal) | — | OPEN/PENDING |
| [#27718](https://github.com/openclaw/openclaw/pull/27718) | OPEN | security-fix | Remove WORKFLOW_AUTO.md hardcoded default that creates prompt injection vector | — | OPEN/PENDING |
| [#21733](https://github.com/openclaw/openclaw/pull/21733) | OPEN | security-fix | Platform-aware allowlist matching and restricted safe-bin trust (exec pipeline) | — | OPEN/PENDING |
| [#21668](https://github.com/openclaw/openclaw/pull/21668) | OPEN | security-fix | Block dangerous environment variable keys from config injection | — | OPEN/PENDING |
| [#21667](https://github.com/openclaw/openclaw/pull/21667) | OPEN | hardening | Add CSP and security headers to canvas HTML responses | — | OPEN/PENDING |
| [#21666](https://github.com/openclaw/openclaw/pull/21666) | OPEN | hardening | Restrict auto-paired device scopes to safe defaults | — | OPEN/PENDING |
| [#21665](https://github.com/openclaw/openclaw/pull/21665) | OPEN | hardening | Add /home and /Users to bind-mount denylist (prevent home dir exposure in sandbox) | — | SYNC NEEDED |
| [#21664](https://github.com/openclaw/openclaw/pull/21664) | OPEN | hardening | Require re-pairing for legacy devices that lack scope metadata | — | OPEN/PENDING |
| [#21663](https://github.com/openclaw/openclaw/pull/21663) | OPEN | security-fix | Prevent self-approval of timed-out exec requests | — | OPEN/PENDING |
| [#21662](https://github.com/openclaw/openclaw/pull/21662) | OPEN | security-fix | Validate session key ownership against agent scope | — | OPEN/PENDING |
| [#21588](https://github.com/openclaw/openclaw/pull/21588) | OPEN | security-fix | Decouple external hook trust from session key format | — | OPEN/PENDING |
| [#21554](https://github.com/openclaw/openclaw/pull/21554) | OPEN | enhancement | Encrypt workspace files and config at rest | — | OPEN/PENDING |
| [#21518](https://github.com/openclaw/openclaw/pull/21518) | OPEN | hardening | Add Anthropic OAuth token refresh and fix external CLI sync | — | OPEN/PENDING |
| [#21476](https://github.com/openclaw/openclaw/pull/21476) | OPEN | hardening | Include operator.read in default CLI scopes | — | OPEN/PENDING |
| [#20855](https://github.com/openclaw/openclaw/pull/20855) | OPEN | security-fix | Block prototype chain traversal in hook template resolution | — | OPEN/PENDING |
| [#20796](https://github.com/openclaw/openclaw/pull/20796) | OPEN | security-fix | OC-22: Prevent Zip Slip and symlink following in skill packaging | — | OPEN/PENDING |
| [#20775](https://github.com/openclaw/openclaw/pull/20775) | OPEN | security-fix | OC-10: Add webhook payload schema validation to prevent malformed payload injection | — | OPEN/PENDING |
| [#20424](https://github.com/openclaw/openclaw/pull/20424) | OPEN | security-fix | Fix plugin extension path traversal in discovery/install | — | OPEN/PENDING |
| [#20266](https://github.com/openclaw/openclaw/pull/20266) | OPEN | enhancement | Skills-audit Phase 1 security scanner for installed skills | — | OPEN/PENDING |
| [#20177](https://github.com/openclaw/openclaw/pull/20177) | OPEN | security-fix | Block command substitution in unquoted heredoc bodies (Windows CRLF injection) | — | OPEN/PENDING |
| [#20106](https://github.com/openclaw/openclaw/pull/20106) | OPEN | hardening | MAESTRO threat mitigations (LM-001, SC-003, AF-005, DI-006, EO-004, AE-001) | — | OPEN/PENDING |
| [#19756](https://github.com/openclaw/openclaw/pull/19756) | OPEN | hardening | OC-101: Refresh token rotation enforcement (Aether AI Agent) | — | OPEN/PENDING |
| [#19675](https://github.com/openclaw/openclaw/pull/19675) | OPEN | security-fix | Prevent zero-width Unicode chars from bypassing boundary marker sanitization | — | OPEN/PENDING |
| [#19619](https://github.com/openclaw/openclaw/pull/19619) | OPEN | security-fix | Bump fast-xml-parser override to 5.3.6 to fix DoS vulnerability (upstream CVE) | — | OPEN/PENDING |
| [#19542](https://github.com/openclaw/openclaw/pull/19542) | OPEN | hardening | Sandbox dynamic import in hook transforms with symlink validation | — | OPEN/PENDING |
| [#19539](https://github.com/openclaw/openclaw/pull/19539) | OPEN | hardening | Strengthen CSRF protection with SameSite cookies | — | OPEN/PENDING |
| [#19525](https://github.com/openclaw/openclaw/pull/19525) | OPEN | hardening | Add SSRF validation for external URLs | — | OPEN/PENDING |
| [#19507](https://github.com/openclaw/openclaw/pull/19507) | OPEN | security-fix | Block prototype pollution in template path resolver | — | OPEN/PENDING |
| [#19042](https://github.com/openclaw/openclaw/pull/19042) | OPEN | hardening | Add URL allowlist for web_search and web_fetch tools | — | OPEN/PENDING |
| [#18933](https://github.com/openclaw/openclaw/pull/18933) | OPEN | hardening | Use timingSafeEqual for pairing code comparison | — | OPEN/PENDING |
| [#18923](https://github.com/openclaw/openclaw/pull/18923) | OPEN | hardening | Block out-of-root hook manifest paths | — | OPEN/PENDING |
| [#17944](https://github.com/openclaw/openclaw/pull/17944) | OPEN | security-fix | Fail-closed for local media paths without sandboxRoot | — | OPEN/PENDING |
| [#17724](https://github.com/openclaw/openclaw/pull/17724) | OPEN | security-fix | Fix potential argument injection in Zalo user tool execution | — | OPEN/PENDING |
| [#16992](https://github.com/openclaw/openclaw/pull/16992) | OPEN | security-fix | Escape XML entities in file.filename to prevent prompt injection in OpenResponses | — | OPEN/PENDING |
| [#16990](https://github.com/openclaw/openclaw/pull/16990) | OPEN | security-fix | Strip auth headers on cross-origin redirect in downloadToFile (credential leakage) | — | OPEN/PENDING |
| [#16963](https://github.com/openclaw/openclaw/pull/16963) | OPEN | hardening | Enable auth rate limiting by default (was opt-in only) | [#16876](https://github.com/openclaw/openclaw/issues/16876) | OPEN/PENDING |
| [#16898](https://github.com/openclaw/openclaw/pull/16898) | OPEN | security-fix | Zalo webhook secret comparison vulnerable to timing attacks (plain `===`) | — | OPEN/PENDING |
| [#16936](https://github.com/openclaw/openclaw/pull/16936) | OPEN | security-fix | Feishu mention stripping vulnerable to regex injection (unsanitized RegExp construction) | — | OPEN/PENDING |
| [#15757](https://github.com/openclaw/openclaw/pull/15757) | OPEN | hardening | Add hardening gap audit checks (sandbox.mode_not_all, tools.dangerous_not_denied, etc.) | — | OPEN/PENDING |
| [#15615](https://github.com/openclaw/openclaw/pull/15615) | OPEN | security-fix | Restrict PATH override to exact match in node-host sanitizeEnv | — | OPEN/PENDING |
| [#15296](https://github.com/openclaw/openclaw/pull/15296) | OPEN | hardening | Harden config redaction defaults; add explicit `--show-secrets` opt-in | — | OPEN/PENDING |
| [#14197](https://github.com/openclaw/openclaw/pull/14197) | OPEN | security-fix | Harden browser API auth, token comparisons (7 locations), and hook tokens | — | OPEN/PENDING |
| [#14098](https://github.com/openclaw/openclaw/pull/14098) | OPEN | hardening | Sanitize JSON tool-call payload text to prevent leak via Ollama/local providers | — | OPEN/PENDING |
| [#14318](https://github.com/openclaw/openclaw/pull/14318) | OPEN | hardening | Enforce outbound allowlist on Discord send functions (blocks agent writes to non-allowed channels) | — | OPEN/PENDING |
| [#14224](https://github.com/openclaw/openclaw/pull/14224) | OPEN | hardening | Telegram member-info action exposes chat administrators (admin enumeration) | — | OPEN/PENDING |
| [#14222](https://github.com/openclaw/openclaw/pull/14222) | OPEN | hardening | Add `needsApproval` to `before_tool_call` hook; move AgentShield to extension | — | OPEN/PENDING |
| [#14061](https://github.com/openclaw/openclaw/pull/14061) | OPEN | security-fix | Docker gateway auth bypass via Host header spoofing — verify client IP matches Docker gateway | — | OPEN/PENDING |
| [#14689](https://github.com/openclaw/openclaw/pull/14689) | OPEN | hardening | Auto-set `per-channel-peer` dmScope default during multi-channel onboarding | [#14688](https://github.com/openclaw/openclaw/issues/14688) | OPEN/PENDING |
| [#13894](https://github.com/openclaw/openclaw/pull/13894) | OPEN | hardening | Add manifest scanner for SKILL.md trust analysis (8 threat categories) | — | OPEN/PENDING |
| [#13817](https://github.com/openclaw/openclaw/pull/13817) | DRAFT | hardening | Configurable prompt injection monitor for tool results | — | OPEN/PENDING |
| [#13737](https://github.com/openclaw/openclaw/pull/13737) | OPEN | hardening | Docker UID/GID remap hardening and docker-setup privilege isolation | — | OPEN/PENDING |
| [#13521](https://github.com/openclaw/openclaw/pull/13521) | OPEN | security-fix | Require webhook secret in Telegram runtime webhook mode | [#13116](https://github.com/openclaw/openclaw/issues/13116) | OPEN/PENDING |
| [#13321](https://github.com/openclaw/openclaw/pull/13321) | OPEN | hardening | Android gateway device identity hardening and A2UI UX improvements | — | OPEN/PENDING |
| [#13308](https://github.com/openclaw/openclaw/pull/13308) | OPEN | hardening | Address audit findings (gateway, CI, Docker) | — | OPEN/PENDING |
| [#13254](https://github.com/openclaw/openclaw/pull/13254) | OPEN | hardening | Harden archive extraction and plugin update rollback | — | OPEN/PENDING |
| [#13144](https://github.com/openclaw/openclaw/pull/13144) | OPEN | hardening | Harden archive extraction, auth tokens, hook transforms, and queue limits | — | OPEN/PENDING |
| [#13042](https://github.com/openclaw/openclaw/pull/13042) | OPEN | hardening | Add guard model for prompt injection sanitization | — | OPEN/PENDING |
| [#12958](https://github.com/openclaw/openclaw/pull/12958) | OPEN | hardening | Block agent read access to sensitive config and credential files | — | OPEN/PENDING |
| [#12871](https://github.com/openclaw/openclaw/pull/12871) | OPEN | hardening | Shell injection warning + prefer bash for embedded agents | — | OPEN/PENDING |
| [#12839](https://github.com/openclaw/openclaw/pull/12839) | OPEN | hardening | Add vault proxy mode for credential isolation | — | OPEN/PENDING |
| [#12387](https://github.com/openclaw/openclaw/pull/12387) | OPEN | security-fix | Fix SSRF vulnerability in matrix-bot-sdk | — | OPEN/PENDING |
| [#10238](https://github.com/openclaw/openclaw/pull/10238) | OPEN | security-fix | Fix TwiML injection via unescaped locale/language/voice parameters | — | OPEN/PENDING |
| [#8513](https://github.com/openclaw/openclaw/pull/8513) | OPEN | security-fix | Require auth for plugin HTTP routes | [#8512](https://github.com/openclaw/openclaw/issues/8512) | OPEN/PENDING |
| [#8305](https://github.com/openclaw/openclaw/pull/8305) | OPEN | hardening | Add SSRF protection to browser navigation | — | OPEN/PENDING |
| [#8186](https://github.com/openclaw/openclaw/pull/8186) | OPEN | security-fix | Validate sandbox `setupCommand` to prevent shell injection | — | OPEN/PENDING |
| [#7616](https://github.com/openclaw/openclaw/pull/7616) | OPEN | security-fix | Harden zip extraction against path traversal | [#3277](https://github.com/openclaw/openclaw/issues/3277) | OPEN/PENDING |

### MERGED PRs (sync status verified)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#27936](https://github.com/openclaw/openclaw/pull/27936) | MERGED | security-fix | Reject dmPolicy="allowlist" with empty allowFrom (silent DM drop; merged 2026-02-26) | — | ALREADY SYNCED |
| [#24907](https://github.com/openclaw/openclaw/pull/24907) | MERGED | docs | Make allowFrom id-only by default with dangerous name opt-in — hardening docs (merged 2026-02-24) | — | ALREADY SYNCED |
| [#23428](https://github.com/openclaw/openclaw/pull/23428) | MERGED | hardening | Security audit: add mDNS full mode + X-Real-IP fallback audit coverage (merged 2026-02-22) | — | ALREADY SYNCED |
| [#21618](https://github.com/openclaw/openclaw/pull/21618) | MERGED | security-fix | Fail closed on unauthenticated discovery routing (macOS; merged 2026-02-21) | — | ALREADY SYNCED |
| [#20703](https://github.com/openclaw/openclaw/pull/20703) | MERGED | security-fix | Device Token Scope Escalation via Rotate Endpoint (CVSS 8.1/8.6; merged 2026-02-20) | [#20702](https://github.com/openclaw/openclaw/issues/20702) | ALREADY SYNCED |
| [#20686](https://github.com/openclaw/openclaw/pull/20686) | MERGED | hardening | Gateway auth secure default: mode=token bootstrap, explicit mode:none opt-out, centralized startup auth (merged 2026-02-19) | — | ALREADY SYNCED |
| [#20684](https://github.com/openclaw/openclaw/pull/20684) | MERGED | security-fix | Control UI insecure auth bypass — token-only auth accepted over HTTP (merged 2026-02-20) | — | ALREADY SYNCED |
| [#19009](https://github.com/openclaw/openclaw/pull/19009) | MERGED | hardening | Add per-wrapper IDs to untrusted-content markers (merged 2026-02-21) | — | ALREADY SYNCED |
| [#18048](https://github.com/openclaw/openclaw/pull/18048) | MERGED | security-fix | OC-09: Credential theft via environment variable injection into sandbox (sanitize-env-vars.ts; merged 2026-02-16) | — | ALREADY SYNCED |
| [#16958](https://github.com/openclaw/openclaw/pull/16958) | MERGED | security-fix | Escape user input in HTML gallery to prevent stored XSS (CWE-79; CVSS 7.5; merged 2026-02-23) | [#12538](https://github.com/openclaw/openclaw/issues/12538) | ALREADY SYNCED |
| [#16928](https://github.com/openclaw/openclaw/pull/16928) | MERGED | security-fix | OC-07: Redact session history credentials and enforce Telegram webhook secret (merged 2026-02-22) | — | ALREADY SYNCED |
| [#15924](https://github.com/openclaw/openclaw/pull/15924) | MERGED | security-fix | OC-28: Prevent shell injection in macOS keychain credential write (CWE-78; execSync -> execFileSync; merged 2026-02-14) | — | ALREADY SYNCED |
| [#15940](https://github.com/openclaw/openclaw/pull/15940) | MERGED | hardening | Add trusted-proxy auth mode types and schema (delegated auth to reverse proxy; merged 2026-02-14) | [#1560](https://github.com/openclaw/openclaw/issues/1560) | ALREADY SYNCED |
| [#15848](https://github.com/openclaw/openclaw/pull/15848) | MERGED | hardening | Prune expired hook auth failure entries instead of clearing all rate-limit state (merged 2026-02-14; supersedes #15608) | — | ALREADY SYNCED |
| [#15652](https://github.com/openclaw/openclaw/pull/15652) | MERGED | hardening | Constrain browser trace/download output paths to OpenClaw temp roots (merged 2026-02-13) | — | ALREADY SYNCED |
| [#15604](https://github.com/openclaw/openclaw/pull/15604) | MERGED | security-fix | Block private/loopback/metadata IPs in link-understanding URL detection (SSRF hardening) | — | ALREADY SYNCED |
| [#15592](https://github.com/openclaw/openclaw/pull/15592) | MERGED | hardening | Sanitize and truncate untrusted WebSocket header values before logging (merged 2026-02-13) | — | ALREADY SYNCED |
| [#15390](https://github.com/openclaw/openclaw/pull/15390) | MERGED | security-fix | OC-02: Block `sessions_spawn` via HTTP gateway + fix ACP auto-approval (CVSS 9.8) | — | ALREADY SYNCED |
| [#15035](https://github.com/openclaw/openclaw/pull/15035) | MERGED | hardening | Auth rate-limiting & brute-force protection (CWE-307) | — | ALREADY SYNCED |
| [#14665](https://github.com/openclaw/openclaw/pull/14665) | MERGED | security-fix | Handle additional Unicode angle bracket homoglyphs in content sanitization | — | SYNC NEEDED |
| [#14661](https://github.com/openclaw/openclaw/pull/14661) | MERGED | hardening | Restrict canvas IP-based auth to private networks (merged 2026-02-13) | — | ALREADY SYNCED |
| [#14659](https://github.com/openclaw/openclaw/pull/14659) | MERGED | hardening | Add `--ignore-scripts` to skills install commands | — | ALREADY SYNCED |
| [#14218](https://github.com/openclaw/openclaw/pull/14218) | MERGED | security-fix | Antigravity thinking signature sanitization bypass via orphaned user-message repair | [#13765](https://github.com/openclaw/openclaw/issues/13765) | SYNC NEEDED |
| [#14029](https://github.com/openclaw/openclaw/pull/14029) | MERGED | security-fix | Pass Twilio stream auth token via `<Parameter>` instead of query string | — | ALREADY SYNCED |
| [#13787](https://github.com/openclaw/openclaw/pull/13787) | MERGED | security-fix | BlueBubbles webhook auth bypass via loopback proxy trust (CVSS 8.6) | [#13786](https://github.com/openclaw/openclaw/issues/13786) | SYNC NEEDED |
| [#13767](https://github.com/openclaw/openclaw/pull/13767) | MERGED | security-fix | Reject literal "undefined" and "null" gateway auth tokens (merged 2026-02-13) | [#13756](https://github.com/openclaw/openclaw/issues/13756) | ALREADY SYNCED |
| [#13474](https://github.com/openclaw/openclaw/pull/13474) | MERGED | hardening | Distinguish webhooks from internal hooks in audit summary | [#13466](https://github.com/openclaw/openclaw/issues/13466) | ALREADY SYNCED |
| [#13185](https://github.com/openclaw/openclaw/pull/13185) | MERGED | hardening | Sanitize error responses to prevent information leakage across gateway HTTP endpoints (merged 2026-02-13) | — | ALREADY SYNCED |
| [#13184](https://github.com/openclaw/openclaw/pull/13184) | MERGED | hardening | Default standalone servers (Telegram webhook, canvas host) to loopback bind (merged 2026-02-13) | — | ALREADY SYNCED |
| [#13182](https://github.com/openclaw/openclaw/pull/13182) | MERGED | hardening | Split oversized security audit files using dot-naming convention | — | ALREADY SYNCED |
| [#13129](https://github.com/openclaw/openclaw/pull/13129) | MERGED | hardening | Clarify dmScope remediation with explicit `openclaw config set` CLI command (merged 2026-02-13) | — | ALREADY SYNCED |
| [#13073](https://github.com/openclaw/openclaw/pull/13073) | MERGED | security-fix | Finish credential redaction that was merged unfinished | [#10090](https://github.com/openclaw/openclaw/issues/10090) | SYNC NEEDED |
| [#11093](https://github.com/openclaw/openclaw/pull/11093) | MERGED | security-fix | Add `sanitizeFilename()` to BlueBubbles attachments | [#10333](https://github.com/openclaw/openclaw/issues/10333) | SYNC NEEDED |
| [#10529](https://github.com/openclaw/openclaw/pull/10529) | MERGED | hardening | Enforce `0o600` permissions on WhatsApp credential files | — | ALREADY SYNCED |
| [#10525](https://github.com/openclaw/openclaw/pull/10525) | MERGED | hardening | Use `openFileWithinRoot` for A2UI file serving | — | ALREADY SYNCED |
| [#9518](https://github.com/openclaw/openclaw/pull/9518) | MERGED | security-fix | Add `authorizeCanvasRequest()` for canvas/A2UI auth | [#9517](https://github.com/openclaw/openclaw/issues/9517) | SYNC NEEDED |
| [#9436](https://github.com/openclaw/openclaw/pull/9436) | MERGED | security-fix | Remove query token acceptance from gateway hooks | [#9435](https://github.com/openclaw/openclaw/issues/9435), [#5120](https://github.com/openclaw/openclaw/issues/5120) | SYNC NEEDED |
| [#8241](https://github.com/openclaw/openclaw/pull/8241) | MERGED | hardening | Matrix thread session isolation | — | ALREADY SYNCED |
| [#4880](https://github.com/openclaw/openclaw/pull/4880) | MERGED | security-fix | Restrict local path extraction in media parser to prevent LFI | — | ALREADY SYNCED |
| [#4026](https://github.com/openclaw/openclaw/pull/4026) | MERGED | security-fix | Execute sandboxed file ops inside containers (symlink race fix) | — | SYNC NEEDED |
| [#2568](https://github.com/openclaw/openclaw/pull/2568) | MERGED | docs | Add formal verification page | — | ALREADY SYNCED |
| [#2016](https://github.com/openclaw/openclaw/pull/2016) | MERGED | enhancement | Add gateway network exposure check to `openclaw doctor` | [#2015](https://github.com/openclaw/openclaw/issues/2015) | ALREADY SYNCED |
| [#1795](https://github.com/openclaw/openclaw/pull/1795) | MERGED | security-fix | Prevent auth bypass when behind unconfigured reverse proxy | — | ALREADY SYNCED |
| [#9377](https://github.com/openclaw/openclaw/pull/9377) | MERGED | docs | Improve DM security guidance with concrete example | — | ALREADY SYNCED |
| [#7872](https://github.com/openclaw/openclaw/pull/7872) | MERGED | docs | Document secure DM mode preset | — | ALREADY SYNCED |

### CLOSED PRs (not merged)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#28091](https://github.com/openclaw/openclaw/pull/28091) | CLOSED | security-fix | Update transitive deps to resolve HIGH CVEs (closed 2026-02-27; superseded by #28281) | — | NOT AFFECTED |
| [#21755](https://github.com/openclaw/openclaw/pull/21755) | CLOSED | security-fix | Pad buffers to equal length in timingSafeEqual (closed 2026-02-27) | — | NOT AFFECTED |
| [#21671](https://github.com/openclaw/openclaw/pull/21671) | CLOSED | security-fix | Enforce auth on all plugin HTTP routes (closed 2026-02-27; #8513 still OPEN) | — | NOT AFFECTED |
| [#21669](https://github.com/openclaw/openclaw/pull/21669) | CLOSED | security-fix | Apply SSRF guard to Firecrawl fallback fetch path (closed 2026-02-27) | — | NOT AFFECTED |
| [#21560](https://github.com/openclaw/openclaw/pull/21560) | CLOSED | hardening | Sanitize invalid UTF-16 surrogates in session/prompt payloads (closed 2026-02-27) | — | NOT AFFECTED |
| [#21532](https://github.com/openclaw/openclaw/pull/21532) | CLOSED | hardening | Block signed webhook replay for voice calls (closed 2026-02-27) | — | NOT AFFECTED |
| [#21531](https://github.com/openclaw/openclaw/pull/21531) | CLOSED | hardening | Block signed webhook replay for Nextcloud, Google Chat, and LINE (closed 2026-02-27) | — | NOT AFFECTED |
| [#21522](https://github.com/openclaw/openclaw/pull/21522) | CLOSED | security-fix | Prevent memory exhaustion in MS Teams inline image decoding (closed 2026-02-27) | — | NOT AFFECTED |
| [#20856](https://github.com/openclaw/openclaw/pull/20855) | CLOSED | security-fix | Block prototype chain traversal in hook template resolution (closed 2026-02-27) | — | NOT AFFECTED |
| [#20656](https://github.com/openclaw/openclaw/pull/20656) | CLOSED | security-fix | Validate SQL identifiers in memory schema DDL (closed 2026-02-27) | — | NOT AFFECTED |
| [#20251](https://github.com/openclaw/openclaw/pull/20251) | CLOSED | hardening | Sanitize error messages to prevent internal details and PII leakage (closed 2026-02-27) | — | NOT AFFECTED |
| [#19942](https://github.com/openclaw/openclaw/pull/19942) | CLOSED | hardening | Configurable SSRF policy for Telegram media fetch (closed 2026-02-27; superseded by #28349) | — | NOT AFFECTED |
| [#19021](https://github.com/openclaw/openclaw/pull/19021) | CLOSED | security-fix | Reject path traversal in hook pack manifest entries during install (closed 2026-02-27) | — | NOT AFFECTED |
| [#18952](https://github.com/openclaw/openclaw/pull/18952) | CLOSED | security-fix | Sanitize schtasks env vars to prevent CRLF command injection (Windows) (closed 2026-02-27) | — | NOT AFFECTED |
| [#17182](https://github.com/openclaw/openclaw/pull/17182) | CLOSED | security-fix | LINE webhook fail closed when token/secret are missing (closed 2026-02-27; #17158 unresolved) | [#17158](https://github.com/openclaw/openclaw/issues/17158) | NOT AFFECTED |
| [#16961](https://github.com/openclaw/openclaw/pull/16961) | CLOSED | docs | Warn against storing secrets in injected workspace files (closed 2026-02-27) | — | NOT AFFECTED |
| [#16959](https://github.com/openclaw/openclaw/pull/16959) | CLOSED | security-fix | Prevent symlink and path traversal in skill packager (CWE-426; CVSS 7.7) (closed 2026-02-27; #12536 unresolved) | [#12536](https://github.com/openclaw/openclaw/issues/12536) | NOT AFFECTED |
| [#16929](https://github.com/openclaw/openclaw/pull/16929) | CLOSED | security-fix | Block access to sensitive directories (~/.openclaw/) from within sandbox (closed 2026-02-27; #8588 unresolved) | [#8588](https://github.com/openclaw/openclaw/issues/8588) | NOT AFFECTED |
| [#16907](https://github.com/openclaw/openclaw/pull/16907) | CLOSED | hardening | Detect obfuscated commands (base64, hex, variable expansion) that bypass allowlist filters (closed 2026-02-27; #8592 unresolved) | [#8592](https://github.com/openclaw/openclaw/issues/8592) | NOT AFFECTED |
| [#15756](https://github.com/openclaw/openclaw/pull/15756) | CLOSED | security-fix | Strip provider apiKey from models.json before prompt serialization (closed 2026-02-27) | — | NOT AFFECTED |
| [#15379](https://github.com/openclaw/openclaw/pull/15379) | CLOSED | hardening | Strip unsigned thinking blocks in agent loop via `transformContext` hook (closed 2026-02-27; still tracked as OPEN hardening for local gap) | [#13826](https://github.com/openclaw/openclaw/issues/13826) | NOT AFFECTED |
| [#14112](https://github.com/openclaw/openclaw/pull/14112) | CLOSED | hardening | Test verifying `--ignore-scripts` blocks postinstall execution in plugin archive install (closed 2026-02-27) | [#13132](https://github.com/openclaw/openclaw/issues/13132) | NOT AFFECTED |
| [#13777](https://github.com/openclaw/openclaw/pull/13777) | CLOSED | security-fix | Redact sensitive values in CLI `config get` output (closed 2026-02-27; #13683 unresolved) | [#13683](https://github.com/openclaw/openclaw/issues/13683) | NOT AFFECTED |
| [#13275](https://github.com/openclaw/openclaw/pull/13275) | CLOSED | security-fix | SSRF guard bypassed by IPv4-compatible IPv6 addresses (`::127.0.0.1`) (closed 2026-02-27) | — | NOT AFFECTED |
| [#13169](https://github.com/openclaw/openclaw/pull/13169) | CLOSED | hardening | Add `--ignore-scripts` to npm install during plugin/hook installation (closed 2026-02-27) | — | NOT AFFECTED |
| [#13090](https://github.com/openclaw/openclaw/pull/13090) | CLOSED | security-fix | Device-pair extension leaks gateway credentials in chat messages (closed 2026-02-27) | — | NOT AFFECTED |
| [#12260](https://github.com/openclaw/openclaw/pull/12260) | CLOSED | hardening | Redact secrets in tool results before persisting to session transcript (closed 2026-02-27; #5995 unresolved) | [#5995](https://github.com/openclaw/openclaw/issues/5995) | NOT AFFECTED |
| [#12174](https://github.com/openclaw/openclaw/pull/12174) | CLOSED | hardening | Add path containment check in `apply_patch` for non-sandboxed mode (closed 2026-02-27) | — | NOT AFFECTED |
| [#11439](https://github.com/openclaw/openclaw/pull/11439) | CLOSED | hardening | Warn on relative `OPENCLAW_CONFIG_PATH` + disable config-origin plugin auto-enable (closed 2026-02-27; #11431 unresolved) | [#11431](https://github.com/openclaw/openclaw/issues/11431) | NOT AFFECTED |
| [#11435](https://github.com/openclaw/openclaw/pull/11435) | CLOSED | security-fix | Validate `OPENCLAW_BROWSER_CONTROL_MODULE` before dynamic import (closed 2026-02-27; #11437 unresolved) | [#11437](https://github.com/openclaw/openclaw/issues/11437) | NOT AFFECTED |
| [#11432](https://github.com/openclaw/openclaw/pull/11432) | CLOSED | hardening | Add `--ignore-scripts` to npm install in hook/plugin installers (closed 2026-02-27; #11434 unresolved) | [#11434](https://github.com/openclaw/openclaw/issues/11434) | NOT AFFECTED |
| [#11169](https://github.com/openclaw/openclaw/pull/11169) | CLOSED | security-fix | Remove bundled soul-evil hook that enables silent agent hijacking (closed 2026-02-27; #8776 unresolved) | [#8776](https://github.com/openclaw/openclaw/issues/8776) | NOT AFFECTED |
| [#11054](https://github.com/openclaw/openclaw/pull/11054) | CLOSED | security-fix | Add auth token to sandbox browser bridge (closed 2026-02-27; #6609 unresolved) | [#6609](https://github.com/openclaw/openclaw/issues/6609) | NOT AFFECTED |
| [#10257](https://github.com/openclaw/openclaw/pull/10257) | CLOSED | security-fix | Anchor MIME sanitization regex and block fullwidth bypass (closed 2026-02-27) | — | NOT AFFECTED |
| [#9529](https://github.com/openclaw/openclaw/pull/9529) | CLOSED | security-fix | Validate archive entries against path traversal (Zip Slip) (closed 2026-02-27; #7616 still OPEN) | [#3277](https://github.com/openclaw/openclaw/issues/3277) | NOT AFFECTED |
| [#8718](https://github.com/openclaw/openclaw/pull/8718) | CLOSED | security-fix | Sanitize download filenames to prevent path traversal (CWE-22) (closed 2026-02-27; #8696 unresolved) | [#8696](https://github.com/openclaw/openclaw/issues/8696) | NOT AFFECTED |
| [#5401](https://github.com/openclaw/openclaw/pull/5401) | CLOSED | security-fix | Detect audio binary by magic bytes to prevent context injection (closed 2026-02-27) | — | NOT AFFECTED |
| [#2544](https://github.com/openclaw/openclaw/pull/2544) | CLOSED | security-fix | XSS vulnerability in Canvas Host (closed 2026-02-27) | — | NOT AFFECTED |
| [#16967](https://github.com/openclaw/openclaw/pull/16967) | CLOSED | security-fix | OC-19: Sanitize CWD path injection in LLM system prompts (closed 2026-02-16-20; no replacement tracked) | — | NOT AFFECTED |
| [#16965](https://github.com/openclaw/openclaw/pull/16965) | CLOSED | security-fix | Validate tool access against Docker bind mounts (closed 2026-02-16-20; #21665 covers bind-mount denylist) | [#16379](https://github.com/openclaw/openclaw/issues/16379) | NOT AFFECTED |
| [#16947](https://github.com/openclaw/openclaw/pull/16947) | CLOSED | security-fix | OC-13: Block dangerous Docker sandbox configs (closed 2026-02-16-20; Feb 20 security sprint adds targeted fixes) | — | NOT AFFECTED |
| [#16036](https://github.com/openclaw/openclaw/pull/16036) | CLOSED | hardening | Session transcript 0o600 permissions CWE-732 (closed 2026-02-16-20; local code still uses 0o644 defaults) | [#8751](https://github.com/openclaw/openclaw/issues/8751) | NOT AFFECTED |
| [#15608](https://github.com/openclaw/openclaw/pull/15608) | CLOSED | hardening | Prune expired hook auth failure entries (closed 2026-02-14; superseded by #15848 MERGED) | — | NOT AFFECTED |
| [#15384](https://github.com/openclaw/openclaw/pull/15384) | CLOSED | security-fix | OC-01: Validate `setupCommand` to prevent shell injection (CWE-78) (closed 2026-02-13; #8186 still OPEN) | — | NOT AFFECTED |
| [#15360](https://github.com/openclaw/openclaw/pull/15360) | CLOSED | hardening | Prevent subagent announce from leaking internal prompts and stats (closed 2026-02-16-20; issue #6669 unresolved) | [#6669](https://github.com/openclaw/openclaw/issues/6669) | NOT AFFECTED |
| [#15314](https://github.com/openclaw/openclaw/pull/15314) | CLOSED | security-fix | Arbitrary Code Execution via Browser Evaluate Endpoint (closed 2026-02-13; #3926 still OPEN) | [#15313](https://github.com/openclaw/openclaw/issues/15313) | NOT AFFECTED |
| [#14843](https://github.com/openclaw/openclaw/pull/14843) | CLOSED | security-fix | Strip `apiKey` from `models.json` cache to prevent credential exposure (closed: author banned) | [#14808](https://github.com/openclaw/openclaw/issues/14808) | NOT AFFECTED |
| [#14814](https://github.com/openclaw/openclaw/pull/14814) | CLOSED | hardening | Timing-safe hook token comparison (closed 2026-02-16-20; #21755 CLOSED) | — | NOT AFFECTED |
| [#14662](https://github.com/openclaw/openclaw/pull/14662) | CLOSED | security-fix | Escape `<` in inline JSON to prevent script tag XSS (closed 2026-02-16-20; XSS in control-ui still unpatched locally) | — | NOT AFFECTED |
| [#14655](https://github.com/openclaw/openclaw/pull/14655) | CLOSED | hardening | Allow trusted clients to request unredacted config via `includeSecrets` (closed: author banned) | [#14586](https://github.com/openclaw/openclaw/issues/14586) | NOT AFFECTED |
| [#14512](https://github.com/openclaw/openclaw/pull/14512) | CLOSED | hardening | Allow Docker bridge connections to extension relay via `OPENCLAW_RELAY_ALLOW_PRIVATE` (closed: author banned) | [#14433](https://github.com/openclaw/openclaw/issues/14433) | NOT AFFECTED |
| [#14350](https://github.com/openclaw/openclaw/pull/14350) | CLOSED | hardening | Add `--harden` CLI flag for security-hardened gateway mode (closed 2026-02-13; no replacement) | — | NOT AFFECTED |
| [#13876](https://github.com/openclaw/openclaw/pull/13876) | CLOSED | hardening | Auth & security enhancements umbrella — CLI sync, guard models, config protection (closed 2026-02-16-20) | [#13196](https://github.com/openclaw/openclaw/issues/13196), [#13236](https://github.com/openclaw/openclaw/issues/13236) | NOT AFFECTED |
| [#13680](https://github.com/openclaw/openclaw/pull/13680) | CLOSED | hardening | Per-IP rate limiting for gateway auth (closed 2026-02-13; superseded by #15035 MERGED) | — | NOT AFFECTED |
| [#13293](https://github.com/openclaw/openclaw/pull/13293) | CLOSED | hardening | Block tainted sink calls from untrusted tool outputs (closed 2026-02-15) | — | NOT AFFECTED |
| [#13290](https://github.com/openclaw/openclaw/pull/13290) | CLOSED | docs | Warn against storing secrets in workspace files (closed 2026-02-15; superseded by #16961) | — | NOT AFFECTED |
| [#13198](https://github.com/openclaw/openclaw/pull/13198) | CLOSED | security-fix | External content marker Unicode homoglyph bypass (closed 2026-02-16-20; #19675 covers zero-width Unicode bypass) | — | NOT AFFECTED |
| [#13183](https://github.com/openclaw/openclaw/pull/13183) | CLOSED | security-fix | Use execFileSync instead of execSync in daemon (closed 2026-02-16-20; shell injection fix without replacement) | — | NOT AFFECTED |
| [#13170](https://github.com/openclaw/openclaw/pull/13170) | CLOSED | hardening | Enforce webhookSecret at runtime for Telegram webhook mode (closed 2026-02-16-20; #13521 still OPEN) | [#6606](https://github.com/openclaw/openclaw/issues/6606) | NOT AFFECTED |
| [#13117](https://github.com/openclaw/openclaw/pull/13117) | CLOSED | security-fix | Telegram webhook allows unauthenticated update injection (closed 2026-02-16-20; issue #6606 still tracked via #13521) | [#6606](https://github.com/openclaw/openclaw/issues/6606) | NOT AFFECTED |
| [#12351](https://github.com/openclaw/openclaw/pull/12351) | CLOSED | hardening | Harden A2A announce target resolution + DNS rebinding defense (closed 2026-02-16-20; no replacement) | — | NOT AFFECTED |
| [#11742](https://github.com/openclaw/openclaw/pull/11742) | CLOSED | security-fix | Remove loopback auth bypass in BlueBubbles webhook handler (closed 2026-02-16-20; no replacement) | — | NOT AFFECTED |
| [#11152](https://github.com/openclaw/openclaw/pull/11152) | CLOSED | security-fix | Add `place_id` validation to prevent path traversal SSRF (closed 2026-02-13; no replacement) | — | NOT AFFECTED |
| [#11119](https://github.com/openclaw/openclaw/pull/11119) | CLOSED | enhancement | Prompt injection defense: instruction signing + model verify gates (closed 2026-02-16-20; was DRAFT, no replacement) | — | NOT AFFECTED |
| [#9513](https://github.com/openclaw/openclaw/pull/9513) | CLOSED | security-fix | Skill download archive path traversal checks (closed 2026-02-15; #9529 CLOSED, #7616 still OPEN) | [#9512](https://github.com/openclaw/openclaw/issues/9512) | NOT AFFECTED |
| [#8757](https://github.com/openclaw/openclaw/pull/8757) | CLOSED | security-fix | Validate redirect destinations to prevent SSRF via open redirect (MS Teams) (closed 2026-02-13) | — | NOT AFFECTED |
| [#8604](https://github.com/openclaw/openclaw/pull/8604) | CLOSED | security-fix | Unauthenticated Nostr profile endpoints allow remote profile takeover (closed 2026-02-15) | — | NOT AFFECTED |
| [#3926](https://github.com/openclaw/openclaw/pull/3926) | CLOSED | security-fix | Disable browser.evaluateEnabled by default (closed 2026-02-16-20; ACE via browser evaluate still possible locally) | — | NOT AFFECTED |
| [#2580](https://github.com/openclaw/openclaw/pull/2580) | CLOSED | security-fix | SSRF, path traversal, shell injection, rate limiting umbrella (closed 2026-02-16-20; superseded by targeted fixes) | — | NOT AFFECTED |

**Total:** 195 tracked PRs (45 merged, 80 open, 1 draft, 69 closed)

> **Status change log (27-02-2026 17:06 AEST):** 43 state changes detected. **6 OPEN → MERGED** (all ALREADY SYNCED): #16928 (OC-07 credential redaction, 2026-02-22), #16958 (XSS HTML gallery, 2026-02-23), #19009 (per-wrapper IDs, 2026-02-21), #20684 (Control UI auth bypass, 2026-02-20), #20703 (device token scope escalation CVSS 8.1/8.6, 2026-02-20), #21618 (macOS discovery fail-closed, 2026-02-21). **37 OPEN → CLOSED** (massive security sprint cleanup): #2544, #5401, #8718, #9529, #10257, #11054, #11169, #11432, #11435, #11439, #12174, #12260, #13090, #13169, #13275, #13777, #14112, #15379, #15756, #16907, #16929, #16959, #16961, #17182, #18952, #19021, #19942, #20251, #20656, #20855, #21522, #21531, #21532, #21560, #21669, #21671, #21755. **21 new PRs added**: 17 OPEN (#28349, #28341, #28281, #28272, #28243, #28241, #28239, #28238, #28205, #28114, #28113, #28093, #28301, #27993, #27991, #27818, #27718) + 3 MERGED (#27936 ALREADY SYNCED, #23428 ALREADY SYNCED, #24907 ALREADY SYNCED) + 1 CLOSED (#28091 superseded). 1 pre-existing SYNC NEEDED: #21665 (bind-mount denylist still OPEN). gh CLI auth unavailable — used curl + GraphQL directly.
>
> **Status change log (20-02-2026 20:20 AEST):** 17 state changes detected. #2580 OPEN->CLOSED, #3926 OPEN->CLOSED (browser evaluateEnabled; vulnerability remains), #11119 DRAFT->CLOSED, #11742 OPEN->CLOSED, #12351 OPEN->CLOSED, #13117 OPEN->CLOSED (Telegram webhook; #13521 still tracks fix), #13170 OPEN->CLOSED, #13183 OPEN->CLOSED, #13198 OPEN->CLOSED (#19675 covers related fix), #13876 OPEN->CLOSED, #14662 OPEN->CLOSED, #14814 OPEN->CLOSED (#21755 CLOSED), #15360 OPEN->CLOSED, #16036 OPEN->CLOSED, #16947 OPEN->CLOSED, #16965 OPEN->CLOSED (#21665 covers bind-mount denylist), #16967 OPEN->CLOSED. 49 new PRs added: #18048 MERGED (OC-09 env var credential theft, ALREADY SYNCED), #20686 MERGED (gateway auth secure default, ALREADY SYNCED), plus 47 OPEN security PRs from Feb 16-20 security sprint. 1 sync action needed: #21665 (bind-mount denylist missing /home and /Users).
>
> **Status change log (16-02-2026 02:49 AEST):** 6 state changes detected. #15924 OPEN->MERGED (ALREADY SYNCED), #15940 OPEN->MERGED (ALREADY SYNCED), #8604 OPEN->CLOSED, #9513 OPEN->CLOSED, #13290 OPEN->CLOSED (superseded by #16961), #13293 OPEN->CLOSED. 15 new PRs added: #16898, #16907, #16928, #16929, #16936, #16947, #16958, #16959, #16961, #16963, #16965, #16967, #16990, #16992, #17182.
>
> **Status change log (14-02-2026 16:13 AEST):** 0 state changes detected. 1 new PR added: #16036 (OPEN hardening, session transcript file permissions CWE-732).
>
> **Status change log (14-02-2026 14:08 AEST):** 0 state changes detected. 2 new PRs added: #15924 (OPEN security-fix, macOS keychain shell injection CWE-78), #15940 (OPEN hardening, trusted-proxy auth mode).
>
> **Status change log (14-02-2026 11:36 AEST):** 1 state change detected. #15608 OPEN->CLOSED (superseded by #15848). 1 new PR added: #15848 (MERGED hardening, prune hook auth failure state, ALREADY SYNCED).
>
> **Status change log (14-02-2026 06:04 AEST):** 1 state change detected. #15652 OPEN->MERGED (ALREADY SYNCED). No new PRs added (#15734 assessed as feature addition, not tracked).
>
> **Status change log (14-02-2026 03:12 AEST):** 6 state changes detected. #13129 OPEN->MERGED, #13184 OPEN->MERGED, #13185 OPEN->MERGED, #13767 OPEN->MERGED, #14661 OPEN->MERGED (all ALREADY SYNCED). #14350 OPEN->CLOSED (no replacement). 1 new PR added: #15592 (WebSocket log header sanitization, OPEN).
>
> **Status change log (14-02-2026 01:33 AEST):** 7 state changes detected. #15390 OPEN->MERGED, #14665 OPEN->MERGED, #13073 OPEN->MERGED, #15384 OPEN->CLOSED, #15314 OPEN->CLOSED, #13680 OPEN->CLOSED (superseded by #15035), #11152 OPEN->CLOSED. 5 new PRs added: #15035, #10525, #10529, #4026 (newly merged security PRs), #3926 (replacement for closed #15314).

### Cross-Reference: PRs and Tracked Issues

| PR # | Fixes Issue(s) | Issue Severity | PR Status | Notes |
|------|---------------|----------------|-----------|-------|
| [#1795](https://github.com/openclaw/openclaw/pull/1795) | (unconfigured proxy bypass) | HIGH | MERGED | Fail-secure proxy detection in `isLocalDirectRequest()` at `src/gateway/auth.ts:125-146` |
| [#2016](https://github.com/openclaw/openclaw/pull/2016) | [#2015](https://github.com/openclaw/openclaw/issues/2015) | HIGH | MERGED | `noteSecurityWarnings()` at `src/commands/doctor-security.ts:13` checks gateway bind + auth |
| [#4880](https://github.com/openclaw/openclaw/pull/4880) | (LFI via MEDIA tokens) | HIGH | MERGED | `isValidMedia()` at `src/media/parse.ts:36-64` accepts all path types; LFI guard moved to `assertLocalMediaAllowed()` at `src/web/media.ts:81-138` |
| [#7616](https://github.com/openclaw/openclaw/pull/7616) | [#3277](https://github.com/openclaw/openclaw/issues/3277) (HIGH) | HIGH | OPEN | Harden zip extraction against path traversal |
| [#8241](https://github.com/openclaw/openclaw/pull/8241) | (Matrix thread isolation) | MEDIUM | MERGED | `:thread:${threadRootId}` suffix at `extensions/matrix/src/matrix/monitor/handler.ts:445-447` |
| [#8513](https://github.com/openclaw/openclaw/pull/8513) | [#8512](https://github.com/openclaw/openclaw/issues/8512) (CRITICAL) | CRITICAL | OPEN | Adds auth requirement for plugin HTTP routes in gateway |
| [#9436](https://github.com/openclaw/openclaw/pull/9436) | [#9435](https://github.com/openclaw/openclaw/issues/9435) (HIGH), [#5120](https://github.com/openclaw/openclaw/issues/5120) (MEDIUM) | HIGH | MERGED | Query token acceptance removed from `extractHookToken()` in `src/gateway/hooks.ts`; server returns HTTP 400 when `?token=` present |
| [#9518](https://github.com/openclaw/openclaw/pull/9518) | [#9517](https://github.com/openclaw/openclaw/issues/9517) (HIGH) | HIGH | MERGED | `authorizeCanvasRequest()` at `src/gateway/server/http-auth.ts:58` wraps canvas/A2UI endpoints (was `server-http.ts:124-172` before Mar 3 sync 3) |
| [#11054](https://github.com/openclaw/openclaw/pull/11054) | [#6609](https://github.com/openclaw/openclaw/issues/6609) (HIGH) | HIGH | CLOSED | Auth token for sandbox browser bridge — closed 2026-02-27; issue unresolved |
| [#11093](https://github.com/openclaw/openclaw/pull/11093) | [#10333](https://github.com/openclaw/openclaw/issues/10333) (MEDIUM) | MEDIUM | MERGED | `sanitizeFilename()` at `extensions/bluebubbles/src/attachments.ts:33` strips dangerous chars from Content-Disposition filenames |
| [#11169](https://github.com/openclaw/openclaw/pull/11169) | [#8776](https://github.com/openclaw/openclaw/issues/8776) (HIGH) | HIGH | CLOSED | Remove soul-evil hook — closed 2026-02-27; issue unresolved |
| [#11435](https://github.com/openclaw/openclaw/pull/11435) | [#11437](https://github.com/openclaw/openclaw/issues/11437) (CRITICAL) | CRITICAL | CLOSED | Validate OPENCLAW_BROWSER_CONTROL_MODULE before dynamic import — closed 2026-02-27; issue unresolved |
| [#11432](https://github.com/openclaw/openclaw/pull/11432) | [#11434](https://github.com/openclaw/openclaw/issues/11434) (HIGH) | HIGH | CLOSED | --ignore-scripts for npm install — closed 2026-02-27; issue unresolved |
| [#11439](https://github.com/openclaw/openclaw/pull/11439) | [#11431](https://github.com/openclaw/openclaw/issues/11431) (HIGH) | HIGH | CLOSED | Warn on relative OPENCLAW_CONFIG_PATH — closed 2026-02-27; issue unresolved |
| [#12260](https://github.com/openclaw/openclaw/pull/12260) | [#5995](https://github.com/openclaw/openclaw/issues/5995) (HIGH) | HIGH | CLOSED | Redact secrets from tool results — closed 2026-02-27; issue unresolved |
| [#13117](https://github.com/openclaw/openclaw/pull/13117) | [#6606](https://github.com/openclaw/openclaw/issues/6606) (HIGH) | HIGH | CLOSED | Enforces webhook auth for Telegram (closed 2026-02-20; #13521 still OPEN) |
| [#13170](https://github.com/openclaw/openclaw/pull/13170) | [#6606](https://github.com/openclaw/openclaw/issues/6606) (HIGH) | HIGH | CLOSED | Enforces `webhookSecret` at runtime for Telegram webhook (closed 2026-02-20; #13521 still OPEN) |
| [#13182](https://github.com/openclaw/openclaw/pull/13182) | (refactor) | LOW | MERGED | Barrel re-export at `src/security/audit-extra.ts` → `.sync.ts` + `.async.ts` |
| [#13521](https://github.com/openclaw/openclaw/pull/13521) | [#13116](https://github.com/openclaw/openclaw/issues/13116) (HIGH) | HIGH | OPEN | Fail-close webhook secret enforcement; related to #13170 and #13117 |
| [#13474](https://github.com/openclaw/openclaw/pull/13474) | [#13466](https://github.com/openclaw/openclaw/issues/13466) (LOW) | LOW | MERGED | Split `hooks:` → `hooks.webhooks:` + `hooks.internal:` at `audit-extra.sync.ts:488-490`; merged 2026-02-13; ALREADY SYNCED |
| [#8718](https://github.com/openclaw/openclaw/pull/8718) | [#8696](https://github.com/openclaw/openclaw/issues/8696) (HIGH) | HIGH | CLOSED | Sanitizes download filenames CWE-22 — closed 2026-02-27; issue unresolved |
| [#13787](https://github.com/openclaw/openclaw/pull/13787) | [#13786](https://github.com/openclaw/openclaw/issues/13786) (HIGH) | HIGH | MERGED | Loopback bypass in BlueBubbles webhook auth (CVSS 8.6); related to #11742; merged 2026-02-12 |
| [#13777](https://github.com/openclaw/openclaw/pull/13777) | [#13683](https://github.com/openclaw/openclaw/issues/13683) (HIGH) | HIGH | CLOSED | CLI `config get` credential exfil — closed 2026-02-27; issue unresolved |
| [#13767](https://github.com/openclaw/openclaw/pull/13767) | [#13756](https://github.com/openclaw/openclaw/issues/13756) (MEDIUM) | MEDIUM | MERGED | `normalizeGatewayTokenInput()` rejects "undefined"/"null" strings; merged 2026-02-13; ALREADY SYNCED |
| [#13876](https://github.com/openclaw/openclaw/pull/13876) | [#13196](https://github.com/openclaw/openclaw/issues/13196), [#13236](https://github.com/openclaw/openclaw/issues/13236) | HIGH | CLOSED | CLI credential sync + config redaction umbrella (closed 2026-02-20; issues still tracked) |
| [#14029](https://github.com/openclaw/openclaw/pull/14029) | (token leakage in URL) | MEDIUM | MERGED | Twilio stream auth token via `<Parameter>` instead of query string; merged 2026-02-12; ALREADY SYNCED |
| [#14222](https://github.com/openclaw/openclaw/pull/14222) | (maintainer feedback on #8727) | MEDIUM | OPEN | Core `before_tool_call` hook extended with `needsApproval`; AgentShield moved to extension with encrypted approval store |
| [#14197](https://github.com/openclaw/openclaw/pull/14197) | (Codex CLI audit) | MEDIUM | OPEN | Shared `safeEqual()`, browser API auth (30+ unauthenticated endpoints), 7 timing-unsafe token comparisons, `hooks.allowQueryToken` deprecation |
| [#14061](https://github.com/openclaw/openclaw/pull/14061) | (Docker auth bypass) | HIGH | OPEN | Container on same Docker network can spoof `Host: localhost` to bypass `isLocalDirectRequest()` — adds `readDockerGatewayIp()` client IP verification |
| [#14218](https://github.com/openclaw/openclaw/pull/14218) | [#13765](https://github.com/openclaw/openclaw/issues/13765) | LOW | MERGED | Thinking block sanitization bypass via orphaned user-message repair path in `attempt.ts`; merged 2026-02-12 |
| [#14843](https://github.com/openclaw/openclaw/pull/14843) | [#14808](https://github.com/openclaw/openclaw/issues/14808) | MEDIUM | CLOSED | `apiKey` credential exposure in `models.json` cache; author banned; related issue tracked |
| [#14665](https://github.com/openclaw/openclaw/pull/14665) | (homoglyph bypass) | MEDIUM | MERGED | `ANGLE_BRACKET_MAP` adds 10 Unicode homoglyphs to `foldMarkerChar()`; merged 2026-02-13; local code missing these -- SYNC NEEDED |
| [#14662](https://github.com/openclaw/openclaw/pull/14662) | (XSS in control UI) | MEDIUM | CLOSED | `JSON.stringify` in `<script>` tag at `control-ui.ts:173-179` does not escape `<` (closed 2026-02-20; XSS unfixed locally) |
| [#14661](https://github.com/openclaw/openclaw/pull/14661) | (canvas IP auth) | MEDIUM | MERGED | Canvas IP auth restricted to private networks; merged 2026-02-13; ALREADY SYNCED |
| [#14655](https://github.com/openclaw/openclaw/pull/14655) | [#14586](https://github.com/openclaw/openclaw/issues/14586) | LOW | CLOSED | `includeSecrets` for config.get; author banned; no replacement PR identified |
| [#14814](https://github.com/openclaw/openclaw/pull/14814) | (timing attack) | LOW | CLOSED | Hook token timing-safe comparison (closed 2026-02-20; #21755 CLOSED) |
| [#14098](https://github.com/openclaw/openclaw/pull/14098) | (tool-call JSON leak) | LOW | OPEN | `stripJsonToolCallText()` prevents Ollama/local providers from leaking raw tool-call JSON to user surfaces |
| [#14350](https://github.com/openclaw/openclaw/pull/14350) | (security hardening CLI) | MEDIUM | CLOSED | `--harden` flag closed without merge 2026-02-13; no replacement PR |
| [#14318](https://github.com/openclaw/openclaw/pull/14318) | (outbound channel control) | MEDIUM | OPEN | `enforceOutboundAllowlist()` blocks Discord sends to non-allowed channels; local `send.outbound.ts` has zero guards |
| [#14689](https://github.com/openclaw/openclaw/pull/14689) | [#14688](https://github.com/openclaw/openclaw/issues/14688) | LOW | OPEN | Auto-set `per-channel-peer` dmScope during multi-channel onboarding; Greptile flags multi-account channels need `per-account-channel-peer` |
| [#14512](https://github.com/openclaw/openclaw/pull/14512) | [#14433](https://github.com/openclaw/openclaw/issues/14433) | LOW | CLOSED | Author banned; `isPrivateNetworkAddress()` for Docker bridge relay needs re-implementation |
| [#14224](https://github.com/openclaw/openclaw/pull/14224) | (admin enumeration) | LOW | OPEN | Telegram `getChatAdministrators` action — gate inconsistency may default to enabled |
| [#14112](https://github.com/openclaw/openclaw/pull/14112) | [#13132](https://github.com/openclaw/openclaw/issues/13132) | MEDIUM | CLOSED | Integration test for --ignore-scripts — closed 2026-02-27 |
| [#13737](https://github.com/openclaw/openclaw/pull/13737) | (Docker privilege hardening) | LOW | OPEN | UID/GID remap in Dockerfile; Greptile flags GID collision not detected (silently reuses existing group) |
| [#15390](https://github.com/openclaw/openclaw/pull/15390) | (OC-02 RCE via HTTP gateway) | CRITICAL | MERGED | `DEFAULT_GATEWAY_HTTP_TOOL_DENY` at `tools-invoke-http.ts:43-52` blocks sessions_spawn + 3 others; merged 2026-02-13; ALREADY SYNCED |
| [#15384](https://github.com/openclaw/openclaw/pull/15384) | (OC-01 shell injection) | CRITICAL | CLOSED | Closed 2026-02-13; #8186 still OPEN with same fix; local `docker.ts:471-472` still vulnerable |
| [#15314](https://github.com/openclaw/openclaw/pull/15314) | [#15313](https://github.com/openclaw/openclaw/issues/15313) (HIGH) | HIGH | CLOSED | Closed 2026-02-13; #3926 CLOSED; local `DEFAULT_BROWSER_EVALUATE_ENABLED` still true |
| [#13073](https://github.com/openclaw/openclaw/pull/13073) | [#10090](https://github.com/openclaw/openclaw/issues/10090) (HIGH) | HIGH | MERGED | Credential redaction completion; `zod-schema.sensitive.ts` and schema hint updates; merged 2026-02-13; SYNC NEEDED |
| [#4026](https://github.com/openclaw/openclaw/pull/4026) | (symlink race) | HIGH | MERGED | `SandboxFsBridge` routes file ops through `docker exec`; merged 2026-02-13; SYNC NEEDED |
| [#15035](https://github.com/openclaw/openclaw/pull/15035) | (CWE-307 brute force) | MEDIUM | MERGED | `AuthRateLimiter` at `src/gateway/auth-rate-limit.ts`; merged 2026-02-13; ALREADY SYNCED |
| [#10525](https://github.com/openclaw/openclaw/pull/10525) | (A2UI path traversal) | MEDIUM | MERGED | `openFileWithinRoot()` at `a2ui.ts:75`; merged 2026-02-13; ALREADY SYNCED |
| [#10529](https://github.com/openclaw/openclaw/pull/10529) | (WhatsApp cred perms) | MEDIUM | MERGED | `0o600` chmod at `auth-store.ts:72`, `session.ts:77,91`; merged 2026-02-13; ALREADY SYNCED |
| [#15379](https://github.com/openclaw/openclaw/pull/15379) | [#13826](https://github.com/openclaw/openclaw/issues/13826) | LOW | CLOSED | Strip unsigned thinking blocks (closed 2026-02-27; sanitization only at session load, gap remains) |
| [#15296](https://github.com/openclaw/openclaw/pull/15296) | (config secret hardening) | MEDIUM | OPEN | No `--show-secrets` opt-in for CLI `config get`; gateway `config.get` returns unredacted by default |
| [#13129](https://github.com/openclaw/openclaw/pull/13129) | (dmScope UX) | LOW | MERGED | Uses `formatCliCommand()` for dmScope remediation; local `audit.ts:595` already uses it; ALREADY SYNCED |
| [#20703](https://github.com/openclaw/openclaw/pull/20703) | [#20702](https://github.com/openclaw/openclaw/issues/20702) | HIGH | MERGED | Device token scope escalation fix: `scopesAllow()` in `device-pairing.ts:184-192`; merged 2026-02-20; ALREADY SYNCED |
| [#20684](https://github.com/openclaw/openclaw/pull/20684) | (Control UI auth bypass) | HIGH | MERGED | `gateway.control_ui.insecure_auth` audit check at `audit.ts:435-437`; merged 2026-02-20; ALREADY SYNCED |
| [#21618](https://github.com/openclaw/openclaw/pull/21618) | (macOS discovery fail-closed) | MEDIUM | MERGED | `GatewayDiscoveryHelpers.swift:51` security comment; merged 2026-02-21; ALREADY SYNCED |
| [#19009](https://github.com/openclaw/openclaw/pull/19009) | (untrusted content spoofing) | MEDIUM | MERGED | `external-content.ts:48-63` per-wrapper random IDs; merged 2026-02-21; ALREADY SYNCED |
| [#16928](https://github.com/openclaw/openclaw/pull/16928) | (OC-07 credential leak) | HIGH | MERGED | `sessions-history-tool.ts:37` redactSensitiveText call; merged 2026-02-22; ALREADY SYNCED |
| [#16958](https://github.com/openclaw/openclaw/pull/16958) | [#12538](https://github.com/openclaw/openclaw/issues/12538) | MEDIUM | MERGED | `skills/openai-image-gen/scripts/gen.py:135-136` html_escape; merged 2026-02-23; ALREADY SYNCED |
| [#27936](https://github.com/openclaw/openclaw/pull/27936) | (dmPolicy empty allowFrom) | MEDIUM | MERGED | `zod-schema.core.ts:515-516` validates non-empty allowFrom; merged 2026-02-26; ALREADY SYNCED |
| [#28272](https://github.com/openclaw/openclaw/pull/28272) | (TOCTOU in file write) | HIGH | OPEN | `agents.ts:705-706` writeFileWithinRoot uses workspaceDir not workspaceReal; fix not merged yet |
| [#28281](https://github.com/openclaw/openclaw/pull/28281) | (CVE-2026-27699 basic-ftp) | HIGH | OPEN | `package.json:242` only has fast-xml-parser 5.3.6; needs 5.3.8 + basic-ftp CVE fix |
| [#28114](https://github.com/openclaw/openclaw/pull/28114) | [#21573](https://github.com/openclaw/openclaw/issues/21573) | HIGH | OPEN | Reject placeholder secrets before config write; fix not merged yet |
| [#28093](https://github.com/openclaw/openclaw/pull/28093) | [#25963](https://github.com/openclaw/openclaw/issues/25963) | HIGH | OPEN | Agent access control in group chats; fix not merged yet |
