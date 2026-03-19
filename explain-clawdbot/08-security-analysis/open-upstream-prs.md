> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [ClawJacked](./clawjacked-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Open Upstream Security Pull Requests

> **Status:** These PRs in upstream openclaw/openclaw fix or harden security-related code. Monitor merge status and sync locally when merged.
>
> **Last checked:** 19-03-2026 (20:58 AEST)

### OPEN/DRAFT PRs (monitor for merge)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#50365](https://github.com/openclaw/openclaw/pull/50365) | OPEN | security-fix | Prevent NO_REPLY token leakage during streaming in server-chat | — | OPEN/PENDING |
| [#50320](https://github.com/openclaw/openclaw/pull/50320) | OPEN | security-fix | Fix priority regressions in export attachments auth and denyCommands | — | OPEN/PENDING |
| [#50181](https://github.com/openclaw/openclaw/pull/50181) | OPEN | security-fix | Close media trust bypasses | — | OPEN/PENDING |
| [#50180](https://github.com/openclaw/openclaw/pull/50180) | OPEN | security-fix | Honor empty URL allowlists as deny-all in SSRF policy | — | OPEN/PENDING |
| [#50171](https://github.com/openclaw/openclaw/pull/50171) | OPEN | security-fix | Discord: gate exec approvals by turn source channel | — | OPEN/PENDING |
| [#50075](https://github.com/openclaw/openclaw/pull/50075) | OPEN | docs | fix(security): show exact workspaceOnly config command in docs | — | OPEN/PENDING |
| [#50042](https://github.com/openclaw/openclaw/pull/50042) | OPEN | docs | Clarify mention gates are not a trust boundary | — | OPEN/PENDING |
| [#50041](https://github.com/openclaw/openclaw/pull/50041) | OPEN | docs | Clarify fail-open denyCommands audit warning | — | OPEN/PENDING |
| [#49582](https://github.com/openclaw/openclaw/pull/49582) | OPEN | security-fix | MSTeams sender allowlist bypass when route allowlist configured + empty sender allowlist (GHSA-g7cr-9h7q-4qxq) | — | OPEN/PENDING |
| [#49392](https://github.com/openclaw/openclaw/pull/49392) | OPEN | security-fix | Use container IP for browser CDP when gateway runs in Docker (sandbox isolation) | — | OPEN/PENDING |
| [#49234](https://github.com/openclaw/openclaw/pull/49234) | OPEN | security-fix | Suppress system event injection when hook deliver is false | — | OPEN/PENDING |
| [#49174](https://github.com/openclaw/openclaw/pull/49174) | OPEN | security-fix | Enforce per-session isolation for cron job visibility and mutations | — | OPEN/PENDING |
| [#49120](https://github.com/openclaw/openclaw/pull/49120) | OPEN | security-fix | Reject private/internal hosts in cron webhook URLs (SSRF) | — | OPEN/PENDING |
| [#48971](https://github.com/openclaw/openclaw/pull/48971) | OPEN | security-fix | Harden MIME type sanitization in media pipeline | — | OPEN/PENDING |
| [#48958](https://github.com/openclaw/openclaw/pull/48958) | OPEN | security-fix | Prevent phantom image injection from memory context into agent prompt | — | OPEN/PENDING |
| [#48724](https://github.com/openclaw/openclaw/pull/48724) | OPEN | security-fix | Address security findings #134/#135/#139 — token masking, port binding, action SHA pins | — | OPEN/PENDING |
| [#48339](https://github.com/openclaw/openclaw/pull/48339) | OPEN | hardening | Add Cache-Control: no-store to default gateway security headers | — | OPEN/PENDING |
| [#48336](https://github.com/openclaw/openclaw/pull/48336) | OPEN | hardening | Add general per-IP request rate limiter to gateway | — | OPEN/PENDING |
| [#48149](https://github.com/openclaw/openclaw/pull/48149) | OPEN | security-fix | Prevent requester self-approval in exec.approval.resolve | — | OPEN/PENDING |
| [#48134](https://github.com/openclaw/openclaw/pull/48134) | OPEN | security-fix | OpenShell: prevent host environment variable leakage to SSH subprocesses | — | OPEN/PENDING |
| [#48133](https://github.com/openclaw/openclaw/pull/48133) | OPEN | security-fix | Firecrawl: validate scraped URL to prevent SSRF + cap cache size (supersedes closed #46322) | — | OPEN/PENDING |
| [#47991](https://github.com/openclaw/openclaw/pull/47991) | OPEN | security-fix | Enforce agent tool profile restrictions correctly | — | OPEN/PENDING |
| [#47743](https://github.com/openclaw/openclaw/pull/47743) | OPEN | security-fix | Add trust tier classification for plugin security model | — | OPEN/PENDING |
| [#47696](https://github.com/openclaw/openclaw/pull/47696) | OPEN | security-fix | Add /trust and /untrust commands for temporary exec security elevation | — | OPEN/PENDING |
| [#47082](https://github.com/openclaw/openclaw/pull/47082) | OPEN | security-fix | macOS exec: harden allowlist shell wrapper resolution | — | OPEN/PENDING |
| [#46970](https://github.com/openclaw/openclaw/pull/46970) | OPEN | security-fix | Add MCP tool call approval system | — | OPEN/PENDING |
| [#46903](https://github.com/openclaw/openclaw/pull/46903) | OPEN | security-fix | Allow backend self-pairing bypass when auth.mode is none | — | OPEN/PENDING |
| [#46829](https://github.com/openclaw/openclaw/pull/46829) | OPEN | security-fix | Rewrite skill paths for sandboxed sessions | — | OPEN/PENDING |
| [#46828](https://github.com/openclaw/openclaw/pull/46828) | OPEN | security-fix | Add HTTP/fetch tool approval system | — | OPEN/PENDING |
| [#46794](https://github.com/openclaw/openclaw/pull/46794) | OPEN | security-fix | Device pairing: bind setup codes to node approvals | — | OPEN/PENDING |
| [#46756](https://github.com/openclaw/openclaw/pull/46756) | OPEN | security-fix | Pass pinned DNS lookup to ProxyAgent via requestTls (SSRF hardening) | — | OPEN/PENDING |
| [#46752](https://github.com/openclaw/openclaw/pull/46752) | OPEN | hardening | Harden tool schemas with maxItems and maximum bounds | — | OPEN/PENDING |
| [#46713](https://github.com/openclaw/openclaw/pull/46713) | OPEN | security-fix | Fail closed for effective sandbox host | — | OPEN/PENDING |
| [#46711](https://github.com/openclaw/openclaw/pull/46711) | OPEN | security-fix | Add operator.read scope to loopback auto-pairing | — | OPEN/PENDING |
| [#41204](https://github.com/openclaw/openclaw/pull/41204) | OPEN | security-fix | Resource exhaustion (lock queue cap) + command injection in skills-install (package name validation) + subagent orphan cleanup | — | OPEN/PENDING |
| [#46533](https://github.com/openclaw/openclaw/pull/46533) | OPEN | security-fix | Block SSRF in nodes-camera writeUrlToFile (DNS rebinding window at connection time) | — | OPEN/PENDING |
| [#46380](https://github.com/openclaw/openclaw/pull/46380) | OPEN | security-fix | Add SSRF guard to MiniMax VLM image understanding endpoint | — | OPEN/PENDING |
| [#46377](https://github.com/openclaw/openclaw/pull/46377) | OPEN | security-fix | Add SSRF guard to Anthropic/Gemini PDF providers; move Gemini API key to header | — | OPEN/PENDING |
| [#46359](https://github.com/openclaw/openclaw/pull/46359) | OPEN | security-fix | Add SSRF hostname validation to Ollama/vLLM model discovery and stream | — | OPEN/PENDING |
| [#46333](https://github.com/openclaw/openclaw/pull/46333) | OPEN | security-fix | Use SSRF-guarded fetch for TTS provider requests | — | OPEN/PENDING |
| [#46324](https://github.com/openclaw/openclaw/pull/46324) | OPEN | security-fix | Add path traversal validation to agentDir and workspace config (no realpath check locally) | — | OPEN/PENDING |
| [#45921](https://github.com/openclaw/openclaw/pull/45921) | OPEN | hardening | Prompt Inspector: AI-based prompt injection detection module | — | OPEN/PENDING |
| [#45901](https://github.com/openclaw/openclaw/pull/45901) | OPEN | hardening | Create session dirs with private permissions (0o700) | — | OPEN/PENDING |
| [#45872](https://github.com/openclaw/openclaw/pull/45872) | OPEN | hardening | Tighten SSRF config and cache in web-fetch | — | OPEN/PENDING |
| [#45832](https://github.com/openclaw/openclaw/pull/45832) | OPEN | security-fix | Reject symlinks on WhatsApp credential files (no lstat locally) | — | OPEN/PENDING |
| [#45611](https://github.com/openclaw/openclaw/pull/45611) | OPEN | security-fix | Replace exec() with execFile() and harden SSRF blocklist (locally mitigated — execFile used) | — | OPEN/PENDING |
| [#45526](https://github.com/openclaw/openclaw/pull/45526) | OPEN | security-fix | Validate skill frontmatter archive field against argument injection | — | OPEN/PENDING |
| [#45383](https://github.com/openclaw/openclaw/pull/45383) | OPEN | security-fix | Wrap inbound media file content to prevent prompt injection (#11207; partially mitigated locally) | — | OPEN/PENDING |
| [#45288](https://github.com/openclaw/openclaw/pull/45288) | OPEN | security-fix | Validate WebSocket URL hostnames against SSRF (CWE-918) | — | OPEN/PENDING |
| [#45959](https://github.com/openclaw/openclaw/pull/45959) | CLOSED | hardening | Detect voice-call plugin dangerous config flags in security audit (closed stale) | — | NOT AFFECTED |
| [#45174](https://github.com/openclaw/openclaw/pull/45174) | OPEN | security-fix | Extend env variable blocklist with missing injection vectors (NX_, CLANG_, RUSTFLAGS) | — | OPEN/PENDING |
| [#45139](https://github.com/openclaw/openclaw/pull/45139) | OPEN | security-fix | Validate parsed command argv to prevent split-args misuse as security boundary (CWE-78) | — | OPEN/PENDING |
| [#44892](https://github.com/openclaw/openclaw/pull/44892) | OPEN | security-fix | Prevent command injection via URL templates in link-understanding (CWE-78) | — | OPEN/PENDING |
| [#44884](https://github.com/openclaw/openclaw/pull/44884) | OPEN | hardening | Gateway public network hardening | — | OPEN/PENDING |
| [#45197](https://github.com/openclaw/openclaw/pull/45197) | CLOSED | security-fix | Re-validate resolved IPs at usage time to prevent SSRF bypass (DNS rebinding) (closed stale) | — | NOT AFFECTED |
| [#43725](https://github.com/openclaw/openclaw/pull/43725) | OPEN | hardening | Add Markdown prompt injection scanning to skill-scanner | — | OPEN/PENDING |
| [#43585](https://github.com/openclaw/openclaw/pull/43585) | OPEN | hardening | Config include path hardening (NUL byte + length validation) | — | OPEN/PENDING |
| [#43469](https://github.com/openclaw/openclaw/pull/43469) | OPEN | hardening | Scan markdown skill definitions for injection threats | — | OPEN/PENDING |
| [#46322](https://github.com/openclaw/openclaw/pull/46322) | CLOSED | security-fix | SSRF-guarded fetch for Firecrawl (closed stale — superseded by #48133) | — | NOT AFFECTED |
| [#40354](https://github.com/openclaw/openclaw/pull/40354) | OPEN | hardening | Add ssrfPolicy.allowRfc2544BenchmarkRange opt-in for SSRF guard (Clash TUN / fake-IP proxy support); supersedes stale #28349 | [#25322](https://github.com/openclaw/openclaw/issues/25322) | OPEN/PENDING |
| [#28281](https://github.com/openclaw/openclaw/pull/28281) | OPEN | security-fix | Override basic-ftp (CVE-2026-27699 path traversal in downloadToDir) + fast-xml-parser >=5.3.8 | — | OPEN/PENDING |
| [#28272](https://github.com/openclaw/openclaw/pull/28272) | OPEN | security-fix | TOCTOU race in writeFileWithinRoot: check uses workspaceReal but write uses workspaceDir (line 706) | — | OPEN/PENDING |
| [#28301](https://github.com/openclaw/openclaw/pull/28301) | OPEN | hardening | Add config to disable Bonjour/mDNS (gateway.mdns.enabled) to reduce network exposure | [#28174](https://github.com/openclaw/openclaw/issues/28174) | OPEN/PENDING |
| [#27818](https://github.com/openclaw/openclaw/pull/27818) | OPEN | hardening | Sanitize Content-Disposition filenames from remote fetches (path traversal) | — | OPEN/PENDING |
| [#21588](https://github.com/openclaw/openclaw/pull/21588) | OPEN | security-fix | Decouple external hook trust from session key format | — | OPEN/PENDING |
| [#21554](https://github.com/openclaw/openclaw/pull/21554) | OPEN | enhancement | Encrypt workspace files and config at rest | — | OPEN/PENDING |
| [#21476](https://github.com/openclaw/openclaw/pull/21476) | CLOSED | hardening | Include operator.read in default CLI scopes (closed stale) | — | NOT AFFECTED |
| [#44737](https://github.com/openclaw/openclaw/pull/44737) | CLOSED | hardening | Replace Math.random with crypto.randomUUID for cryptographic safety (closed stale) | — | NOT AFFECTED |
| [#20177](https://github.com/openclaw/openclaw/pull/20177) | OPEN | security-fix | Block command substitution in unquoted heredoc bodies (Windows CRLF injection) | — | OPEN/PENDING |
| [#20266](https://github.com/openclaw/openclaw/pull/20266) | CLOSED | enhancement | Skills-audit Phase 1 security scanner for installed skills (closed stale) | — | NOT AFFECTED |
| [#19756](https://github.com/openclaw/openclaw/pull/19756) | OPEN | hardening | OC-101: Refresh token rotation enforcement (Aether AI Agent) | — | OPEN/PENDING |
| [#20106](https://github.com/openclaw/openclaw/pull/20106) | CLOSED | hardening | MAESTRO threat mitigations (LM-001, SC-003, AF-005, DI-006, EO-004, AE-001) (closed stale) | — | NOT AFFECTED |
| [#19675](https://github.com/openclaw/openclaw/pull/19675) | OPEN | security-fix | Prevent zero-width Unicode chars from bypassing boundary marker sanitization | — | OPEN/PENDING |
| [#19619](https://github.com/openclaw/openclaw/pull/19619) | OPEN | security-fix | Bump fast-xml-parser override to 5.3.6 to fix DoS vulnerability (upstream CVE) | — | OPEN/PENDING |
| [#19542](https://github.com/openclaw/openclaw/pull/19542) | CLOSED | hardening | Sandbox dynamic import in hook transforms with symlink validation (closed stale) | — | NOT AFFECTED |
| [#19539](https://github.com/openclaw/openclaw/pull/19539) | CLOSED | hardening | Strengthen CSRF protection with SameSite cookies (closed stale) | — | NOT AFFECTED |
| [#19525](https://github.com/openclaw/openclaw/pull/19525) | CLOSED | hardening | Add SSRF validation for external URLs (closed stale) | — | NOT AFFECTED |
| [#19507](https://github.com/openclaw/openclaw/pull/19507) | CLOSED | security-fix | Block prototype pollution in template path resolver (closed stale) | — | NOT AFFECTED |
| [#19042](https://github.com/openclaw/openclaw/pull/19042) | OPEN | hardening | Add URL allowlist for web_search and web_fetch tools | — | OPEN/PENDING |
| [#18933](https://github.com/openclaw/openclaw/pull/18933) | CLOSED | hardening | Use timingSafeEqual for pairing code comparison (closed stale) | — | NOT AFFECTED |
| [#17944](https://github.com/openclaw/openclaw/pull/17944) | CLOSED | security-fix | Fail-closed for local media paths without sandboxRoot (closed stale) | — | NOT AFFECTED |
| [#16992](https://github.com/openclaw/openclaw/pull/16992) | CLOSED | security-fix | Escape XML entities in file.filename to prevent prompt injection (closed stale) | — | NOT AFFECTED |
| [#16990](https://github.com/openclaw/openclaw/pull/16990) | CLOSED | security-fix | Strip auth headers on cross-origin redirect in downloadToFile (closed stale) | — | NOT AFFECTED |
| [#15757](https://github.com/openclaw/openclaw/pull/15757) | CLOSED | hardening | Add hardening gap audit checks (sandbox.mode_not_all, tools.dangerous_not_denied, etc.) (closed stale) | — | NOT AFFECTED |
| [#15615](https://github.com/openclaw/openclaw/pull/15615) | CLOSED | security-fix | Restrict PATH override to exact match in node-host sanitizeEnv (closed stale) | — | NOT AFFECTED |
| [#15296](https://github.com/openclaw/openclaw/pull/15296) | CLOSED | hardening | Harden config redaction defaults; add explicit `--show-secrets` opt-in (closed stale) | — | NOT AFFECTED |
| [#14197](https://github.com/openclaw/openclaw/pull/14197) | CLOSED | security-fix | Harden browser API auth, token comparisons (7 locations), and hook tokens (closed stale) | — | NOT AFFECTED |
| [#14098](https://github.com/openclaw/openclaw/pull/14098) | CLOSED | hardening | Sanitize JSON tool-call payload text to prevent leak via Ollama/local providers (closed stale) | — | NOT AFFECTED |
| [#14224](https://github.com/openclaw/openclaw/pull/14224) | CLOSED | hardening | Telegram member-info action exposes chat administrators (closed stale) | — | NOT AFFECTED |
| [#14061](https://github.com/openclaw/openclaw/pull/14061) | CLOSED | security-fix | Docker gateway auth bypass via Host header spoofing (closed stale) | — | NOT AFFECTED |
| [#14689](https://github.com/openclaw/openclaw/pull/14689) | OPEN | hardening | Auto-set `per-channel-peer` dmScope default during multi-channel onboarding | [#14688](https://github.com/openclaw/openclaw/issues/14688) | OPEN/PENDING |
| [#13042](https://github.com/openclaw/openclaw/pull/13042) | CLOSED | hardening | Add guard model for prompt injection sanitization (closed stale) | — | NOT AFFECTED |
| [#8513](https://github.com/openclaw/openclaw/pull/8513) | CLOSED | security-fix | Require auth for plugin HTTP routes (closed stale) | [#8512](https://github.com/openclaw/openclaw/issues/8512) | NOT AFFECTED |

### MERGED PRs (sync status verified)

| PR | Status | Category | Summary | Related Issue | Local Impact |
|----|--------|----------|---------|---------------|--------------|
| [#49997](https://github.com/openclaw/openclaw/pull/49997) | MERGED | security-fix | Discord: enforce strict DM component allowlist auth (merged 2026-03-19) | — | ALREADY SYNCED |
| [#49702](https://github.com/openclaw/openclaw/pull/49702) | MERGED | security-fix | Block build-tool and glibc env injection vectors in host exec sandbox — MAVEN_OPTS, SBT_OPTS, GRADLE_OPTS, ANT_OPTS (merged 2026-03-18) | — | ALREADY SYNCED |
| [#49025](https://github.com/openclaw/openclaw/pull/49025) | MERGED | security-fix | Block JVM, Python, and .NET env injection vectors in host exec sandbox — JAVA_TOOL_OPTIONS, DOTNET_STARTUP_HOOKS, GLIBC_TUNABLES (merged 2026-03-17) | — | ALREADY SYNCED |
| [#48197](https://github.com/openclaw/openclaw/pull/48197) | MERGED | hardening | ACP: harden startup and move configured routing behind plugin seams (merged 2026-03-17) | — | ALREADY SYNCED |
| [#47968](https://github.com/openclaw/openclaw/pull/47968) | MERGED | hardening | Feishu: harden media support and align capability docs (merged 2026-03-16) | — | ALREADY SYNCED |
| [#47902](https://github.com/openclaw/openclaw/pull/47902) | MERGED | hardening | Pin plugin webhook route registry (merged 2026-03-16) | — | ALREADY SYNCED |
| [#47794](https://github.com/openclaw/openclaw/pull/47794) | MERGED | hardening | Harden read-only SecretRef command paths and diagnostics (merged 2026-03-16) | — | ALREADY SYNCED |
| [#47148](https://github.com/openclaw/openclaw/pull/47148) | MERGED | security-fix | Skip Control UI pairing when auth.mode=none (closes #42931; merged 2026-03-15) | — | ALREADY SYNCED |
| [#46290](https://github.com/openclaw/openclaw/pull/46290) | MERGED | security-fix | Relax local backend self-pairing and harden launchd restarts (merged 2026-03-14) | — | ALREADY SYNCED |
| [#45512](https://github.com/openclaw/openclaw/pull/45512) | MERGED | security-fix | Restore control-ui auth bypass and classify connect failures (merged 2026-03-14) | — | ALREADY SYNCED |
| [#44639](https://github.com/openclaw/openclaw/pull/44639) | MERGED | security-fix | Thread media transport policy into Telegram SSRF guard (merged 2026-03-13) | — | ALREADY SYNCED |
| [#44307](https://github.com/openclaw/openclaw/pull/44307) | MERGED | security-fix | Restore real workspace handoff for sessions_spawn (merged 2026-03-12) | — | ALREADY SYNCED |
| [#43478](https://github.com/openclaw/openclaw/pull/43478) | MERGED | security-fix | Skip device pairing when auth.mode=none (merged 2026-03-14) | — | ALREADY SYNCED |
| [#42672](https://github.com/openclaw/openclaw/pull/42672) | MERGED | security-fix | Fail closed on unresolved local auth SecretRefs (merged 2026-03-11) | — | ALREADY SYNCED |
| [#40757](https://github.com/openclaw/openclaw/pull/40757) | MERGED | security-fix | Pass real workspace to sessions_spawn with workspaceAccess ro (merged 2026-03-10) | — | ALREADY SYNCED |
| [#35983](https://github.com/openclaw/openclaw/pull/35983) | MERGED | security-fix | Harden replaceMarkers() to catch space/underscore boundary marker variants (merged 2026-03-10) | — | ALREADY SYNCED |
| [#20856](https://github.com/openclaw/openclaw/pull/20856) | MERGED | security-fix | Eliminate timing side-channel length leak in safeEqualSecret (merged 2026-02-19; previously tracked as CLOSED) | — | ALREADY SYNCED |
| [#46440](https://github.com/openclaw/openclaw/pull/46440) | MERGED | hardening | Add secops ownership for sensitive paths in CODEOWNERS (merged 2026-03-14) | — | ALREADY SYNCED |
| [#44173](https://github.com/openclaw/openclaw/pull/44173) | MERGED | hardening | Rate limit invalid webhook secret guesses before auth in Zalo (merged 2026-03-12) | — | ALREADY SYNCED |
| [#44087](https://github.com/openclaw/openclaw/pull/44087) | MERGED | hardening | Require Feishu webhook encrypt key (merged 2026-03-12) | — | ALREADY SYNCED |
| [#43759](https://github.com/openclaw/openclaw/pull/43759) | MERGED | hardening | Enforce source-managed SecretRef markers in models.json (merged 2026-03-12) | — | ALREADY SYNCED |
| [#43686](https://github.com/openclaw/openclaw/pull/43686) | MERGED | hardening | Cap device tokens to approved scopes (merged 2026-03-12) | — | ALREADY SYNCED |
| [#42554](https://github.com/openclaw/openclaw/pull/42554) | MERGED | hardening | Harden custom/provider SecretRef persistence and reuse (merged 2026-03-10) | — | ALREADY SYNCED |
| [#42507](https://github.com/openclaw/openclaw/pull/42507) | MERGED | hardening | Harden token fallback/reconnect behavior (merged 2026-03-10) | — | ALREADY SYNCED |
| [#42455](https://github.com/openclaw/openclaw/pull/42455) | MERGED | docs | Add changelog entry for SecretRef traversal fix (merged 2026-03-10) | — | ALREADY SYNCED |
| [#28507](https://github.com/openclaw/openclaw/pull/28507) | MERGED | security-fix | Remove post-compaction audit injection message (WORKFLOW_AUTO.md prompt injection vector; merged 2026-02-28; supersedes #27718) | — | ALREADY SYNCED |
| [#26155](https://github.com/openclaw/openclaw/pull/26155) | MERGED | hardening | Add external secrets management (SecretRef providers: env/file/exec; strict fail-fast; merged 2026-02-26; supersedes #12839) | — | ALREADY SYNCED |
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
| [#41117](https://github.com/openclaw/openclaw/pull/41117) | CLOSED | hardening | tirith pre-exec command security scanning (closed 2026-03-15; abandoned) | — | NOT AFFECTED |
| [#20424](https://github.com/openclaw/openclaw/pull/20424) | CLOSED | security-fix | Fix plugin extension path traversal in discovery/install (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#18923](https://github.com/openclaw/openclaw/pull/18923) | CLOSED | hardening | Block out-of-root hook manifest paths (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#16963](https://github.com/openclaw/openclaw/pull/16963) | CLOSED | hardening | Enable auth rate limiting by default (closed 2026-03-15 stale) | [#16876](https://github.com/openclaw/openclaw/issues/16876) | NOT AFFECTED |
| [#14222](https://github.com/openclaw/openclaw/pull/14222) | CLOSED | hardening | Add needsApproval to before_tool_call hook; move AgentShield to extension (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#13817](https://github.com/openclaw/openclaw/pull/13817) | CLOSED | hardening | Configurable prompt injection monitor (closed 2026-03-15; was DRAFT; stale) | — | NOT AFFECTED |
| [#13737](https://github.com/openclaw/openclaw/pull/13737) | CLOSED | hardening | Docker UID/GID remap hardening (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#13521](https://github.com/openclaw/openclaw/pull/13521) | CLOSED | security-fix | Require webhook secret in Telegram runtime webhook mode (closed 2026-03-15 stale) | [#13116](https://github.com/openclaw/openclaw/issues/13116) | NOT AFFECTED |
| [#13321](https://github.com/openclaw/openclaw/pull/13321) | CLOSED | hardening | Android gateway device identity hardening (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#13308](https://github.com/openclaw/openclaw/pull/13308) | CLOSED | hardening | Address audit findings gateway/CI/Docker (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#13254](https://github.com/openclaw/openclaw/pull/13254) | CLOSED | hardening | Harden archive extraction and plugin rollback (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#13144](https://github.com/openclaw/openclaw/pull/13144) | CLOSED | hardening | Harden archive extraction, auth tokens, hook transforms, queue limits (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#12958](https://github.com/openclaw/openclaw/pull/12958) | CLOSED | hardening | Block agent read access to sensitive config files (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#10238](https://github.com/openclaw/openclaw/pull/10238) | CLOSED | security-fix | Fix TwiML injection via unescaped locale/language/voice params (closed 2026-03-15 stale) | — | NOT AFFECTED |
| [#7616](https://github.com/openclaw/openclaw/pull/7616) | CLOSED | security-fix | Harden zip extraction against path traversal (closed 2026-03-15 stale) | [#3277](https://github.com/openclaw/openclaw/issues/3277) | NOT AFFECTED |
| [#28349](https://github.com/openclaw/openclaw/pull/28349) | CLOSED | security-fix | Pass ssrfPolicy from config to web_fetch SSRF guard (closed 2026-03-10 stale; superseded by #40354 OPEN) | — | NOT AFFECTED |
| [#28341](https://github.com/openclaw/openclaw/pull/28341) | CLOSED | security-fix | Stop leaking API key snippets in /models chat output (closed 2026-03-10 stale; issue persists) | — | NOT AFFECTED |
| [#28243](https://github.com/openclaw/openclaw/pull/28243) | CLOSED | security-fix | Gate Telegram channel_post commands by explicit allowFrom (closed 2026-03-10; superseded by #27864 CLOSED; vuln persists) | — | NOT AFFECTED |
| [#28241](https://github.com/openclaw/openclaw/pull/28241) | CLOSED | security-fix | Thread-ownership fail-closed on verifier errors (closed 2026-03-10; superseded by #25971 CLOSED; Slack leakage vuln persists) | — | NOT AFFECTED |
| [#28239](https://github.com/openclaw/openclaw/pull/28239) | CLOSED | security-fix | Reject oversized pre-auth WebSocket frames (closed 2026-03-10; superseded by #25973 CLOSED; DoS vuln persists) | — | NOT AFFECTED |
| [#28238](https://github.com/openclaw/openclaw/pull/28238) | CLOSED | security-fix | Cap pending pre-auth WebSocket handshakes (closed 2026-03-10; superseded by #25966 CLOSED; resource exhaustion vuln persists) | — | NOT AFFECTED |
| [#28205](https://github.com/openclaw/openclaw/pull/28205) | CLOSED | security-fix | Fail-closed on invalid config (closed 2026-03-10; competing PR; issue persists) | — | NOT AFFECTED |
| [#28114](https://github.com/openclaw/openclaw/pull/28114) | CLOSED | security-fix | Reject placeholder secrets in config writes (closed 2026-03-10; dup of #27097 CLOSED; issue persists) | [#21573](https://github.com/openclaw/openclaw/issues/21573) | NOT AFFECTED |
| [#28113](https://github.com/openclaw/openclaw/pull/28113) | CLOSED | security-fix | Enforce allowlist on message tool outbound sends (closed 2026-03-10; author Codex rate limit; issue persists) | — | NOT AFFECTED |
| [#28093](https://github.com/openclaw/openclaw/pull/28093) | CLOSED | security-fix | Add agent access control enforcement in group chats (closed 2026-03-10; dirty PR; issue persists) | [#25963](https://github.com/openclaw/openclaw/issues/25963) | NOT AFFECTED |
| [#27993](https://github.com/openclaw/openclaw/pull/27993) | CLOSED | hardening | Add --password-file and --token-file to avoid credential exposure (closed 2026-03-10; dup of #27985) | — | NOT AFFECTED |
| [#27991](https://github.com/openclaw/openclaw/pull/27991) | CLOSED | hardening | Add local-model-only security mode (closed 2026-03-10; architectural feedback only; not adopted) | — | NOT AFFECTED |
| [#27718](https://github.com/openclaw/openclaw/pull/27718) | CLOSED | security-fix | Remove WORKFLOW_AUTO.md prompt injection default (closed 2026-03-10; superseded by #28507 MERGED) | — | NOT AFFECTED |
| [#21733](https://github.com/openclaw/openclaw/pull/21733) | CLOSED | security-fix | Platform-aware allowlist matching (closed 2026-03-10 stale; issue persists) | — | NOT AFFECTED |
| [#21668](https://github.com/openclaw/openclaw/pull/21668) | CLOSED | security-fix | Block dangerous env var keys from config injection (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21667](https://github.com/openclaw/openclaw/pull/21667) | CLOSED | hardening | Add CSP and security headers to canvas HTML responses (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21666](https://github.com/openclaw/openclaw/pull/21666) | CLOSED | hardening | Restrict auto-paired device scopes to safe defaults (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21665](https://github.com/openclaw/openclaw/pull/21665) | CLOSED | hardening | Add /home and /Users to bind-mount denylist (closed 2026-03-10; bot >10 active PRs; gap persists) | — | NOT AFFECTED |
| [#21664](https://github.com/openclaw/openclaw/pull/21664) | CLOSED | hardening | Require re-pairing for legacy devices lacking scope metadata (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21663](https://github.com/openclaw/openclaw/pull/21663) | CLOSED | security-fix | Prevent self-approval of timed-out exec requests (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21662](https://github.com/openclaw/openclaw/pull/21662) | CLOSED | security-fix | Validate session key ownership against agent scope (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#21518](https://github.com/openclaw/openclaw/pull/21518) | CLOSED | hardening | Add Anthropic OAuth token refresh and fix external CLI sync (closed 2026-03-10; no longer needed per maintainers) | — | NOT AFFECTED |
| [#20855](https://github.com/openclaw/openclaw/pull/20855) | CLOSED | security-fix | Block prototype chain traversal in hook template resolution (closed 2026-03-10; dup of #19507 OPEN) | — | NOT AFFECTED |
| [#20796](https://github.com/openclaw/openclaw/pull/20796) | CLOSED | security-fix | OC-22: Prevent Zip Slip and symlink following in skill packaging (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#20775](https://github.com/openclaw/openclaw/pull/20775) | CLOSED | security-fix | OC-10: Add webhook payload schema validation (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#17724](https://github.com/openclaw/openclaw/pull/17724) | CLOSED | security-fix | Fix potential argument injection in Zalo user tool execution (closed 2026-03-10; Zalouser migrated to internal lib; RESOLVED) | — | NOT AFFECTED |
| [#16936](https://github.com/openclaw/openclaw/pull/16936) | CLOSED | security-fix | Feishu mention stripping vulnerable to regex injection (closed 2026-03-10; already fixed on main 7e67ab75c; RESOLVED) | — | NOT AFFECTED |
| [#16898](https://github.com/openclaw/openclaw/pull/16898) | CLOSED | security-fix | Zalo webhook timing attack (plain `===`) (closed 2026-03-10 stale; issue persists) | — | NOT AFFECTED |
| [#14318](https://github.com/openclaw/openclaw/pull/14318) | CLOSED | hardening | Enforce outbound allowlist on Discord send functions (closed 2026-03-10 stale; issue persists) | — | NOT AFFECTED |
| [#13894](https://github.com/openclaw/openclaw/pull/13894) | CLOSED | hardening | Add manifest scanner for SKILL.md trust analysis (closed 2026-03-10; drifted from main) | — | NOT AFFECTED |
| [#12871](https://github.com/openclaw/openclaw/pull/12871) | CLOSED | hardening | Shell injection warning + prefer bash for embedded agents (closed 2026-03-10; superseded by #18457 MERGED 2026-02-16) | — | NOT AFFECTED |
| [#12839](https://github.com/openclaw/openclaw/pull/12839) | CLOSED | hardening | Add vault proxy mode for credential isolation (closed 2026-03-10; superseded by #26155 MERGED 2026-02-26) | — | NOT AFFECTED |
| [#12387](https://github.com/openclaw/openclaw/pull/12387) | CLOSED | security-fix | Fix SSRF vulnerability in matrix-bot-sdk (closed 2026-03-10 stale; issue persists) | — | NOT AFFECTED |
| [#8305](https://github.com/openclaw/openclaw/pull/8305) | CLOSED | hardening | Add SSRF protection to browser navigation (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#8186](https://github.com/openclaw/openclaw/pull/8186) | CLOSED | security-fix | Validate sandbox `setupCommand` to prevent shell injection (closed 2026-03-10; bot >10 active PRs; issue persists) | — | NOT AFFECTED |
| [#28091](https://github.com/openclaw/openclaw/pull/28091) | CLOSED | security-fix | Update transitive deps to resolve HIGH CVEs (closed 2026-02-27; superseded by #28281) | — | NOT AFFECTED |
| [#21755](https://github.com/openclaw/openclaw/pull/21755) | CLOSED | security-fix | Pad buffers to equal length in timingSafeEqual (closed 2026-02-27) | — | NOT AFFECTED |
| [#21671](https://github.com/openclaw/openclaw/pull/21671) | CLOSED | security-fix | Enforce auth on all plugin HTTP routes (closed 2026-02-27; #8513 still OPEN) | — | NOT AFFECTED |
| [#21669](https://github.com/openclaw/openclaw/pull/21669) | CLOSED | security-fix | Apply SSRF guard to Firecrawl fallback fetch path (closed 2026-02-27) | — | NOT AFFECTED |
| [#21560](https://github.com/openclaw/openclaw/pull/21560) | CLOSED | hardening | Sanitize invalid UTF-16 surrogates in session/prompt payloads (closed 2026-02-27) | — | NOT AFFECTED |
| [#21532](https://github.com/openclaw/openclaw/pull/21532) | CLOSED | hardening | Block signed webhook replay for voice calls (closed 2026-02-27) | — | NOT AFFECTED |
| [#21531](https://github.com/openclaw/openclaw/pull/21531) | CLOSED | hardening | Block signed webhook replay for Nextcloud, Google Chat, and LINE (closed 2026-02-27) | — | NOT AFFECTED |
| [#21522](https://github.com/openclaw/openclaw/pull/21522) | CLOSED | security-fix | Prevent memory exhaustion in MS Teams inline image decoding (closed 2026-02-27) | — | NOT AFFECTED |
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

**Total:** 283 tracked PRs (72 merged, 67 open, 0 draft, 144 closed)

> **Status change log (19-03-2026 20:58 AEST):** 24 state changes + 42 new PRs. **24 OPEN → CLOSED** (stale/abandoned): #8513, #14061, #14197, #15615, #16990, #16992, #17944, #19507, #45197 (security-fix), #46322 (superseded by #48133), #13042, #14098, #14224, #15296, #15757, #18933, #19525, #19539, #19542, #20106, #21476, #44737, #45959 (hardening), #20266 (enhancement). **8 new MERGED** (all ALREADY SYNCED via Mar 19 sync 5): #49997 Discord DM component allowlist auth, #49702 build-tool+glibc env injection block, #49025 JVM+Python+.NET env injection block, #48197 ACP startup hardening, #47968 Feishu media hardening, #47902 plugin webhook registry pinning, #47794 SecretRef path hardening, #47148 skip Control UI pairing when auth.mode=none. **34 new OPEN PRs:** 28 security-fix (#46711, #46713, #46756, #46794, #46828, #46829, #46903, #46970, #47082, #47696, #47743, #47991, #48133, #48134, #48149, #48724, #48958, #48971, #49120, #49174, #49234, #49392, #49582 [GHSA-g7cr-9h7q-4qxq MSTeams allowlist bypass], #50171, #50180, #50181, #50320, #50365), 3 hardening (#46752, #48336, #48339), 3 docs (#50041, #50042, #50075). **0 sync actions needed** — all merged PRs confirmed in local git log.
>
> **Status change log (15-03-2026 09:19 AEST):** 16 state changes detected. **1 CLOSED → MERGED (status correction):** #20856 (timing side-channel safeEqualSecret fix, merged 2026-02-19, ALREADY SYNCED). **15 OPEN → CLOSED** (stale closures): #7616, #10238, #12958, #13144, #13254, #13308, #13321, #13521, #13737, #13817 (DRAFT), #14222, #16963, #18923, #20424, #41117. **39 new PRs added:** 17 MERGED (all ALREADY SYNCED via Mar 10-15 syncs: #46440 secops ownership, #46290 self-pairing+launchd, #45512 control-ui auth, #44639 Telegram SSRF, #44307 workspace handoff, #44173 Zalo rate limit, #44087 Feishu encrypt key, #43759 SecretRef markers, #43686 scope cap, #43478 auth.mode=none, #42672 fail-closed SecretRef, #42554 SecretRef persistence, #42507 token fallback, #42455 SecretRef docs, #40757 workspace access ro, #35983 replaceMarkers hardening, #20856 reclassified). **25 OPEN** (16 security-fix + 9 hardening): CWE-78 fixes (#44892 URL template injection, #45139 splitArgs boundary), SSRF guards (#46533 nodes-camera, #46380 MiniMax, #46377 Anthropic/Gemini PDF, #46359 Ollama/vLLM, #46333 TTS, #46322 Firecrawl, #45288 WebSocket, #45197 DNS rebinding, #45872 config+cache), path traversal (#46324 agentDir), env blocklist (#45174), WhatsApp symlink (#45832), prompt injection (#45383 media, #45921 Prompt Inspector, #43725+#43469 skill scanning), exec hardening (#45611 execFile), session perms (#45901), skill archive (#45526), voice-call flags (#45959), config paths (#43585), Math.random (#44737), gateway network (#44884). **0 sync actions needed** — all merged PRs already synced.
>
> **Status change log (10-03-2026 02:21 AEST):** 35 state changes detected (all OPEN → CLOSED). **35 OPEN → CLOSED** (mix of barnacle bot auto-closures [author >10 active PRs], stale closures, and superseded by other PRs): #8186, #8305, #12387, #12839 (superseded by #26155 MERGED), #12871 (superseded by #18457 MERGED), #13894, #14318, #16898, #16936 (already fixed on main), #17724 (Zalo migration resolved), #20775, #20796, #20855 (dup of #19507), #21518 (no longer needed), #21662, #21663, #21664, #21665, #21666, #21667, #21668, #21733, #27718 (superseded by #28507 MERGED), #27991, #27993, #28093, #28113, #28114, #28205, #28238 (superseded by #25966 CLOSED), #28239 (superseded by #25973 CLOSED), #28241 (superseded by #25971 CLOSED), #28243 (superseded by #27864 CLOSED), #28341, #28349 (superseded by #40354 OPEN). **6 new PRs added:** #41204 OPEN security-fix (resource exhaustion + command injection), #41117 OPEN hardening (tirith pre-exec scanner), #40354 OPEN hardening (SSRF policy config), #28507 MERGED security-fix (ALREADY SYNCED), #26155 MERGED hardening (ALREADY SYNCED, external secrets). No new SYNC NEEDED items.
>
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
| [#8241](https://github.com/openclaw/openclaw/pull/8241) | (Matrix thread isolation) | MEDIUM | MERGED | `:thread:${threadRootId}` suffix at `extensions/matrix/src/matrix/monitor/handler.ts:612-615` |
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
| [#14222](https://github.com/openclaw/openclaw/pull/14222) | (maintainer feedback on #8727) | MEDIUM | CLOSED | Core `before_tool_call` hook extended with `needsApproval`; AgentShield moved to extension (closed 2026-03-15 stale) |
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
