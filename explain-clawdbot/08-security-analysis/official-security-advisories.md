> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Official Security Advisories (CVEs/GHSAs)

> **Source:** [github.com/openclaw/openclaw/security](https://github.com/openclaw/openclaw/security)
>
> These are officially disclosed vulnerabilities with assigned CVE/GHSA identifiers. Earlier advisories were patched in v2026.1.29-1.30; Feb 14 batch (5 new advisories) patched in v2026.2.1-2.6; Feb 15 batch (26 new advisories, 10 HIGH + 10 MEDIUM + 6 previously tracked) patched in v2026.2.1-2.2+; Feb 16 batch (16 new advisories, 9 HIGH + 4 MEDIUM + 3 LOW) published 2026-02-15/16; Feb 15/16/18/19 supplemental (8 additional advisories, 4 HIGH + 4 MEDIUM); Feb 20 batch (4 new advisories, 2 MEDIUM + 2 LOW) published 2026-02-20, patched in v2026.2.18; Feb 21 batch (22 new advisories, 4 HIGH + 15 MEDIUM + 3 LOW) + GHSA-82g8-464f-2mv7 (CRITICAL, patched v2026.2.21) published 2026-02-21; Feb 23 batch (30 new advisories, 1 HIGH + 25 MEDIUM + 4 LOW) published 2026-02-23, 2 patched in Feb 23 sync 16 (GHSA-f6h3-846h-2r8w + GHSA-wpph-cjgr-7c39); Feb 24 batch (16 new advisories, 2 HIGH + 13 MEDIUM + 1 LOW) published 2026-02-24, 3 patched in Feb 25 sync 2 (GHSA-q6qf-4p5j-r25g + GHSA-3c6h-g97w-fg78 + GHSA-2ww6-868g-2c56); Feb 25 batch (12 new advisories, 1 HIGH + 10 MEDIUM + 1 LOW) published 2026-02-25, 1 patched in Feb 25 sync 5 (GHSA-ccg8-46r6-9qgj by 57c9a1818); Feb 26 batch (18 new advisories, 4 HIGH + 11 MEDIUM + 3 LOW) published 2026-02-26, 12 patched in Feb 26 sync 1.

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
| [GHSA-fhvm-j76f-qmjv](https://github.com/openclaw/openclaw/security/advisories/GHSA-fhvm-j76f-qmjv) | HIGH | Access-Group Authorization Bypass if Channel Type Lookup Fails | CWE-285 | >= v2026.2.2 | @simecek |
| [GHSA-rmxw-jxxx-4cpc](https://github.com/openclaw/openclaw/security/advisories/GHSA-rmxw-jxxx-4cpc) | MEDIUM | Matrix Allowlist Bypass via displayName | - | >= v2026.2.2 | @MegaManSec |
| [GHSA-4rj2-gpmh-qq5x](https://github.com/openclaw/openclaw/security/advisories/GHSA-4rj2-gpmh-qq5x) | CRITICAL | Inbound Allowlist Policy Bypass in Voice-Call Extension | - | pending | - |
| [CVE-2026-25474](https://github.com/openclaw/openclaw/security/advisories/GHSA-mp5h-m6qj-6292) | HIGH | Telegram Webhook Secret Verification Bypass | - | pending | - |
| [GHSA-7vwx-582j-j332](https://github.com/openclaw/openclaw/security/advisories/GHSA-7vwx-582j-j332) | HIGH | MS Teams Attachment Downloader Leaks Bearer Tokens | - | pending | - |
| [GHSA-r5h9-vjqc-hq3r](https://github.com/openclaw/openclaw/security/advisories/GHSA-r5h9-vjqc-hq3r) | HIGH | Nextcloud Talk Allowlist Bypass via actor.name Spoofing | - | pending | - |
| [GHSA-qrq5-wjgg-rvqw](https://github.com/openclaw/openclaw/security/advisories/GHSA-qrq5-wjgg-rvqw) | CRITICAL | Path Traversal in Plugin Installation | CWE-22 | >= v2026.2.1 | @logicx24 |
| [GHSA-rv39-79c4-7459](https://github.com/openclaw/openclaw/security/advisories/GHSA-rv39-79c4-7459) | HIGH | Gateway Device Identity Skip | CWE-306 | >= v2026.2.2 | @simecek |
| [GHSA-qj77-c3c8-9c3q](https://github.com/openclaw/openclaw/security/advisories/GHSA-qj77-c3c8-9c3q) | HIGH | Windows cmd.exe Exec Allowlist Bypass | CWE-78 | >= v2026.2.2 | @simecek |
| [GHSA-mqpw-46fh-299h](https://github.com/openclaw/openclaw/security/advisories/GHSA-mqpw-46fh-299h) | HIGH | operator.write Exec Approval Bypass via /approve | CWE-269, CWE-863 | >= v2026.2.2 | @yueyueL |
| [GHSA-33rq-m5x2-fvgf](https://github.com/openclaw/openclaw/security/advisories/GHSA-33rq-m5x2-fvgf) | HIGH | Twitch allowFrom Not Enforced in Optional Plugin | - | pending | - |
| [GHSA-3hcm-ggvf-rch5](https://github.com/openclaw/openclaw/security/advisories/GHSA-3hcm-ggvf-rch5) | HIGH | Exec Allowlist Bypass via Command Substitution/Backticks | CWE-78 | >= v2026.2.2 | @simecek |
| [GHSA-mr32-vwc2-5j6h](https://github.com/openclaw/openclaw/security/advisories/GHSA-mr32-vwc2-5j6h) | HIGH | Browser Relay /cdp WebSocket Missing Auth | - | >= v2026.2.1 | @johnatzeropath, @LeftenantZero, @yueyueL |
| [CVE-2026-26321](https://github.com/openclaw/openclaw/security/advisories/GHSA-8jpq-5h99-ff5r) | HIGH | Local File Disclosure via sendMediaFeishu in Feishu Extension | CWE-22 | pending | - |
| [GHSA-xw4p-pw82-hqr7](https://github.com/openclaw/openclaw/security/advisories/GHSA-xw4p-pw82-hqr7) | HIGH | Sandbox Skill Mirroring Path Traversal | CWE-22 | pending | - |
| [GHSA-7q2j-c4q5-rm27](https://github.com/openclaw/openclaw/security/advisories/GHSA-7q2j-c4q5-rm27) | HIGH | macOS Deep Link Confirmation Truncation | CWE-451 | pending | - |
| [GHSA-j27p-hq53-9wgc](https://github.com/openclaw/openclaw/security/advisories/GHSA-j27p-hq53-9wgc) | HIGH | DoS via Unbounded URL-Backed Media Fetch | CWE-400 | pending | - |
| [GHSA-q447-rj3r-2cgh](https://github.com/openclaw/openclaw/security/advisories/GHSA-q447-rj3r-2cgh) | HIGH | DoS via Unbounded Webhook Request Body Buffering | CWE-400 | pending | - |
| [GHSA-3fqr-4cg8-h96q](https://github.com/openclaw/openclaw/security/advisories/GHSA-3fqr-4cg8-h96q) | HIGH | CSRF Through Loopback Browser Mutation Endpoints | CWE-352 | pending | - |
| [GHSA-rq6g-px6m-c248](https://github.com/openclaw/openclaw/security/advisories/GHSA-rq6g-px6m-c248) | HIGH | Google Chat Webhook Cross-Account Policy Misrouting | CWE-284, CWE-639 | pending | - |
| [GHSA-pv58-549p-qh99](https://github.com/openclaw/openclaw/security/advisories/GHSA-pv58-549p-qh99) | HIGH | Discovery TXT Records Could Steer Routing and TLS Pinning | CWE-345 | pending | - |
| [GHSA-cv7m-c9jx-vg7q](https://github.com/openclaw/openclaw/security/advisories/GHSA-cv7m-c9jx-vg7q) | HIGH | Path Traversal in Browser Upload | CWE-22 | pending | - |
| [GHSA-g6q9-8fvw-f7rf](https://github.com/openclaw/openclaw/security/advisories/GHSA-g6q9-8fvw-f7rf) | HIGH | Gateway Tool Unrestricted gatewayUrl Override | CWE-918 | pending | - |
| [GHSA-4hg8-92x6-h2f3](https://github.com/openclaw/openclaw/security/advisories/GHSA-4hg8-92x6-h2f3) | HIGH | Missing Webhook Auth in Telnyx Provider | CWE-306 | pending | - |
| [GHSA-jmm5-fvh5-gf4p](https://github.com/openclaw/openclaw/security/advisories/GHSA-jmm5-fvh5-gf4p) | MEDIUM | Non-Constant-Time Token Comparison in Hooks Auth | CWE-208 | pending | - |
| [GHSA-47q7-97xp-m272](https://github.com/openclaw/openclaw/security/advisories/GHSA-47q7-97xp-m272) | MEDIUM | Config Writes Persist Resolved ${VAR} Secrets to Disk | - | pending | - |
| [GHSA-w2cg-vxx6-5xjg](https://github.com/openclaw/openclaw/security/advisories/GHSA-w2cg-vxx6-5xjg) | MEDIUM | DoS via Large Base64 Media Buffer Allocation | CWE-400 | pending | - |
| [GHSA-h89v-j3x9-8wqj](https://github.com/openclaw/openclaw/security/advisories/GHSA-h89v-j3x9-8wqj) | MEDIUM | DoS via Unguarded Archive Extraction (ZIP/TAR) | CWE-400 | pending | - |
| [GHSA-mj5r-hh7j-4gxf](https://github.com/openclaw/openclaw/security/advisories/GHSA-mj5r-hh7j-4gxf) | MEDIUM | Telegram Allowlist Accepted Mutable Usernames | CWE-284, CWE-290 | pending | - |
| [GHSA-g34w-4xqq-h79m](https://github.com/openclaw/openclaw/security/advisories/GHSA-g34w-4xqq-h79m) | MEDIUM | iMessage Group Allowlist Cross-Context Authorization | CWE-284, CWE-863 | pending | - |
| [GHSA-8mh7-phf8-xgfm](https://github.com/openclaw/openclaw/security/advisories/GHSA-8mh7-phf8-xgfm) | MEDIUM | skills.status Leaks Secrets to operator.read Clients | CWE-200 | pending | - |
| [GHSA-c37p-4qqg-3p76](https://github.com/openclaw/openclaw/security/advisories/GHSA-c37p-4qqg-3p76) | MEDIUM | Twilio Voice Webhook Auth Bypass via ngrok Loopback | CWE-306 | pending | - |
| [GHSA-pg2v-8xwh-qhcc](https://github.com/openclaw/openclaw/security/advisories/GHSA-pg2v-8xwh-qhcc) | MEDIUM | SSRF in Optional Tlon (Urbit) Extension Auth | CWE-918 | pending | - |
| [GHSA-7rcp-mxpq-72pj](https://github.com/openclaw/openclaw/security/advisories/GHSA-7rcp-mxpq-72pj) | MEDIUM | Chutes Manual OAuth State Validation Bypass | CWE-352 | pending | aether-ai-agent |
| [GHSA-jfv4-h8mc-jcp8](https://github.com/openclaw/openclaw/security/advisories/GHSA-jfv4-h8mc-jcp8) | LOW | Unvalidated PID Kill via SIGKILL in Process Cleanup | CWE-283 | pending | aether-ai-agent |
| [GHSA-rwj8-p9vq-25gv](https://github.com/openclaw/openclaw/security/advisories/GHSA-rwj8-p9vq-25gv) | HIGH | LFI in BlueBubbles Media Path Handling | CWE-22 | pending | @zpbrent |
| [GHSA-4564-pvr2-qq4h](https://github.com/openclaw/openclaw/security/advisories/GHSA-4564-pvr2-qq4h) | HIGH | Shell Injection in macOS Keychain Credential Write | CWE-78 | pending | aether-ai-agent |
| [GHSA-x22m-j5qq-j49m](https://github.com/openclaw/openclaw/security/advisories/GHSA-x22m-j5qq-j49m) | HIGH | Two SSRF via Feishu Extension (sendMediaFeishu + Markdown Image Fetch) | CWE-918 | pending | @zpbrent |
| [GHSA-gq9c-wg68-gwj2](https://github.com/openclaw/openclaw/security/advisories/GHSA-gq9c-wg68-gwj2) | HIGH | Path Traversal in Browser Trace/Download Output Paths | CWE-22 | pending | @jackhax |
| [GHSA-h9g4-589h-68xv](https://github.com/openclaw/openclaw/security/advisories/GHSA-h9g4-589h-68xv) | HIGH | Authentication Bypass in Sandbox Browser Bridge Server | CWE-306 | pending | @jackhax |
| [GHSA-v6c6-vqqg-w888](https://github.com/openclaw/openclaw/security/advisories/GHSA-v6c6-vqqg-w888) | HIGH | Potential Code Execution via Unsafe Hook Module Path Handling | - | pending | @222n5 |
| [GHSA-7xhj-55q9-pc3m](https://github.com/openclaw/openclaw/security/advisories/GHSA-7xhj-55q9-pc3m) | MEDIUM | Hook Transform Module Path Traversal and Arbitrary JS Loading | CWE-22 | pending | @akhmittra |
| [GHSA-5xfq-5mr7-426q](https://github.com/openclaw/openclaw/security/advisories/GHSA-5xfq-5mr7-426q) | MEDIUM | Unsanitized Session ID Path Traversal in Transcript Operations | CWE-22 | pending | @akhmittra |
| [GHSA-v892-hwpg-jwqp](https://github.com/openclaw/openclaw/security/advisories/GHSA-v892-hwpg-jwqp) | HIGH | Zip Slip in Archive Extraction During Explicit Installation | CWE-22 | pending | @markmusson |
| [GHSA-qpjj-47vm-64pj](https://github.com/openclaw/openclaw/security/advisories/GHSA-qpjj-47vm-64pj) | HIGH | Missing Authentication for Local Browser-Control Endpoints | - | pending | @tcusolle |
| [GHSA-w5c7-9qqw-6645](https://github.com/openclaw/openclaw/security/advisories/GHSA-w5c7-9qqw-6645) | MEDIUM | Inter-Session Prompts Treated as Direct User Instructions | - | pending | @anbecker |
| [CVE-2026-26972](https://github.com/openclaw/openclaw/security/advisories/GHSA-xwjm-j929-xq7c) | MEDIUM | Path Traversal in Browser Download Functionality | CWE-22 | pending | @locus-x64 |
| [GHSA-p25h-9q54-ffvw](https://github.com/openclaw/openclaw/security/advisories/GHSA-p25h-9q54-ffvw) | HIGH | Zip Slip Path Traversal in Tar Archive Extraction | CWE-22 | pending | @xuemian168 |
| [GHSA-chm2-m3w2-wcxm](https://github.com/openclaw/openclaw/security/advisories/GHSA-chm2-m3w2-wcxm) | LOW | Google Chat Mutable Email Principal Spoofing | CWE-290, CWE-863 | pending | @vincentkoc |
| [GHSA-fh3f-q9qw-93j9](https://github.com/openclaw/openclaw/security/advisories/GHSA-fh3f-q9qw-93j9) | MEDIUM | Replace Deprecated Sandbox Hash Algorithm (SHA-1 → SHA-256) | - | v2026.2.15 | @kexinoh (Tencent zhuque Lab) |
| [CVE-2026-27004 / GHSA-6hf3-mhgc-cm65](https://github.com/openclaw/openclaw/security/advisories/GHSA-6hf3-mhgc-cm65) | HIGH | OC-07: Session Tool Visibility Hardening and Telegram Webhook Secret Fallback | - | v2026.2.15 | @aether-ai-agent |
| [CVE-2026-27009 / GHSA-37gc-85xm-2ww6](https://github.com/openclaw/openclaw/security/advisories/GHSA-37gc-85xm-2ww6) | MEDIUM | Stored XSS in Control UI via Unsanitized Assistant Name/Avatar | CWE-79 | v2026.2.15 | @Adam55A-code |
| [GHSA-mmpf-jwf4-h3qv](https://github.com/openclaw/openclaw/security/advisories/GHSA-mmpf-jwf4-h3qv) | LOW | Option Injection in Pre-Commit Hook Can Stage Ignored Files | - | v2026.2.15 | @mrthankyou |
| [CVE-2026-27003 / GHSA-chf7-jq6g-qrwv](https://github.com/openclaw/openclaw/security/advisories/GHSA-chf7-jq6g-qrwv) | MEDIUM | OC-17: Telegram Bot Token Exposure via Logs | - | v2026.2.15 | @aether-ai-agent |
| [CVE-2026-27001 / GHSA-2qj5-gwg2-xwc4](https://github.com/openclaw/openclaw/security/advisories/GHSA-2qj5-gwg2-xwc4) | HIGH | OC-19: Unsanitized CWD path injection into LLM prompts | CWE-77 | pending | @aether-ai-agent |
| [CVE-2026-27002 / GHSA-w235-x559-36mg](https://github.com/openclaw/openclaw/security/advisories/GHSA-w235-x559-36mg) | MEDIUM | OC-13: Docker container escape via unvalidated bind mount config injection | CWE-250 | pending | @aether-ai-agent |
| [CVE-2026-27007 / GHSA-xxvh-5hwj-42pp](https://github.com/openclaw/openclaw/security/advisories/GHSA-xxvh-5hwj-42pp) | MEDIUM | Sandbox config hash sorted primitive arrays and suppressed needed container recreation | - | pending | @kexinoh |
| [CVE-2026-27008 / GHSA-h7f7-89mm-pqh6](https://github.com/openclaw/openclaw/security/advisories/GHSA-h7f7-89mm-pqh6) | MEDIUM | Harden skill download target directory validation | - | pending | @Adam55A-code |
| [GHSA-6c9j-x93c-rw6j](https://github.com/openclaw/openclaw/security/advisories/GHSA-6c9j-x93c-rw6j) | MEDIUM | OpenClaw safeBins file-existence oracle information disclosure | CWE-203 | pending | @nedlir |
| [GHSA-4685-c5cp-vp95](https://github.com/openclaw/openclaw/security/advisories/GHSA-4685-c5cp-vp95) | LOW | safeBins stdin-only bypass via sort output and recursive grep flags | CWE-78, CWE-184 | pending | @nedlir |
| [GHSA-r6h2-5gqq-v5v6](https://github.com/openclaw/openclaw/security/advisories/GHSA-r6h2-5gqq-v5v6) | LOW | OC-22: Reject symlinks in local skill packaging script | CWE-59 | v2026.2.18 | @aether-ai-agent |
| [GHSA-wh94-p5m6-mr7j](https://github.com/openclaw/openclaw/security/advisories/GHSA-wh94-p5m6-mr7j) | MEDIUM | Discord moderation authorization used untrusted sender identity in tool-driven flows | CWE-862, CWE-290 | v2026.2.18 | @aether-ai-agent |
| [GHSA-cxpw-2g23-2vgw](https://github.com/openclaw/openclaw/security/advisories/GHSA-cxpw-2g23-2vgw) | LOW | OC-53: ACP prompt-size checks missing in local stdio bridge | CWE-400 | v2026.2.18 | @aether-ai-agent |
| [GHSA-w45g-5746-x9fp](https://github.com/openclaw/openclaw/security/advisories/GHSA-w45g-5746-x9fp) | MEDIUM | Harden cron webhook delivery against SSRF | CWE-918 | v2026.2.18 | @Adam55A-code |
| [GHSA-82g8-464f-2mv7](https://github.com/openclaw/openclaw/security/advisories/GHSA-82g8-464f-2mv7) | CRITICAL | Environment Variable Injection via Host Exec Env | CWE-78 | v2026.2.21 | @aether-ai-agent |
| [GHSA-vvjh-f6p9-5vcf](https://github.com/openclaw/openclaw/security/advisories/GHSA-vvjh-f6p9-5vcf) | HIGH | ZDI-CAN-29311: Canvas Authentication Bypass | CWE-291 | pending | @zdi-disclosures |
| [GHSA-vffc-f7r7-rx2w](https://github.com/openclaw/openclaw/security/advisories/GHSA-vffc-f7r7-rx2w) | HIGH | Line Break Injection in systemd Unit Generation Enables Local Command Execution | CWE-77 | pending | @tdjackey |
| [GHSA-w7j5-j98m-w679](https://github.com/openclaw/openclaw/security/advisories/GHSA-w7j5-j98m-w679) | HIGH | Multiple E2E/test Dockerfiles run all processes as root | CWE-250 | pending | @TerminalsandCoffee |
| [GHSA-56pc-6hvp-4gv4](https://github.com/openclaw/openclaw/security/advisories/GHSA-56pc-6hvp-4gv4) | HIGH | OC-06: Arbitrary file read via $include directive | CWE-22 | pending | @aether-ai-agent |
| [GHSA-r5fq-947m-xm57](https://github.com/openclaw/openclaw/security/advisories/GHSA-r5fq-947m-xm57) | HIGH | Path traversal in apply_patch could write/delete files outside workspace | CWE-22 | pending | @p80n-sec |
| [GHSA-jrvc-8ff5-2f9f](https://github.com/openclaw/openclaw/security/advisories/GHSA-jrvc-8ff5-2f9f) | HIGH | SSRF guard bypass via full-form IPv4-mapped IPv6 (loopback / metadata reachable) | CWE-918 | pending | @yueyueL |
| [GHSA-jqpq-mgvm-f9r6](https://github.com/openclaw/openclaw/security/advisories/GHSA-jqpq-mgvm-f9r6) | HIGH | Command hijacking via unsafe PATH handling (bootstrapping + node-host overrides) | CWE-78, CWE-427, CWE-807 | pending | @akhmittra |
| [CVE-2026-26325 / GHSA-h3f9-mjwj-w476](https://github.com/openclaw/openclaw/security/advisories/GHSA-h3f9-mjwj-w476) | HIGH | Node host system.run rawCommand/command mismatch can bypass allowlist/approvals | - | pending | @christos-eth |
| [GHSA-3xfw-4pmr-4xc5](https://github.com/openclaw/openclaw/security/advisories/GHSA-3xfw-4pmr-4xc5) | MEDIUM | OpenClaw safeBins grep -e File Read Bypass (stdin-only policy bypass) | CWE-184 | pending | @athuljayaram |
| [GHSA-jq4x-98m3-ggq6](https://github.com/openclaw/openclaw/security/advisories/GHSA-jq4x-98m3-ggq6) | MEDIUM | ZDI-CAN-29312: Canvas Path Traversal Information Disclosure | CWE-22 | pending | @zdi-disclosures |
| [GHSA-jjgj-cpp9-cvpv](https://github.com/openclaw/openclaw/security/advisories/GHSA-jjgj-cpp9-cvpv) | MEDIUM | Local File Exfiltration via MCP Tool Result MEDIA: Directive Injection | CWE-22, CWE-200 | pending | @NucleiAv |
| [GHSA-mqr9-vqhq-3jxw](https://github.com/openclaw/openclaw/security/advisories/GHSA-mqr9-vqhq-3jxw) | MEDIUM | Windows Scheduled Task script generation allowed local command injection | - | pending | @tdjackey |
| [GHSA-pj5x-38rw-6fph](https://github.com/openclaw/openclaw/security/advisories/GHSA-pj5x-38rw-6fph) | MEDIUM | Command Injection via unescaped environment assignments in Windows Scheduled Task | CWE-78 | pending | @tdjackey |
| [GHSA-pfv7-rr5m-qmv6](https://github.com/openclaw/openclaw/security/advisories/GHSA-pfv7-rr5m-qmv6) | MEDIUM | Auth inconsistency on local Browser Extension Relay /extension endpoint | - | pending | @tdjackey |
| [GHSA-8cp7-rp8r-mg77](https://github.com/openclaw/openclaw/security/advisories/GHSA-8cp7-rp8r-mg77) | MEDIUM | SSRF guard bypass via IPv6 transition over ISATAP | CWE-918 | pending | @zpbrent |
| [GHSA-c6hr-w26q-c636](https://github.com/openclaw/openclaw/security/advisories/GHSA-c6hr-w26q-c636) | MEDIUM | ReDoS and regex injection via unescaped Feishu mention metadata in RegExp | CWE-1333 | pending | - |
| [GHSA-2mc2-g238-722j](https://github.com/openclaw/openclaw/security/advisories/GHSA-2mc2-g238-722j) | MEDIUM | iMessage remote attachment SCP hardening (strict host-key checks and remoteHost validation) | CWE-78, CWE-295 | pending | @allsmog |
| [GHSA-vj3g-5px3-gr46](https://github.com/openclaw/openclaw/security/advisories/GHSA-vj3g-5px3-gr46) | MEDIUM | Path traversal in Feishu media temp-file naming allows writes outside os.tmpdir() | CWE-22 | pending | @allsmog |
| [GHSA-7fcc-cw49-xm78](https://github.com/openclaw/openclaw/security/advisories/GHSA-7fcc-cw49-xm78) | MEDIUM | Command injection via Windows shell fallback in Lobster tool execution | CWE-78 | pending | @allsmog |
| [GHSA-3x3x-h76w-hp98](https://github.com/openclaw/openclaw/security/advisories/GHSA-3x3x-h76w-hp98) | MEDIUM | OpenClaw exec allowlist safeBins short-option bypass | CWE-184 | pending | @FailButWin, @Redgrave961 |
| [GHSA-g75x-8qqm-2vxp](https://github.com/openclaw/openclaw/security/advisories/GHSA-g75x-8qqm-2vxp) | MEDIUM | tools.exec.safeBins PATH-hijack allowed trojan binaries to bypass allowlist checks | CWE-426, CWE-863 | pending | @jackhax |
| [GHSA-gq83-8q7q-9hfx](https://github.com/openclaw/openclaw/security/advisories/GHSA-gq83-8q7q-9hfx) | MEDIUM | Serialize sandbox registry writes to prevent races and delete-rollback corruption | - | pending | @kexinoh |
| [GHSA-x9cf-3w63-rpq9](https://github.com/openclaw/openclaw/security/advisories/GHSA-x9cf-3w63-rpq9) | MEDIUM | Sensitive file disclosure via stageSandboxMedia | CWE-22 | pending | @zpbrent |
| [GHSA-p536-vvpp-9mc8](https://github.com/openclaw/openclaw/security/advisories/GHSA-p536-vvpp-9mc8) | MEDIUM | Web Fetch DoS via unbounded response parsing | CWE-400 | pending | @xuemian168, @ShangzhiXu |
| [CVE-2026-26323 / GHSA-m7x8-2w3w-pr42](https://github.com/openclaw/openclaw/security/advisories/GHSA-m7x8-2w3w-pr42) | MEDIUM | Command injection in maintainer clawtributors updater | CWE-78 | pending | @scanleale, @MegaManSec |
| [GHSA-v773-r54f-q32w](https://github.com/openclaw/openclaw/security/advisories/GHSA-v773-r54f-q32w) | MEDIUM | Slack: dmPolicy=open allowed any DM sender to run privileged slash commands | - | pending | @christos-eth |
| [GHSA-xvhf-x56f-2hpp](https://github.com/openclaw/openclaw/security/advisories/GHSA-xvhf-x56f-2hpp) | MEDIUM | Exec approvals: safeBins could bypass stdin-only constraints via shell expansion | - | pending | @christos-eth |
| [GHSA-fg3m-vhrr-8gj6](https://github.com/openclaw/openclaw/security/advisories/GHSA-fg3m-vhrr-8gj6) | LOW | Windows Lobster shell fallback command injection in constrained fallback path | CWE-78 | pending | @tdjackey |
| [GHSA-ff98-w8hj-qrxf](https://github.com/openclaw/openclaw/security/advisories/GHSA-ff98-w8hj-qrxf) | LOW | Plugin runtime command execution is part of trusted plugin boundary | CWE-78 | pending | @markmusson |
| [GHSA-2hm8-rqrm-xfjq](https://github.com/openclaw/openclaw/security/advisories/GHSA-2hm8-rqrm-xfjq) | LOW | Owner-only gateway tool access checks were incomplete in specific authenticated DM flows | CWE-269, CWE-863 | pending | @Adam55A-code |
| [GHSA-mfg5-7q5g-f37j](https://github.com/openclaw/openclaw/security/advisories/GHSA-mfg5-7q5g-f37j) | HIGH | Voice-call media stream validated streams after upgrade, allowing pre-start unauthenticated sockets to increase resource pressure | - | v2026.2.22 | @jiseoung |
| [GHSA-vmqr-rc7x-3446](https://github.com/openclaw/openclaw/security/advisories/GHSA-vmqr-rc7x-3446) | MEDIUM | Non-default safeBins sort configuration can bypass intended allowlist approval constraints | - | >= v2026.2.22 | @tdjackey |
| [GHSA-qhrr-grqp-6x2g](https://github.com/openclaw/openclaw/security/advisories/GHSA-qhrr-grqp-6x2g) | MEDIUM | tools.exec.safeBins trusted PATH directories allowed binary shadowing in allowlist mode | - | >= v2026.2.22 | @tdjackey |
| [GHSA-rx3g-mvc3-qfjf](https://github.com/openclaw/openclaw/security/advisories/GHSA-rx3g-mvc3-qfjf) | MEDIUM | Avatar symlink traversal can expose out-of-workspace local files | - | >= v2026.2.22 | @tdjackey |
| [GHSA-6j27-pc5c-m8w8](https://github.com/openclaw/openclaw/security/advisories/GHSA-6j27-pc5c-m8w8) | MEDIUM | allow-always wrapper persistence could bypass future approvals and enable command execution | - | v2026.2.22 | @tdjackey |
| [GHSA-9868-vxmx-w862](https://github.com/openclaw/openclaw/security/advisories/GHSA-9868-vxmx-w862) | MEDIUM | system.run allowlist bypass via shell line-continuation command substitution | - | >= v2026.2.22 | @tdjackey |
| [GHSA-f6h3-846h-2r8w](https://github.com/openclaw/openclaw/security/advisories/GHSA-f6h3-846h-2r8w) | MEDIUM | Elevated allowFrom matching tightened for sender-scoped authorization | - | >= v2026.2.22 (Feb 23 sync 16) | @jiseoung |
| [GHSA-wpph-cjgr-7c39](https://github.com/openclaw/openclaw/security/advisories/GHSA-wpph-cjgr-7c39) | MEDIUM | Typed sender-key matching for toolsBySender prevents identity-collision policy bypass | - | v2026.2.22 (Feb 23 sync 16) | @jiseoung |
| [GHSA-j4xf-96qf-rx69](https://github.com/openclaw/openclaw/security/advisories/GHSA-j4xf-96qf-rx69) | MEDIUM | Feishu allowFrom authorization bypass via display-name collision | - | >= v2026.2.22 | @jiseoung |
| [GHSA-4rqq-w8v4-7p47](https://github.com/openclaw/openclaw/security/advisories/GHSA-4rqq-w8v4-7p47) | LOW | Incomplete IPv4 special-use SSRF blocking in web fetch guard | - | >= v2026.2.22 | @princeeismond-dot |
| [GHSA-5h2c-8v84-qpvr](https://github.com/openclaw/openclaw/security/advisories/GHSA-5h2c-8v84-qpvr) | MEDIUM | Shell-env fallback trusted startup env and could execute attacker-influenced login-shell paths | - | >= v2026.2.22 | @tdjackey |
| [GHSA-8mf7-vv8w-hjr2](https://github.com/openclaw/openclaw/security/advisories/GHSA-8mf7-vv8w-hjr2) | LOW | tools.exec.safeBins generic fallback allowed interpreter-style inline payload execution in allowlist mode | - | >= v2026.2.22 | @tdjackey |
| [GHSA-2fgq-7j6h-9rm4](https://github.com/openclaw/openclaw/security/advisories/GHSA-2fgq-7j6h-9rm4) | MEDIUM | system.run shell-wrapper env injection via SHELLOPTS/PS4 can bypass allowlist intent (RCE) | - | >= v2026.2.22 | @tdjackey |
| [GHSA-5847-rm3g-23mw](https://github.com/openclaw/openclaw/security/advisories/GHSA-5847-rm3g-23mw) | MEDIUM | Hook auth rate limiter bypass via IPv4-mapped IPv6 client key variants | - | >= v2026.2.22 | - |
| [GHSA-9mph-4f7v-fmvh](https://github.com/openclaw/openclaw/security/advisories/GHSA-9mph-4f7v-fmvh) | MEDIUM | Agent avatar symlink traversal in gateway session metadata | - | >= v2026.2.22 | - |
| [GHSA-v6x2-2qvm-6gv8](https://github.com/openclaw/openclaw/security/advisories/GHSA-v6x2-2qvm-6gv8) | LOW | Gateway auth token reuse in owner ID prompt hashing fallback | - | v2026.2.22 | - |
| [GHSA-659f-22xc-98f2](https://github.com/openclaw/openclaw/security/advisories/GHSA-659f-22xc-98f2) | MEDIUM | Hook transform path containment missed symlink-resolved escapes | - | v2026.2.22 | - |
| [GHSA-xgf2-vxv2-rrmg](https://github.com/openclaw/openclaw/security/advisories/GHSA-xgf2-vxv2-rrmg) | MEDIUM | Shell startup env injection bypasses system.run allowlist intent (RCE class) | - | >= v2026.2.22 | @tdjackey |
| [GHSA-jj82-76v6-933r](https://github.com/openclaw/openclaw/security/advisories/GHSA-jj82-76v6-933r) | MEDIUM | Exec allowlist wrapper analysis did not unwrap env/shell dispatch chains | - | >= v2026.2.22 | @tdjackey |
| [GHSA-7f4q-9rqh-x36p](https://github.com/openclaw/openclaw/security/advisories/GHSA-7f4q-9rqh-x36p) | MEDIUM | macOS optional allowlist basename matching could bypass path-based policy | - | >= v2026.2.22 | @tdjackey |
| [GHSA-9p38-94jf-hgjj](https://github.com/openclaw/openclaw/security/advisories/GHSA-9p38-94jf-hgjj) | MEDIUM | macOS system.run allowlist bypass via quoted command substitution | - | >= v2026.2.22 | @tdjackey |
| [GHSA-rxxp-482v-7mrh](https://github.com/openclaw/openclaw/security/advisories/GHSA-rxxp-482v-7mrh) | MEDIUM | Inbound media downloads could exceed configured byte limits before rejection across multiple channels | - | >= v2026.2.22 | @tdjackey |
| [GHSA-w76h-8m22-hpgh](https://github.com/openclaw/openclaw/security/advisories/GHSA-w76h-8m22-hpgh) | MEDIUM | MSTeams attachment redirect handling could bypass configured media host allowlists | - | >= v2026.2.22 | @tdjackey |
| [GHSA-5ghc-98wh-gwwf](https://github.com/openclaw/openclaw/security/advisories/GHSA-5ghc-98wh-gwwf) | LOW | Control UI static file handler follows symlinks and allows out-of-root file read | - | >= v2026.2.22 | @tdjackey |
| [GHSA-f8mp-vj46-cq8v](https://github.com/openclaw/openclaw/security/advisories/GHSA-f8mp-vj46-cq8v) | MEDIUM | Shell env fallback trusts unvalidated SHELL path from host environment | - | >= v2026.2.22 | @athuljayaram |
| [GHSA-rv2q-f2h5-6xmg](https://github.com/openclaw/openclaw/security/advisories/GHSA-rv2q-f2h5-6xmg) | MEDIUM | Node role device-identity bypass allows unauthorized node.event injection | - | >= v2026.2.22 | @tdjackey |
| [GHSA-jwf4-8wf4-jf2m](https://github.com/openclaw/openclaw/security/advisories/GHSA-jwf4-8wf4-jf2m) | MEDIUM | BlueBubbles (optional plugin) pairing/allowlist mismatch when allowFrom is empty | - | v2026.2.22 | @tdjackey |
| [GHSA-4cqv-h74h-93j4](https://github.com/openclaw/openclaw/security/advisories/GHSA-4cqv-h74h-93j4) | MEDIUM | Discord allowFrom slug-collision authorization bypass | - | >= v2026.2.22 | @tdjackey |
| [GHSA-jxrq-8fm4-9p58](https://github.com/openclaw/openclaw/security/advisories/GHSA-jxrq-8fm4-9p58) | MEDIUM | Zip extraction symlink traversal could write outside destination | - | >= v2026.2.22 | @tdjackey |
| [GHSA-4gc7-qcvf-38wg](https://github.com/openclaw/openclaw/security/advisories/GHSA-4gc7-qcvf-38wg) | MEDIUM | Non-default configuration: manually adding sort to tools.exec.safeBins could bypass allowlist approval via --compress-program | - | >= v2026.2.22 | @tdjackey |
| [GHSA-8j9w-9pm5-pv8m](https://github.com/openclaw/openclaw/security/advisories/GHSA-8j9w-9pm5-pv8m) | MEDIUM | DUPLICATE: safeBins denied flags bypass via GNU long-option abbreviations | - | pending | @jiseoung |
| [GHSA-7jx5-9fjg-hp4m](https://github.com/openclaw/openclaw/security/advisories/GHSA-7jx5-9fjg-hp4m) | MEDIUM | ACP permission auto-approval bypass via untrusted tool metadata | - | pending | @nedlir |
| [GHSA-796m-2973-wc5q](https://github.com/openclaw/openclaw/security/advisories/GHSA-796m-2973-wc5q) | HIGH | exec allowlist/safeBins policy-runtime mismatch via env -S wrapper interpretation | - | pending | @jiseoung |
| [GHSA-gwqp-86q6-w47g](https://github.com/openclaw/openclaw/security/advisories/GHSA-gwqp-86q6-w47g) | MEDIUM | exec allow-always bypass via unrecognized shell wrappers (busybox/toybox sh -c) | - | pending | @jiseoung |
| [GHSA-2ch6-x3g4-7759](https://github.com/openclaw/openclaw/security/advisories/GHSA-2ch6-x3g4-7759) | MEDIUM | commands.allowFrom accepted conversation identifiers via ctx.From | - | pending | @jiseoung |
| [GHSA-vqx8-9xxw-f2m7](https://github.com/openclaw/openclaw/security/advisories/GHSA-vqx8-9xxw-f2m7) | MEDIUM | Voice-call Twilio webhook replay bypass via randomized event ID deduplication | - | pending | @jiseoung |
| [GHSA-q6qf-4p5j-r25g](https://github.com/openclaw/openclaw/security/advisories/GHSA-q6qf-4p5j-r25g) | MEDIUM | Image tool bypasses tools.fs.workspaceOnly on sandbox mount paths | - | Feb 25 sync 2 | @tdjackey |
| [GHSA-h9xm-j4qg-fvpg](https://github.com/openclaw/openclaw/security/advisories/GHSA-h9xm-j4qg-fvpg) | MEDIUM | Experimental apply_patch may bypass workspace-only checks in opt-in sandbox mounts | - | pending | @tdjackey |
| [GHSA-48wf-g7cp-gr3m](https://github.com/openclaw/openclaw/security/advisories/GHSA-48wf-g7cp-gr3m) | MEDIUM | Allowlist exec-guard bypass via env -S | - | pending | @tdjackey |
| [GHSA-6x2m-hqfw-hvpj](https://github.com/openclaw/openclaw/security/advisories/GHSA-6x2m-hqfw-hvpj) | MEDIUM | Node exec approvals could be replayed across nodes | - | pending | @tdjackey |
| [GHSA-2j9j-gf59-p4p5](https://github.com/openclaw/openclaw/security/advisories/GHSA-2j9j-gf59-p4p5) | LOW | iOS deep link (openclaw://agent) can trigger gateway agent requests without local confirmation | - | pending | @GCXWLP |
| [GHSA-3c6h-g97w-fg78](https://github.com/openclaw/openclaw/security/advisories/GHSA-3c6h-g97w-fg78) | HIGH | tools.exec.safeBins sort long-option abbreviation bypass skips exec approval in allowlist mode | - | Feb 25 sync 2 | @tdjackey |
| [GHSA-p4wh-cr8m-gm6c](https://github.com/openclaw/openclaw/security/advisories/GHSA-p4wh-cr8m-gm6c) | MEDIUM | Shell-env trusted-prefix fallback allows attacker-controlled binary execution via $SHELL | - | pending | @tdjackey |
| [GHSA-7ff8-xjh3-mgh6](https://github.com/openclaw/openclaw/security/advisories/GHSA-7ff8-xjh3-mgh6) | MEDIUM | Non-default autoAllowSkills setting could bypass on-miss exec prompt | - | pending | @tdjackey |
| [GHSA-2ww6-868g-2c56](https://github.com/openclaw/openclaw/security/advisories/GHSA-2ww6-868g-2c56) | MEDIUM | HTML injection via unvalidated image MIME type in data-URL interpolation | - | Feb 25 sync 2 | @allsmog |
| [GHSA-r294-2894-92j3](https://github.com/openclaw/openclaw/security/advisories/GHSA-r294-2894-92j3) | MEDIUM | Stored XSS in exported session HTML viewer via markdown/raw-HTML rendering | - | pending | @allsmog |
| [GHSA-534w-2vm4-89xr](https://github.com/openclaw/openclaw/security/advisories/GHSA-534w-2vm4-89xr) | MEDIUM | Zalo group sender allowlist bypass permits unauthorized GROUP dispatch | - | pending | @tdjackey |
| [GHSA-gw85-xp4q-5gp9](https://github.com/openclaw/openclaw/security/advisories/GHSA-gw85-xp4q-5gp9) | MEDIUM | Synology Chat dmPolicy=allowlist failed open on empty allowedUserIds, allowing unauthorized agent dispatch | - | pending | @tdjackey |
| [GHSA-5gj7-jf77-q2q2](https://github.com/openclaw/openclaw/security/advisories/GHSA-5gj7-jf77-q2q2) | MEDIUM | safeBins static default trusted dirs allow writable-dir binary hijack (jq) | - | pending | @tdjackey |
| [GHSA-33hm-cq8r-wc49](https://github.com/openclaw/openclaw/security/advisories/GHSA-33hm-cq8r-wc49) | MEDIUM | Temporary path handling could write outside OpenClaw temp boundary | - | pending | @tdjackey |
| [GHSA-fqcm-97m6-w7rm](https://github.com/openclaw/openclaw/security/advisories/GHSA-fqcm-97m6-w7rm) | MEDIUM | Message action attachment hydration bypasses local media root checks when sandboxRoot is unset | - | pending | @GCXWLP |
| [GHSA-6rcp-vxwf-3mfp](https://github.com/openclaw/openclaw/security/advisories/GHSA-6rcp-vxwf-3mfp) | MEDIUM | system.run shell-wrapper positional argv carriers could execute hidden commands under misleading approval text | - | pending | @tdjackey |
| [GHSA-m8v2-6wwh-r4gc](https://github.com/openclaw/openclaw/security/advisories/GHSA-m8v2-6wwh-r4gc) | MEDIUM | Sandbox bind validation could bypass allowed-root and blocked-path checks via symlink-parent missing-leaf paths | - | pending | @tdjackey |
| [GHSA-27cr-4p5m-74rj](https://github.com/openclaw/openclaw/security/advisories/GHSA-27cr-4p5m-74rj) | MEDIUM | Workspace-only sandbox guard mismatch for @-prefixed absolute paths | - | pending | @tdjackey |
| [GHSA-h656-5vcf-cm23](https://github.com/openclaw/openclaw/security/advisories/GHSA-h656-5vcf-cm23) | MEDIUM | Telegram: Unauthorized Senders Trigger Media Download and Disk Write Before Access Check | - | pending | @v8hid |
| [GHSA-ww6v-v748-x7g9](https://github.com/openclaw/openclaw/security/advisories/GHSA-ww6v-v748-x7g9) | LOW | sandbox network isolation bypass via docker.network=container:<id> | - | pending | @tdjackey |
| [GHSA-ccg8-46r6-9qgj](https://github.com/openclaw/openclaw/security/advisories/GHSA-ccg8-46r6-9qgj) | MEDIUM | Dispatch-wrapper depth-cap mismatch can bypass shell-wrapper approval gating in system.run allowlist mode | - | Feb 25 sync 5 (57c9a1818) | @tdjackey |
| [GHSA-9f72-qcpw-2hxc](https://github.com/openclaw/openclaw/security/advisories/GHSA-9f72-qcpw-2hxc) | HIGH | Native prompt image auto-load did not honor tools.fs.workspaceOnly in sandboxed runs | - | pending | @tdjackey |
| [GHSA-h97f-6pqj-q452](https://github.com/openclaw/openclaw/security/advisories/GHSA-h97f-6pqj-q452) | LOW | IPv6 multicast SSRF classifier bypass | - | pending | - |
| [GHSA-r9q5-c7qc-p26w](https://github.com/openclaw/openclaw/security/advisories/GHSA-r9q5-c7qc-p26w) | MEDIUM | Nextcloud Talk webhook replay attack | - | Feb 26 sync 1 (d512163d6) | - |
| [GHSA-6g25-pc82-vfwp](https://github.com/openclaw/openclaw/security/advisories/GHSA-6g25-pc82-vfwp) | LOW | macOS beta onboarding PKCE verifier storage | - | pending | - |
| [GHSA-fgvx-58p6-gjwc](https://github.com/openclaw/openclaw/security/advisories/GHSA-fgvx-58p6-gjwc) | MEDIUM | Gateway agents.files symlink escape via path traversal | - | Feb 26 sync 1 (125f4071b) | - |
| [GHSA-553v-f69r-656j](https://github.com/openclaw/openclaw/security/advisories/GHSA-553v-f69r-656j) | MEDIUM | Unpaired device operator identity bypass | - | Feb 26 sync 1 (8d1481cb4) | - |
| [GHSA-792q-qw95-f446](https://github.com/openclaw/openclaw/security/advisories/GHSA-792q-qw95-f446) | MEDIUM | Signal reaction notification enqueued before access checks | - | Feb 26 sync 1 (2aa7842ad) | - |
| [GHSA-qj22-xqjr-v83v](https://github.com/openclaw/openclaw/security/advisories/GHSA-qj22-xqjr-v83v) | MEDIUM | Telegram reaction authorization bypass | - | Feb 26 sync 1 (e56b0cf1a) | - |
| [GHSA-36h3-7c54-j27r](https://github.com/openclaw/openclaw/security/advisories/GHSA-36h3-7c54-j27r) | MEDIUM | Browser trace/download temp path symlink escape | - | Feb 26 sync 1 (496a76c03) | - |
| [GHSA-354r-7mfh-7rh2](https://github.com/openclaw/openclaw/security/advisories/GHSA-354r-7mfh-7rh2) | MEDIUM | Discord DM reaction ingress missed authorization checks | - | Feb 26 sync 1 (aedf62ac7) | - |
| [GHSA-vvgp-4c28-m3jm](https://github.com/openclaw/openclaw/security/advisories/GHSA-vvgp-4c28-m3jm) | MEDIUM | Trusted-proxy Control UI pairing bypass | - | Feb 26 sync 1 (0cc3e8137 + ec45c317f) | - |
| [GHSA-hwpq-rrpf-pgcq](https://github.com/openclaw/openclaw/security/advisories/GHSA-hwpq-rrpf-pgcq) | HIGH | system.run approval identity mismatch | - | pending | - |
| [GHSA-3jx4-q2m7-r496](https://github.com/openclaw/openclaw/security/advisories/GHSA-3jx4-q2m7-r496) | HIGH | Browser upload hardlink alias checks workspace bypass | - | Feb 26 sync 1 (ef326f5cd) | - |
| [GHSA-rm2p-j3r7-4x4j](https://github.com/openclaw/openclaw/security/advisories/GHSA-rm2p-j3r7-4x4j) | LOW | Slack reaction/pin sender-policy consistency gap | - | pending | - |
| [GHSA-mwcg-wfq3-4gjc](https://github.com/openclaw/openclaw/security/advisories/GHSA-mwcg-wfq3-4gjc) | MEDIUM | system.run approval TOCTOU race | - | pending | - |
| [GHSA-xmv6-r34m-62p4](https://github.com/openclaw/openclaw/security/advisories/GHSA-xmv6-r34m-62p4) | MEDIUM | Sandbox media fallback tmp symlink bypass | - | pending | - |
| [GHSA-j26j-7qc4-3mrf](https://github.com/openclaw/openclaw/security/advisories/GHSA-j26j-7qc4-3mrf) | MEDIUM | MS Teams fileConsent conversation binding missing | - | Feb 26 sync 1 (347f7b955) | - |
| [GHSA-x2ff-j5c2-ggpr](https://github.com/openclaw/openclaw/security/advisories/GHSA-x2ff-j5c2-ggpr) | HIGH | Slack interactive callbacks skip sender authorization checks | - | Feb 26 sync 1 (ce8c67c31) | - |
| [GHSA-jmmg-jqc7-5qf4](https://github.com/openclaw/openclaw/security/advisories/GHSA-jmmg-jqc7-5qf4) | HIGH | Browser-origin WebSocket auth gap allows non-loopback connections | - | Feb 26 sync 1 (c736f11a1) | - |

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

**Description:** The `isValidMedia()` function in `src/media/parse.ts` (now at lines 36-64) previously accepted arbitrary paths including system files like `/etc/passwd`, `~/.ssh/id_rsa`, and traversal paths like `../../../etc/passwd`. An attacker could craft a message containing a `MEDIA:` reference pointing to sensitive local files. Fixed: `isValidMedia()` now accepts all path types but `assertLocalMediaAllowed()` (`src/web/media.ts:81-138`) enforces directory root guards at load time.

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

### GHSA-fhvm-j76f-qmjv: Access-Group Authorization Bypass if Channel Type Lookup Fails

**Severity:** HIGH (CWE-285: Improper Authorization)
**Affected:** < v2026.2.2
**Credits:** @simecek

**Description:** Access-group authorization bypass if channel type lookup fails. Originally disclosed as Telegram webhook auth bypass (missing secret), the advisory was updated to reflect a broader access-group authorization issue: if channel type resolution fails during authorization, the authorization check may be bypassed entirely.

**Impact:** Authorization bypass — unauthorized users could interact with the agent when channel type lookup fails.

**Fix:** Commit `ca92597e1`. Authorization handler now fails closed when channel type cannot be resolved.

### GHSA-rmxw-jxxx-4cpc: Matrix Allowlist Bypass via displayName

**Severity:** MEDIUM
**Affected:** < v2026.2.2
**Credits:** @MegaManSec

**Description:** The Matrix channel plugin's allowlist matching accepted display names in addition to full MXIDs (`@user:server`). An attacker could set their display name to match an allowed user's MXID, bypassing the allowlist restriction.

**Impact:** Allowlist bypass in Matrix channel — unauthorized users could interact with the agent by spoofing display names.

**Fix:** Commit `8f3bfbd1c`. Matrix allowlist now requires full MXIDs (`@user:server`) and only accepts single exact matches from directory search. See [Feb 4 sync 1](./post-merge-hardening/2026-02-04-sync-1.md).

### GHSA-4rj2-gpmh-qq5x: Inbound Allowlist Policy Bypass in Voice-Call Extension

**Severity:** CRITICAL (CWE-287: Improper Authentication)
**Affected:** <= v2026.2.1
**Published:** 2026-02-14
**Credits:** @simecek, @MegaManSec (reporters); @stanislavfortaisle (analyst)

**Description:** The optional `voice-call` extension's inbound allowlist check in `extensions/voice-call/src/manager.ts` used suffix-based matching and accepted empty caller IDs after normalization. Two bypasses: (1) missing/empty `from` values normalized to an empty string caused the allowlist predicate to evaluate as allowed; (2) suffix-based matching meant any caller number whose digits ended with an allowlisted number would be accepted.

**Impact:** Unauthorized callers could reach auto-response and tool execution when `inboundPolicy=allowlist` or `pairing` was configured. Only affects deployments with the optional voice-call extension enabled.

**Fix:** Commit `f8dfd034f`. Reject inbound calls when caller ID is missing, require strict equality for normalized caller IDs, add regression tests for missing/anonymous caller ID and suffix-collision cases. Patched in >= v2026.2.2.

### CVE-2026-25474 / GHSA-mp5h-m6qj-6292: Telegram Webhook Secret Verification Bypass

**Severity:** HIGH (CWE-345: Insufficient Verification of Data Authenticity)
**Affected:** <= v2026.1.30
**Published:** 2026-02-14
**Credits:** @yueyueL

**Description:** In Telegram webhook mode, if `channels.telegram.webhookSecret` is not set, OpenClaw accepted webhook HTTP requests without verifying Telegram's `X-Telegram-Bot-Api-Secret-Token` header. An attacker who can reach the webhook endpoint could send forged updates processed as if from Telegram. Note: Telegram webhook mode requires explicit configuration of `channels.telegram.webhookUrl`.

**Impact:** Forged Telegram updates could trigger unintended bot actions, depending on enabled commands/tools and configuration.

**Fix:** Commit `ca92597e1` (config validation: `webhookUrl` requires `webhookSecret`). Defense-in-depth: `5643a934` (default webhook bind to loopback), `3cbcba10` (bound request body size/time), `633fe8b9` (runtime guard: reject webhook startup when secret is missing/empty). Patched in >= v2026.2.1.

### GHSA-7vwx-582j-j332: MS Teams Attachment Downloader Leaks Bearer Tokens

**Severity:** HIGH (CWE-201: Insertion of Sensitive Information Into Sent Data)
**Affected:** <= v2026.1.30
**Published:** 2026-02-14
**Credits:** @yueyueL

**Description:** When downloading inbound MS Teams attachments/inline images, OpenClaw may retry a URL with an `Authorization: Bearer <token>` header after receiving 401/403. Because the default download allowlist uses suffix matching (including some multi-tenant suffix domains), a message referencing an untrusted but allowlisted host could cause the bearer token to be sent to the wrong place. Only affects deployments with the optional MS Teams extension enabled.

**Impact:** Bearer token leakage to attacker-controlled domains matching suffix-based allowlist entries.

**Fix:** Commit `41cc5bcd4`. Patched in >= v2026.2.1. Workaround: ensure auth host allowlist is strict (only Microsoft-owned endpoints) and avoid wildcard/broad suffix entries.

### GHSA-r5h9-vjqc-hq3r: Nextcloud Talk Allowlist Bypass via actor.name Spoofing

**Severity:** HIGH
**Affected:** @openclaw/nextcloud-talk <= v2026.2.2
**Published:** 2026-02-14
**Credits:** @MegaManSec

**Description:** In the optional Nextcloud Talk plugin, allowlist matching accepted equality on the mutable `actor.name` (display name) field from webhook payloads, in addition to the stable `actor.id`. An attacker could change their Nextcloud display name to match an allowlisted user ID and bypass DM or room allowlists. Core OpenClaw is not impacted unless the Nextcloud Talk plugin is installed.

**Impact:** Allowlist bypass — unauthorized users could interact with the agent by spoofing display names in Nextcloud Talk.

**Fix:** Commit `6b4b6049b`. Allowlist matching now uses only `actor.id` (stable identifier). Patched in @openclaw/nextcloud-talk >= v2026.2.6.

### GHSA-33rq-m5x2-fvgf: Twitch allowFrom Not Enforced in Optional Plugin

**Severity:** HIGH (CWE-285: Improper Authorization)
**Affected:** >= v2026.1.29, < v2026.2.1
**Published:** 2026-02-14
**Credits:** @MegaManSec

**Description:** In the optional Twitch channel plugin (`extensions/twitch/src/access-control.ts`), `allowFrom` was documented as a hard allowlist of Twitch user IDs but was not enforced as a hard gate. When `allowedRoles` was unset or empty, the access control path defaulted to allow, so any Twitch user who could mention the bot could reach the agent dispatch pipeline. Only affects deployments with the Twitch plugin enabled.

**Impact:** Authorization bypass — any Twitch user could invoke the bot regardless of `allowFrom` configuration, potentially leading to unintended actions and resource/cost exhaustion.

**Fix:** Commit `8c7901c98`. `checkTwitchAccessControl()` now returns `allowed: false` for non-members when `allowFrom` is configured. Patched in >= v2026.2.1.

### GHSA-qrq5-wjgg-rvqw: Path Traversal in Plugin Installation

**Severity:** CRITICAL (CWE-22: Path Traversal)
**Affected:** < v2026.2.1
**Published:** 2026-02-14
**Credits:** @logicx24

**Description:** During plugin installation, crafted plugin archive paths could traverse outside the intended plugin directory. A malicious plugin package could write files to arbitrary locations on the filesystem via path traversal sequences in archive entry names.

**Impact:** Arbitrary file write on the host filesystem during plugin installation, potentially leading to code execution.

**Fix:** Commit `d03eca84`. Plugin installation now validates archive entry paths and rejects traversal sequences. Patched in >= v2026.2.1.

### GHSA-rv39-79c4-7459: Gateway Device Identity Skip

**Severity:** HIGH (CWE-306: Missing Authentication for Critical Function)
**Affected:** < v2026.2.2
**Published:** 2026-02-14
**Credits:** @simecek

**Description:** The gateway device authentication flow could be bypassed under certain conditions, allowing unauthenticated devices to interact with the gateway API without completing the device identity verification step.

**Impact:** Unauthenticated device access to the gateway API, potentially enabling unauthorized agent interactions and configuration access.

**Fix:** Commit `fe81b1d7`. Gateway now enforces device identity verification on all authenticated endpoints. Patched in >= v2026.2.2.

### GHSA-qj77-c3c8-9c3q: Windows cmd.exe Exec Allowlist Bypass

**Severity:** HIGH (CWE-78: OS Command Injection)
**Affected:** < v2026.2.2
**Published:** 2026-02-14
**Credits:** @simecek

**Description:** On Windows, the exec allowlist could be bypassed by invoking commands through `cmd.exe` with specific argument patterns that the allowlist regex did not account for. This allowed execution of commands that should have been blocked by the configured allowlist.

**Impact:** Execution of blocked commands on Windows deployments, bypassing the exec safety allowlist intended to restrict agent tool use.

**Fix:** Commit `a7f4a53ce`. Windows command parsing now normalizes `cmd.exe` invocations before allowlist evaluation. Patched in >= v2026.2.2.

### GHSA-mqpw-46fh-299h: operator.write Exec Approval Bypass via /approve

**Severity:** HIGH (CWE-269: Improper Privilege Management, CWE-863: Incorrect Authorization)
**Affected:** < v2026.2.2
**Published:** 2026-02-14
**Credits:** @yueyueL

**Description:** An operator with `operator.write` permission could bypass exec approval requirements by using the `/approve` command to auto-approve pending tool executions. The `/approve` endpoint did not verify that the approver had the necessary permission level to approve execution of the specific tool being requested.

**Impact:** Privilege escalation — operators with write-only access could approve arbitrary command executions that should require higher-level approval.

**Fix:** Commit `efe2a464`. The `/approve` endpoint now verifies the approver's permission level against the tool's required approval tier. Patched in >= v2026.2.2.

### GHSA-3hcm-ggvf-rch5: Exec Allowlist Bypass via Command Substitution/Backticks

**Severity:** HIGH (CWE-78: OS Command Injection)
**Affected:** <= v2026.2.1
**Published:** 2026-02-14
**Credits:** @simecek

**Description:** The exec approvals allowlist could be bypassed using unescaped `$()` command substitution or backticks inside double-quoted strings. Only affects setups that explicitly enable the optional exec approvals allowlist feature. Default installs are unaffected.

**Impact:** Execution of blocked commands by embedding command substitution syntax in allowlisted command arguments, bypassing the exec safety allowlist.

**Fix:** Commit `d1ecb4607`. Rejects unescaped `$()` and backticks inside double quotes during allowlist analysis. Patched in >= v2026.2.2.

### GHSA-mr32-vwc2-5j6h: Browser Relay /cdp WebSocket Missing Auth

**Severity:** HIGH
**Affected:** openclaw >= v2026.1.20, < v2026.2.1; moltbot <= v0.1.0
**Published:** 2026-02-14
**Credits:** @johnatzeropath, @LeftenantZero, @yueyueL

**Description:** The Browser Relay `/cdp` WebSocket endpoint at `ws://127.0.0.1:18792/cdp` verified the TCP peer was loopback but did not require a shared secret and did not block browser-initiated cross-origin requests. A website running in the browser could connect to the local relay via loopback WebSocket and use CDP to access cookies from other open tabs and run JavaScript in their context. Requires the Browser Relay extension to be installed and active, and the user to visit an untrusted site.

**Impact:** Disclosure of sensitive information (session cookies from other tabs), JavaScript execution in other tab contexts.

**Fix:** Commit `a1e89afcc`. Now requires per-instance `x-openclaw-relay-token` header, rejects `/cdp` upgrades when Origin is present but not `chrome-extension://`, and refuses connections unless the extension is connected. Patched in >= v2026.2.1. See also [PR #11 hardening](./post-merge-hardening.md#post-merge-hardening-pr-11--21-commits).

### CVE-2026-26321 (GHSA-8jpq-5h99-ff5r): Local File Disclosure via Feishu Extension

**GHSA:** GHSA-8jpq-5h99-ff5r
**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-15

**Description:** The `sendMediaFeishu` function in the optional Feishu extension could be abused to read arbitrary local files by manipulating the media path parameter. Requires Feishu extension to be installed and active.

**Impact:** Disclosure of local files accessible to the OpenClaw process.

### GHSA-xw4p-pw82-hqr7: Sandbox Skill Mirroring Path Traversal

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-15

**Description:** The sandbox skill mirroring feature could be tricked into writing files outside the designated sandbox workspace directory via path traversal in skill file paths.

**Impact:** Arbitrary file write outside sandbox boundaries, potentially overwriting system or configuration files.

### GHSA-7q2j-c4q5-rm27: macOS Deep Link Confirmation Truncation

**Severity:** HIGH (CWE-451: UI Misrepresentation)
**Published:** 2026-02-15

**Description:** The macOS deep link confirmation dialog could truncate the displayed agent message, concealing the actual command or action to be executed. An attacker could craft a message with benign-looking text at the start followed by malicious content beyond the truncation point.

**Impact:** User approves execution of a concealed malicious agent message via truncated deep link dialog.

### GHSA-j27p-hq53-9wgc: DoS via Unbounded URL-Backed Media Fetch

**Severity:** HIGH (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-15

**Description:** URL-backed media fetch operations did not enforce size limits, allowing an attacker to trigger downloads of arbitrarily large files that exhaust memory or disk.

**Impact:** Denial of service via memory/disk exhaustion through crafted media URLs.

### GHSA-q447-rj3r-2cgh: DoS via Unbounded Webhook Body Buffering

**Severity:** HIGH (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-15

**Description:** Webhook request body buffering did not enforce size limits, allowing arbitrarily large POST bodies to exhaust server memory.

**Impact:** Denial of service via memory exhaustion through oversized webhook payloads.

### GHSA-3fqr-4cg8-h96q: CSRF Through Loopback Browser Mutation Endpoints

**Severity:** HIGH (CWE-352: Cross-Site Request Forgery)
**Published:** 2026-02-15

**Description:** Browser mutation endpoints accessible via loopback did not validate Origin headers, enabling cross-site request forgery from malicious websites when the user visits them with OpenClaw running locally.

**Impact:** Unauthorized state mutations (config changes, command execution) via CSRF when visiting malicious websites.

### GHSA-rq6g-px6m-c248: Google Chat Webhook Cross-Account Misrouting

**Severity:** HIGH (CWE-284, CWE-639: Authorization Bypass, IDOR)
**Published:** 2026-02-15

**Description:** Google Chat's shared webhook path structure created ambiguity in webhook target resolution, allowing cross-account policy-context misrouting when multiple Google Chat integrations share a deployment.

**Impact:** Webhook messages could be routed to the wrong account's policy context, bypassing access controls.

### GHSA-pv58-549p-qh99: Discovery TXT Records Routing Manipulation

**Severity:** HIGH (CWE-345: Insufficient Verification of Data Authenticity)
**Published:** 2026-02-15

**Description:** Unauthenticated DNS TXT discovery records could be injected to steer gateway routing and TLS pinning decisions, potentially redirecting traffic to attacker-controlled endpoints.

**Impact:** Traffic redirection and TLS downgrade via spoofed discovery records.

### GHSA-cv7m-c9jx-vg7q: Path Traversal in Browser Upload

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-15

**Description:** The browser upload endpoint did not properly validate file paths, allowing path traversal sequences to read arbitrary local files accessible to the OpenClaw process.

**Impact:** Disclosure of local files via crafted upload path parameters.

### GHSA-g6q9-8fvw-f7rf: Gateway Tool Unrestricted gatewayUrl Override

**Severity:** HIGH (CWE-918: SSRF)
**Published:** 2026-02-15

**Description:** The gateway tool allowed unrestricted `gatewayUrl` override, enabling SSRF by redirecting gateway requests to arbitrary URLs including internal network endpoints.

**Impact:** Server-side request forgery to internal services, potential credential exfiltration via URL parameters.

### GHSA-4hg8-92x6-h2f3: Missing Webhook Auth in Telnyx Provider

**Severity:** HIGH (CWE-306: Missing Authentication)
**Published:** 2026-02-15

**Description:** The Telnyx telephony provider extension did not verify webhook request authenticity, allowing unauthenticated requests to trigger agent actions.

**Impact:** Unauthorized message injection and agent command execution via forged Telnyx webhooks.

### GHSA-jmm5-fvh5-gf4p: Non-Constant-Time Token Comparison in Hooks

**Severity:** MEDIUM (CWE-208: Observable Timing Discrepancy)
**Published:** 2026-02-15

**Description:** Hook authentication token comparison used standard string equality instead of constant-time comparison, potentially leaking token characters through timing side-channel.

**Impact:** Theoretical token recovery via timing attack (requires many requests with precise timing measurement).

### GHSA-47q7-97xp-m272: Config Writes Persist Resolved Secrets

**Severity:** MEDIUM
**Published:** 2026-02-15

**Description:** Config write operations could persist resolved `${VAR}` environment variable values to disk in plaintext, instead of preserving the variable reference syntax.

**Impact:** Secret values from environment variables written to config files in plaintext, surviving beyond the process lifetime.

### GHSA-w2cg-vxx6-5xjg: DoS via Large Base64 Media Buffers

**Severity:** MEDIUM (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-15

**Description:** Large base64-encoded media files triggered buffer allocation before size limit checks, allowing memory exhaustion.

**Impact:** Denial of service via memory allocation triggered by oversized base64 media payloads.

### GHSA-h89v-j3x9-8wqj: DoS via Unguarded Archive Extraction

**Severity:** MEDIUM (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-15

**Description:** Archive extraction (ZIP/TAR) did not enforce expansion ratio limits, allowing zip bombs or tar archives with high compression ratios to exhaust disk/memory.

**Impact:** Denial of service via resource exhaustion through crafted archives.

### GHSA-mj5r-hh7j-4gxf: Telegram Allowlist Mutable Username Bypass

**Severity:** MEDIUM (CWE-284, CWE-290: Authorization Bypass, Spoofing)
**Published:** 2026-02-15

**Description:** The Telegram allowlist authorization accepted mutable usernames as identifiers. Since Telegram usernames can be changed, an authorized user could transfer their username to an unauthorized user who would then pass the allowlist check.

**Impact:** Allowlist bypass via Telegram username transfer to unauthorized parties.

### GHSA-g34w-4xqq-h79m: iMessage Group Allowlist Cross-Context Authorization

**Severity:** MEDIUM (CWE-284, CWE-863: Authorization Bypass)
**Published:** 2026-02-15

**Description:** iMessage group allowlist authorization inherited DM pairing-store identities, enabling cross-context command authorization where a user authorized in DMs could execute commands in group contexts they shouldn't have access to.

**Impact:** Command execution in unauthorized group contexts via inherited DM authorization.

### GHSA-8mh7-phf8-xgfm: skills.status Secrets Leak

**Severity:** MEDIUM (CWE-200: Information Disclosure)
**Published:** 2026-02-15

**Description:** The `skills.status` endpoint could leak secret configuration values to clients with only `operator.read` scope, which should not have access to sensitive configuration data.

**Impact:** Disclosure of secret configuration values to lower-privileged gateway clients.

### GHSA-c37p-4qqg-3p76: Twilio Voice Webhook Auth Bypass

**Severity:** MEDIUM (CWE-306: Missing Authentication)
**Published:** 2026-02-15

**Description:** The Twilio voice-call webhook verification could be bypassed when ngrok loopback compatibility mode was enabled, as the loopback detection overrode webhook signature verification.

**Impact:** Unauthenticated voice-call webhook injection when using ngrok loopback mode.

### GHSA-pg2v-8xwh-qhcc: SSRF in Tlon (Urbit) Extension

**Severity:** MEDIUM (CWE-918: SSRF)
**Published:** 2026-02-15

**Description:** The optional Tlon (Urbit) extension authentication flow was vulnerable to SSRF, allowing requests to internal network endpoints through the authentication redirect mechanism.

**Impact:** Server-side request forgery to internal services via Tlon authentication redirect.

### GHSA-7rcp-mxpq-72pj: Chutes Manual OAuth State Validation Bypass

**Severity:** MEDIUM (CWE-352: Cross-Site Request Forgery)
**Published:** 2026-02-16
**Credits:** aether-ai-agent

**Description:** The Chutes extension's manual OAuth flow did not properly validate state parameters, allowing CSRF-style attacks to complete OAuth authorization with attacker-controlled state values.

**Impact:** OAuth state bypass enabling token theft or session fixation in Chutes integrations.

### GHSA-jfv4-h8mc-jcp8: Unvalidated PID Kill via SIGKILL in Process Cleanup

**Severity:** LOW (CWE-283: Uncontrolled Memory Allocation in Process)
**Published:** 2026-02-16
**Credits:** aether-ai-agent

**Description:** Process cleanup did not validate PIDs before sending SIGKILL signals, allowing cleanup routines to potentially target unintended processes.

**Impact:** Unintended process termination; low exploitability as process namespace isolation limits scope.

### GHSA-rwj8-p9vq-25gv: LFI in BlueBubbles Media Path Handling

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @zpbrent

**Description:** The BlueBubbles extension's media handling did not validate file paths, allowing path traversal sequences to read arbitrary local files accessible to the OpenClaw process.

**Impact:** Disclosure of local files via crafted media path parameters in BlueBubbles message attachments.

### GHSA-4564-pvr2-qq4h: Shell Injection in macOS Keychain Credential Write

**Severity:** HIGH (CWE-78: OS Command Injection)
**Published:** 2026-02-16
**Credits:** aether-ai-agent

**Description:** The macOS keychain credential write path passed unsanitized values to shell commands, allowing injection of arbitrary shell commands through crafted credential names or values.

**Impact:** Arbitrary command execution on macOS hosts via injected shell metacharacters in credential write operations.

### GHSA-x22m-j5qq-j49m: Two SSRF via Feishu Extension

**Severity:** HIGH (CWE-918: Server-Side Request Forgery)
**Published:** 2026-02-16
**Credits:** @zpbrent

**Description:** The Feishu extension contained two SSRF vectors: (1) `sendMediaFeishu` allowed fetching from attacker-controlled URLs without origin validation; (2) markdown image rendering fetched images from URLs in message content without SSRF protections.

**Impact:** Server-side request forgery to internal network endpoints via Feishu message content or media operations.

### GHSA-gq9c-wg68-gwj2: Path Traversal in Browser Trace/Download Paths

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @jackhax (Praetorian)

**Description:** Browser trace and file download output paths were not validated against traversal sequences, allowing writes to arbitrary filesystem locations accessible to the OpenClaw process.

**Impact:** Arbitrary file write to attacker-controlled paths via browser automation trace or download operations.

### GHSA-h9g4-589h-68xv: Authentication Bypass in Sandbox Browser Bridge

**Severity:** HIGH (CWE-306: Missing Authentication)
**Published:** 2026-02-16
**Credits:** @jackhax (Praetorian)

**Description:** The browser bridge server running inside the Docker sandbox did not authenticate incoming connections, allowing any process inside the sandbox to invoke browser bridge commands without authentication.

**Impact:** Unauthorized browser control from within sandbox — escalation path from sandbox compromise to browser access.

### GHSA-v6c6-vqqg-w888: Unsafe Hook Module Path Handling

**Severity:** HIGH
**Published:** 2026-02-16
**Credits:** @222n5

**Description:** The gateway's hook module loading did not restrict module paths, allowing relative path components or traversal sequences to load arbitrary JavaScript modules from the filesystem.

**Impact:** Potential code execution via hook configuration pointing to attacker-controlled module paths accessible to the gateway process.

### GHSA-7xhj-55q9-pc3m: Hook Transform Module Path Traversal

**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @akhmittra

**Description:** The hook transform configuration accepted module paths containing traversal sequences, allowing loading of arbitrary JavaScript modules outside the intended plugin directory.

**Impact:** Arbitrary JavaScript module execution via crafted hook transform module path configuration.

### GHSA-5xfq-5mr7-426q: Session ID Path Traversal in Transcript Operations

**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @akhmittra

**Description:** Session IDs were used unsanitized to construct transcript file paths, enabling path traversal via crafted session identifiers to read or write files outside the session transcript directory.

**Impact:** Disclosure or overwrite of arbitrary files via path traversal through unsanitized session IDs.

### GHSA-v892-hwpg-jwqp: Zip Slip in Archive Extraction During Install

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-15
**Credits:** @markmusson

**Description:** Archive extraction during explicit plugin/extension installation did not validate member paths against Zip Slip attacks, allowing archives to write files outside the target extraction directory.

**Impact:** Arbitrary file write during installation via crafted archive with traversal-containing member paths.

### GHSA-qpjj-47vm-64pj: Missing Authentication for Browser-Control Endpoints

**Severity:** HIGH
**Published:** 2026-02-16
**Credits:** @tcusolle

**Description:** Local browser-control HTTP endpoints exposed by the gateway did not require authentication, allowing any process on the local machine to invoke browser control commands without credentials.

**Impact:** Unauthorized browser automation and control via unauthenticated local HTTP endpoints.

### GHSA-w5c7-9qqw-6645: Inter-Session Prompt Provenance Confusion

**Severity:** MEDIUM
**Published:** 2026-02-15
**Credits:** @anbecker

**Description:** Prompts from one session could be treated as direct user instructions in another session context, confusing prompt provenance and potentially allowing cross-session instruction injection.

**Impact:** Cross-session prompt injection enabling one session's content to influence another session's agent behavior.

### CVE-2026-26972 (GHSA-xwjm-j929-xq7c): Path Traversal in Browser Download

**GHSA:** GHSA-xwjm-j929-xq7c
**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @locus-x64

**Description:** The browser download functionality did not validate the destination file path against path traversal sequences, allowing file writes to arbitrary locations accessible to the OpenClaw process.

**Impact:** Arbitrary file write via crafted download destination path in browser automation workflows.

### GHSA-p25h-9q54-ffvw: Zip Slip in Tar Archive Extraction

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-16
**Credits:** @xuemian168

**Description:** Tar archive extraction did not validate member paths against Zip Slip attacks, allowing archives to write files outside the intended extraction directory.

**Impact:** Arbitrary file write via crafted tar archives with traversal-containing member paths.

### GHSA-chm2-m3w2-wcxm: Google Chat Mutable Email Principal Spoofing

**Severity:** LOW (CWE-290, CWE-863: Authentication Bypass by Spoofing, Incorrect Authorization)
**Published:** 2026-02-16
**Credits:** @vincentkoc

**Description:** The Google Chat integration used mutable email addresses as allowlist principals. Since Google Workspace email addresses can be reassigned, an authorized user's email could be transferred to an unauthorized user who would then pass the allowlist check.

**Impact:** Allowlist bypass via email address reassignment in Google Workspace environments.

### GHSA-r6h2-5gqq-v5v6: OC-22: Symlink Following in Local Skill Packaging

**Severity:** LOW (CWE-59: Improper Link Resolution)
**Published:** 2026-02-20
**Credits:** @aether-ai-agent

**Description:** `skills/skill-creator/scripts/package_skill.py` followed symlinks while building `.skill` archives. If run on a crafted skill directory containing symlinks to files outside the skill root, the resulting archive could include unintended file contents. Execution context is local/manual workflow only — not reachable via the gateway/chat runtime.

**Impact:** Potential unintentional disclosure of local files from the packaging machine into a generated `.skill` artifact. Requires local execution of the packaging script on attacker-controlled skill contents.

**Fix commits:** `c275932aa`, `ee1d6427b` (PR #20796). Rejects symlinks during packaging; adds regression tests.

### GHSA-wh94-p5m6-mr7j: Discord Moderation Untrusted Sender Identity

**Severity:** MEDIUM (CWE-862: Missing Authorization, CWE-290: Authentication Bypass by Spoofing)
**Published:** 2026-02-20
**Credits:** @aether-ai-agent

**Description:** Discord moderation actions (`timeout`, `kick`, `ban`) used sender identity from request parameters in tool-driven flows, instead of trusted runtime sender context. A non-admin user could request moderation actions by spoofing sender identity fields in setups where the bot has the necessary guild permissions.

**Impact:** Unauthorized moderation actions against other guild members.

**Fix commit:** `775816035` — moderation authorization now uses trusted sender context (`requesterSenderId`); added permission checks per action type.

### GHSA-cxpw-2g23-2vgw: OC-53: ACP Prompt-Size Checks Missing

**Severity:** LOW (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-20
**Credits:** @aether-ai-agent

**Description:** The ACP bridge accepted very large prompt text blocks and could assemble oversized prompt payloads before forwarding them to `chat.send`. Affects local ACP clients (e.g. IDE integrations) that send unusually large inputs. No privilege escalation and no direct remote attack path in the default ACP model.

**Impact:** Local ACP sessions less responsive with very large prompts; larger-than-expected model usage/cost.

**Fix commits:** `732e53151`, `ebcf19746`, `63e39d7f5` — enforces 2 MiB prompt-text limit before concatenation; adds active-run cleanup on rejection.

### GHSA-w45g-5746-x9fp: Cron Webhook Delivery SSRF

**Severity:** MEDIUM (CWE-918: Server-Side Request Forgery)
**Published:** 2026-02-20
**Credits:** @Adam55A-code

**Description:** Cron webhook delivery in `src/gateway/server-cron.ts` used `fetch()` directly, bypassing SSRF policy checks. Webhook targets could reach private/metadata/internal endpoints.

**Impact:** SSRF via cron webhook delivery to internal/metadata endpoints.

**Fix commits:** `99db4d13e`, `35851cdaf` — routes cron webhook delivery through SSRF-checked fetch.

### GHSA-82g8-464f-2mv7: Environment Variable Injection via Host Exec Env

**Severity:** CRITICAL (CWE-78: OS Command Injection)
**Published:** 2026-02-21
**Credits:** @aether-ai-agent
**Patched:** v2026.2.21

**Description:** Environment variable injection was possible through the gateway's host execution paths. Insufficient centralization of the env-var policy meant that `LD_PRELOAD`, `DYLD_INSERT_LIBRARIES`, `NODE_OPTIONS`, and related variables could, in specific conditions, be injected into host process environments via gateway tool invocations before enforcement was consistently applied across all code paths.

**Impact:** An attacker with gateway access and the ability to trigger bash tool or node-host executions could potentially inject library-loading environment variables to achieve code execution in the gateway host context. Requires authenticated gateway access plus an approved exec tool invocation.

**Fix commits:** `2cdbadee1` (creates `src/infra/host-env-security.ts` with unified `sanitizeHostExecEnv()` at `:46`), `f202e7307` (centralizes policy to `src/infra/host-env-security-policy.json`, policy now shared with macOS Swift layer). `validateHostEnv()` at `src/agents/bash-tools.exec-runtime.ts:34` (enforced at `src/agents/bash-tools.exec.ts:330`) delegates to the centralized enforcement point.

See [Post-merge hardening (Feb 21 sync 7)](./post-merge-hardening/2026-02-21-sync-7.md).

### GHSA-vvjh-f6p9-5vcf: ZDI-CAN-29311: Canvas Authentication Bypass

**Severity:** HIGH (CWE-291: Reliance on IP Address for Authentication)
**Published:** 2026-02-21
**Credits:** @zdi-disclosures

**Description:** ZDI-submitted advisory. The Canvas integration authenticated requests based on peer IP/loopback trust rather than a secret token, allowing authentication bypass from local or proxied requests.

**Impact:** Unauthorized access to Canvas integration endpoints; potential data manipulation or exfiltration from connected Canvas workspaces.

**Fix:** Pending.

### GHSA-jq4x-98m3-ggq6: ZDI-CAN-29312: Canvas Path Traversal Information Disclosure

**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-21
**Credits:** @zdi-disclosures

**Description:** ZDI-submitted advisory. Path traversal in Canvas media/file handling allowed reading files outside the intended directory boundary.

**Impact:** Information disclosure — local files accessible to the OpenClaw process readable via crafted Canvas paths.

**Fix:** Pending.

### GHSA-vffc-f7r7-rx2w: Line Break Injection in systemd Unit Generation

**Severity:** HIGH (CWE-77: Command Injection via OS String)
**Published:** 2026-02-21
**Credits:** @tdjackey

**Description:** When OpenClaw generates systemd unit files for service autostart on Linux, unsanitized values were written into unit file fields. Newline characters in values (e.g., service name, exec path) could inject additional unit file directives, enabling local command execution.

**Impact:** Local code execution via crafted configuration when using systemd-based autostart. Affects Linux deployments only.

**Fix:** Pending.

### GHSA-w7j5-j98m-w679: Multiple E2E/test Dockerfiles run all processes as root

**Severity:** HIGH (CWE-250: Execution with Unnecessary Privileges)
**Published:** 2026-02-21
**Credits:** @TerminalsandCoffee

**Description:** Multiple end-to-end test Dockerfiles ran all container processes as root (uid 0). While test-only, this creates a security risk if test containers are inadvertently used in production or if test environments share resources with production.

**Impact:** Test containers running as root expose the host to container escape risk. Defense-in-depth gap in test infrastructure.

**Fix:** Pending.

### GHSA-56pc-6hvp-4gv4: OC-06: Arbitrary File Read via $include Directive

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-21
**Credits:** @aether-ai-agent

**Description:** The configuration `$include` directive could be used to include arbitrary files from the local filesystem, potentially disclosing sensitive content. An attacker who can influence configuration (e.g., through `config.apply`) could read arbitrary files accessible to the OpenClaw process.

**Impact:** Arbitrary file read — configuration values from sensitive local files (credentials, keys, system files) could be exposed via `$include` directives.

**Fix:** Pending.

### GHSA-jjgj-cpp9-cvpv: Local File Exfiltration via MCP Tool Result MEDIA: Directive Injection

**Severity:** MEDIUM (CWE-22, CWE-200: Path Traversal, Information Disclosure)
**Published:** 2026-02-21
**Credits:** @NucleiAv

**Description:** An MCP server returning a crafted tool result containing a `MEDIA:` directive could cause OpenClaw to stage local files from the agent machine, effectively exfiltrating them through the normal media handling pipeline.

**Impact:** Exfiltration of local files accessible to the OpenClaw process via MCP tool result injection.

**Fix:** Pending.

### GHSA-mqr9-vqhq-3jxw: Windows Scheduled Task Script Command Injection

**Severity:** MEDIUM
**Published:** 2026-02-21
**Credits:** @tdjackey

**Description:** When generating Windows Scheduled Task scripts for autostart, unsafe handling of cmd-style argument construction allowed local command injection via specially crafted values in task parameters.

**Impact:** Local command execution via crafted scheduled task configuration on Windows deployments.

**Fix:** Pending.

### GHSA-pj5x-38rw-6fph: Windows Scheduled Task Environment Assignment Injection

**Severity:** MEDIUM (CWE-78: OS Command Injection)
**Published:** 2026-02-21
**Credits:** @tdjackey

**Description:** Unescaped environment variable assignments in Windows Scheduled Task script generation allowed injection of additional shell commands via crafted environment variable names or values.

**Impact:** Command injection during scheduled task setup on Windows deployments.

**Fix:** Pending.

### GHSA-pfv7-rr5m-qmv6: Browser Extension Relay /extension Auth Inconsistency

**Severity:** MEDIUM
**Published:** 2026-02-21
**Credits:** @tdjackey

**Description:** The `/extension` endpoint of the local Browser Extension Relay had inconsistent authentication handling compared to other relay endpoints. Under certain conditions, requests to this endpoint could succeed without proper authentication.

**Impact:** Unauthorized access to browser extension relay functionality from local processes.

**Fix:** Pending.

### GHSA-8cp7-rp8r-mg77: SSRF Guard Bypass via IPv6 ISATAP Transition

**Severity:** MEDIUM (CWE-918: SSRF)
**Published:** 2026-02-21
**Credits:** @zpbrent

**Description:** The SSRF guard did not handle IPv6 ISATAP (Intra-Site Automatic Tunnel Addressing Protocol) addresses, which embed IPv4 addresses in IPv6 format. Crafted ISATAP addresses could bypass SSRF protection and reach loopback or metadata endpoints.

**Impact:** SSRF to internal/loopback/cloud-metadata endpoints via ISATAP IPv6 address encoding.

**Fix:** Pending.

### GHSA-c6hr-w26q-c636: ReDoS via Feishu Mention Metadata

**Severity:** MEDIUM (CWE-1333: Uncontrolled Regex)
**Published:** 2026-02-21
**Credits:** —

**Description:** Feishu mention metadata (user IDs, department names) was used in dynamically constructed RegExp patterns without proper escaping. Crafted mention values could inject malicious regex patterns causing catastrophic backtracking (ReDoS) or regex injection.

**Impact:** Denial of service via regex catastrophic backtracking from crafted Feishu mention content; potential regex injection to alter matching behavior.

**Fix:** Pending.

### GHSA-2mc2-g238-722j: iMessage Remote Attachment SCP Hardening

**Severity:** MEDIUM (CWE-78: OS Command Injection, CWE-295: Certificate Verification)
**Published:** 2026-02-21
**Credits:** @allsmog

**Description:** iMessage remote attachment downloads via SCP did not enforce strict SSH host-key verification or validate the `remoteHost` parameter against allowed patterns, enabling potential MITM attacks or command injection via crafted host values.

**Impact:** SSH MITM during remote attachment download; potential command injection via malformed host parameter.

**Fix:** Pending.

### GHSA-vj3g-5px3-gr46: Path Traversal in Feishu Media Temp-File Naming

**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-21
**Credits:** @allsmog

**Description:** Feishu media attachment filenames were used to construct temp file paths without sanitization, allowing path traversal sequences in filenames to write files outside `os.tmpdir()`.

**Impact:** Arbitrary file write in paths accessible to OpenClaw via crafted Feishu attachment filenames.

**Fix:** Pending.

### GHSA-7fcc-cw49-xm78: Command Injection via Windows Lobster Shell Fallback

**Severity:** MEDIUM (CWE-78: OS Command Injection)
**Published:** 2026-02-21
**Credits:** @allsmog

**Description:** The Lobster tool execution on Windows used a shell fallback path that did not sanitize command arguments, allowing command injection via crafted tool invocations.

**Impact:** Command injection on Windows deployments using the Lobster shell tool.

**Fix:** Pending.

### GHSA-3x3x-h76w-hp98: safeBins Short-Option Bypass for File Write

**Severity:** MEDIUM (CWE-184: Incomplete Allowlist)
**Published:** 2026-02-21
**Credits:** @FailButWin, @Redgrave961

**Description:** The `safeBins` allowlist checked for specific long-option flags but missed short-option equivalents. For example, allowing `sort` with specific long options could still permit file write via the short `-o` flag, bypassing the intended restriction.

**Impact:** Arbitrary file write via allowed `safeBins` binaries using short options that were not checked by the allowlist guard.

**Fix:** Pending.

### GHSA-g75x-8qqm-2vxp: safeBins PATH-Hijack for Allowlist Bypass

**Severity:** MEDIUM (CWE-426: Untrusted Search Path, CWE-863: Incorrect Authorization)
**Published:** 2026-02-21
**Credits:** @jackhax

**Description:** The `tools.exec.safeBins` feature resolved binary paths via PATH lookup. An attacker who could inject a directory at the front of PATH (e.g., via environment variable manipulation) could place a trojan binary that would pass the allowlist name check but execute attacker-controlled code.

**Impact:** Allowlist bypass via PATH hijacking — trojan binaries masquerading as trusted `safeBins` entries.

**Fix:** Pending.

### GHSA-gq83-8q7q-9hfx: Sandbox Registry Write Race and Delete-Rollback Corruption

**Severity:** MEDIUM
**Published:** 2026-02-21
**Credits:** @kexinoh

**Description:** Concurrent sandbox registry writes were not serialized, creating race conditions that could lead to state corruption. Additionally, partial delete operations could leave the registry in an inconsistent state that was not properly rolled back.

**Impact:** Sandbox state corruption under concurrent operations; potential security-bypass if registry corruption causes stale or incorrect sandbox configurations to be used.

**Fix:** Pending.

### GHSA-x9cf-3w63-rpq9: Sensitive File Disclosure via stageSandboxMedia

**Severity:** MEDIUM (CWE-22: Path Traversal)
**Published:** 2026-02-21
**Credits:** @zpbrent

**Description:** The `stageSandboxMedia` function did not sufficiently validate file paths before staging them for sandbox access, enabling path traversal to expose sensitive local files through the sandbox media pipeline.

**Impact:** Local file disclosure via crafted paths in sandbox media staging operations.

**Fix:** Pending.

### GHSA-r5fq-947m-xm57: Path Traversal in apply_patch Outside Workspace

**Severity:** HIGH (CWE-22: Path Traversal)
**Published:** 2026-02-19
**Credits:** @p80n-sec

**Description:** The `apply_patch` tool did not validate that patch target paths stayed within the workspace directory. A crafted patch with traversal sequences in file paths could write or delete files outside the designated workspace.

**Impact:** Arbitrary file write/delete outside the workspace boundary via crafted patches; potential for writing to sensitive system paths.

**Fix:** Pending.

### GHSA-p536-vvpp-9mc8: Web Fetch DoS via Unbounded Response Parsing

**Severity:** MEDIUM (CWE-400: Uncontrolled Resource Consumption)
**Published:** 2026-02-18
**Credits:** @xuemian168, @ShangzhiXu

**Description:** The web fetch tool parsed response bodies without enforcing size limits during the parsing phase. Responses containing deeply nested structures or extremely large text could exhaust memory during parsing before any size limit check applied.

**Impact:** Denial of service via memory exhaustion from crafted web fetch responses.

**Fix:** Pending.

### GHSA-jrvc-8ff5-2f9f: SSRF Guard Bypass via Full-Form IPv4-Mapped IPv6

**Severity:** HIGH (CWE-918: SSRF)
**Published:** 2026-02-15
**Credits:** @yueyueL

**Description:** The SSRF guard handled the compact IPv4-mapped IPv6 form (`::ffff:127.0.0.1`) but did not handle the full-form representation (`0:0:0:0:0:ffff:127.0.0.1`). Crafted URLs using the full-form notation could bypass SSRF protection to reach loopback or cloud metadata endpoints.

**Impact:** SSRF to loopback/metadata services via full-form IPv4-mapped IPv6 notation.

**Fix:** Pending.

### GHSA-jqpq-mgvm-f9r6: Command Hijacking via Unsafe PATH Handling

**Severity:** HIGH (CWE-78, CWE-427, CWE-807)
**Published:** 2026-02-15
**Credits:** @akhmittra

**Description:** OpenClaw's bootstrapping and node-host startup did not sanitize the `PATH` environment variable before resolving binaries. An attacker who could influence the process environment (e.g., via `NODE_PATH` or pre-existing env injection) could insert malicious directories into PATH to hijack binary resolution.

**Impact:** Command hijacking — attacker-controlled binaries executed instead of trusted system binaries during OpenClaw startup.

**Fix:** Addressed by hardening in Feb 21 sync 7/8 (centralized env sanitization in `host-env-security.ts`).

### CVE-2026-26325 / GHSA-h3f9-mjwj-w476: Node Host system.run rawCommand/command Mismatch

**Severity:** HIGH
**Published:** 2026-02-15
**Credits:** @christos-eth

**Description:** The node-host's `system.run` method accepted both a `rawCommand` (passed directly to shell) and a `command` (passed as argument array) field. The exec allowlist and approval gating checked only one of these fields, creating a mismatch that allowed certain constructions to bypass allowlist evaluation entirely.

**Impact:** Exec allowlist/approval bypass — commands could be structured to pass the `command` field check while the actual execution used `rawCommand` without equivalent validation.

**Fix:** Pending.

### CVE-2026-26323 / GHSA-m7x8-2w3w-pr42: Command Injection in clawtributors Updater

**Severity:** MEDIUM (CWE-78: OS Command Injection)
**Published:** 2026-02-15
**Credits:** @scanleale, @MegaManSec

**Description:** The `clawtributors` maintainer update script used unsanitized user data (contributor names from GitHub API responses) when constructing shell commands, allowing injection of shell metacharacters.

**Impact:** Command injection in the contributors update workflow. Requires running the maintainer script against attacker-controlled GitHub API responses.

**Fix:** Pending.

### GHSA-v773-r54f-q32w: Slack dmPolicy=open Allows Privileged Slash Commands

**Severity:** MEDIUM
**Published:** 2026-02-15
**Credits:** @christos-eth

**Description:** When `channels.slack.dmPolicy` was set to `open`, any Slack DM sender could execute privileged slash commands (e.g., `/approve`, agent control commands) that should require pairing or explicit authorization. The `dmPolicy=open` flag was intended only to allow general messages, not privileged commands.

**Impact:** Unauthorized execution of privileged slash commands from any Slack user in `dmPolicy=open` configurations.

**Fix:** Pending.

### GHSA-xvhf-x56f-2hpp: safeBins stdin-Only Constraint Bypass via Shell Expansion

**Severity:** MEDIUM
**Published:** 2026-02-15
**Credits:** @christos-eth

**Description:** Some `safeBins` entries were configured for stdin-only operation (no file arguments) to prevent file read/write. Shell expansion features (e.g., process substitution `<(...)`, here-strings `<<<`) could be used to pass file-like content to these commands without violating the surface-level argument check, bypassing the stdin-only constraint.

**Impact:** Bypass of stdin-only safeBins restriction via shell expansion constructs.

**Fix:** Pending (partially addressed by exec approvals hardening in Feb 21 sync 8).

### GHSA-fg3m-vhrr-8gj6: Windows Lobster Shell Fallback Injection

**Severity:** LOW (CWE-78: OS Command Injection)
**Published:** 2026-02-21
**Credits:** @tdjackey

**Description:** A constrained Windows shell fallback path in the Lobster tool used for constrained execution was vulnerable to command injection via crafted inputs.

**Impact:** Low-severity command injection in a constrained execution fallback path on Windows.

**Fix:** Pending.

### GHSA-ff98-w8hj-qrxf: Plugin Runtime Command Execution (Trusted Boundary)

**Severity:** LOW (CWE-78)
**Published:** 2026-02-21
**Credits:** @markmusson

**Description:** Plugin runtime command execution operates outside normal exec approval/allowlist gating. This is by design (plugins are trusted), but represents a boundary that should be documented and monitored. Advisory published to clarify the trust model.

**Impact:** Low — within trusted plugin boundary. Advisory is informational/defense-in-depth.

**Fix:** Pending (documentation and trust model clarification).

### GHSA-2hm8-rqrm-xfjq: Gateway Tool Access Checks Incomplete in DM Flows

**Severity:** LOW (CWE-269, CWE-863)
**Published:** 2026-02-21
**Credits:** @Adam55A-code

**Description:** Owner-only gateway tool access checks were not consistently enforced in specific authenticated DM flows, allowing users with lower privilege to access owner-restricted tools in narrow scenarios.

**Impact:** Limited privilege escalation to owner-only tools in specific authenticated DM configurations.

**Fix:** Pending.

### GHSA-hff7-ccv5-52f8: Gateway Tokenless Tailscale Auth on HTTP Routes

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** Tokenless Tailscale authentication was incorrectly applied to HTTP routes in the gateway, allowing unauthenticated access in Tailscale network configurations that expected token-based authentication.

**Impact:** Authentication bypass in Tailscale-integrated gateway deployments.

**Fix:** Pending.

### GHSA-45cg-2683-gfmq: Browser Navigation Guard Allowed Non-Network URL Schemes

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The browser navigation guard did not block non-network URL schemes (e.g., `file://`, `data://`), enabling authenticated browser-tool users to access local file system resources or execute data: URL payloads.

**Impact:** Local file read and potential content injection via browser tool in authenticated sessions.

**Fix:** Pending.

### GHSA-5v6x-rfc3-7qfr: Windows system.run Approval Mismatch on cmd.exe /c Trailing Arguments

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The Windows `system.run` tool had an approval mismatch when `cmd.exe /c` was invoked with trailing arguments, allowing commands to bypass per-command approval checks in certain invocation patterns.

**Impact:** Approval check bypass for Windows shell execution in specific argument configurations.

**Fix:** Pending.

### GHSA-5mx2-2mgw-x8rm: BlueBubbles Beta Plugin Webhook Auth Hardening

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The BlueBubbles beta plugin accepted webhook connections without a password (passwordless fallback) when the server was in beta mode, bypassing the authentication requirement and allowing unauthenticated webhook delivery.

**Impact:** Unauthenticated webhook access to BlueBubbles beta plugin endpoints.

**Fix:** Passwordless fallback removed.

### GHSA-62f6-mrcj-v8h5: Runtime /debug Override Path Accepted Prototype-Reserved Keys

**Severity:** LOW
**Published:** 2026-02-21

**Description:** The runtime `/debug` override path accepted object keys that are reserved by JavaScript prototype chains (e.g., `__proto__`, `constructor`), enabling prototype pollution in debug configuration overrides.

**Impact:** Low — requires authenticated access to debug path; prototype pollution in debug configurations.

**Fix:** Pending.

### GHSA-3cvx-236h-m9fj: Insecure Control UI Auth over Plaintext HTTP

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The opt-in Control UI configuration allowed authentication over plaintext HTTP, enabling credential interception in local network environments where the Control UI was exposed without TLS.

**Impact:** Credential interception for Control UI access in plaintext HTTP configurations.

**Fix:** Pending.

### GHSA-w9cg-v44m-4qv8: BASH_ENV / ENV Startup-File Injection

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** `BASH_ENV` and `ENV` environment variables were not blocked from being passed to spawned shell commands, allowing an attacker with env injection capability to execute arbitrary code via shell startup files.

**Impact:** Code execution via shell startup file injection in spawned commands. Related to env var blocklist hardening (GHSA-82g8-464f-2mv7).

**Fix:** Pending.

### GHSA-8fmp-37rc-p5g7: Config Env Vars Allowed Startup Env Injection

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** Configuration-derived environment variables were passed into service runtime without filtering, allowing startup environment injection that could alter service behavior or enable code execution.

**Impact:** Startup environment injection into service runtime via config-controlled env vars.

**Fix:** Pending.

### GHSA-2rgf-hm63-5qph: Improper X-Forwarded-For Parsing Behind Trusted Proxies

**Severity:** LOW
**Published:** 2026-02-21

**Description:** `X-Forwarded-For` parsing behind trusted proxies did not correctly extract the leftmost (client) IP, allowing clients to spoof their IP address in security decisions that relied on `X-Forwarded-For` for rate limiting or access control.

**Impact:** Client IP spoofing in security decisions behind trusted proxy configurations.

**Fix:** Pending.

### GHSA-43x4-g22p-3hrq: Chrome --no-sandbox Disabled OS-Level Browser Sandbox

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The sandbox browser container launched Chrome with `--no-sandbox`, disabling the OS-level browser sandbox. This eliminated a key defense layer in the sandboxed browsing environment.

**Impact:** Reduced sandbox isolation in browser tool container; OS-level Chrome sandbox removed.

**Fix:** Pending.

### GHSA-25gx-x37c-7pph: Sandbox Browser noVNC Observer Lacked VNC Authentication

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** The noVNC observer in the sandbox browser container did not require VNC authentication, allowing any network-accessible client to observe or interact with the VNC session without credentials.

**Impact:** Unauthenticated VNC session access in sandbox browser noVNC deployments.

**Fix:** Pending.

### GHSA-cjv3-m589-v3rx: Canvas Route Hardening for Mixed-Trust Deployments

**Severity:** MEDIUM
**Published:** 2026-02-21

**Description:** Canvas routes lacked sufficient hardening for mixed-trust deployment scenarios where multiple users share a canvas instance. Route access controls did not adequately enforce per-user trust boundaries.

**Impact:** Unauthorized cross-user canvas route access in mixed-trust configurations.

**Fix:** Pending.

### GHSA-8j9w-9pm5-pv8m: safeBins Denied Flags Bypass via GNU Long-Option Abbreviations (DUPLICATE)

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @jiseoung

**Description:** DUPLICATE of GHSA-3c6h-g97w-fg78. The `safeBins` allowlist analysis did not account for GNU long-option prefix abbreviations — GNU tools accept any unambiguous prefix of a long option (e.g., `--com` for `--compress-program`). Denied flags could be bypassed by passing abbreviated forms not explicitly matched.

**Impact:** `safeBins` file-write or exec-approval bypass via abbreviated long-option flags.

**Fix:** Pending (see GHSA-3c6h-g97w-fg78 for primary advisory).

### GHSA-7jx5-9fjg-hp4m: ACP Permission Auto-Approval Bypass via Untrusted Tool Metadata

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @nedlir

**Description:** The ACP (Agent Control Protocol) auto-approval flow trusted tool metadata from incoming requests when deciding whether to auto-approve a tool invocation. An ACP client could craft a tool metadata payload that satisfied the auto-approval heuristic for a tool it should not have been permitted to auto-invoke.

**Impact:** Unauthorized auto-approval of restricted tools via crafted ACP tool metadata.

**Fix:** Pending.

### GHSA-796m-2973-wc5q: exec allowlist/safeBins Policy-Runtime Mismatch via env -S

**Severity:** HIGH
**Published:** 2026-02-24
**Credits:** @jiseoung

**Description:** The `env -S` flag (split-string interpretation) caused a mismatch between exec allowlist policy evaluation and runtime execution. The allowlist would parse the command using standard argument splitting, while the shell executed via `env -S` with different word splitting, allowing commands to pass the allowlist check but execute differently at runtime.

**Impact:** Exec allowlist bypass — commands could be crafted to pass policy evaluation but execute differently, bypassing approved command restrictions.

**Fix:** Pending.

### GHSA-gwqp-86q6-w47g: exec allow-always Bypass via Shell Wrappers (busybox/toybox sh -c)

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @jiseoung

**Description:** The exec allow-always policy did not recognize busybox or toybox `sh -c` as shell wrappers, allowing commands wrapped in these multiplexer shells to bypass allow-always enforcement checks.

**Impact:** Exec approval bypass via busybox/toybox shell wrapper invocations.

**Fix:** Pending.

### GHSA-2ch6-x3g4-7759: commands.allowFrom Accepted Conversation Identifiers via ctx.From

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @jiseoung

**Description:** The `commands.allowFrom` authorization check accepted conversation-context identifiers from `ctx.From` rather than requiring stable user identifiers. In channels where `ctx.From` reflects a mutable conversation or channel identifier rather than a stable user identity, this could be manipulated to match allowlisted values.

**Impact:** Authorization bypass in specific channel configurations where conversation identifiers are controllable by attackers.

**Fix:** Pending.

### GHSA-vqx8-9xxw-f2m7: Voice-Call Twilio Webhook Replay Bypass

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @jiseoung

**Description:** The voice-call extension's Twilio webhook deduplication used event IDs that were randomly generated per parse rather than derived from the original Twilio event. This meant replayed webhook requests would produce different event IDs on each parse, bypassing the deduplication guard intended to prevent replay attacks.

**Impact:** Webhook replay attacks on voice-call Twilio integrations; replayed call events could trigger duplicate agent actions.

**Fix:** Pending.

### GHSA-q6qf-4p5j-r25g: Image Tool Bypasses tools.fs.workspaceOnly on Sandbox Mounts

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** The image tool did not enforce `tools.fs.workspaceOnly` restrictions when the path resolved to a sandbox mount point. Files accessible via sandbox mounts but outside the defined workspace could be read and exfiltrated via the image tool.

**Impact:** Workspace boundary bypass — out-of-workspace images accessible through sandbox mounts could be read and sent to the conversation.

**Fix:** Commit `370d11554` — `tools.fs.workspaceOnly` now enforced uniformly across all path resolution paths including sandbox mounts. See [Feb 25 sync 2](./post-merge-hardening/2026-02-25-sync-2.md).

### GHSA-h9xm-j4qg-fvpg: Experimental apply_patch Bypass in Opt-In Sandbox Mounts

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** The experimental `apply_patch` tool in opt-in sandbox mount configurations could bypass workspace-only checks. This is off by default and only affects deployments that have explicitly opted into experimental sandbox mount features.

**Impact:** Workspace boundary bypass via `apply_patch` in non-default opt-in sandbox mount configurations.

**Fix:** Pending.

### GHSA-48wf-g7cp-gr3m: Allowlist exec-guard Bypass via env -S

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** The allowlist exec-guard could be bypassed using `env -S` (split-string) invocations. The exec-guard's allowlist analysis did not properly account for `env -S` argument parsing semantics, allowing crafted invocations to pass the guard while executing restricted commands.

**Impact:** Exec allowlist bypass enabling execution of blocked commands via `env -S` argument splitting.

**Fix:** Pending.

### GHSA-6x2m-hqfw-hvpj: Node exec Approvals Replayed Across Nodes

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** Exec approval tokens in node-based execution did not include node-specific identity, allowing an approval granted for one node to be replayed against a different node. This could permit command execution on an unintended node using a legitimately obtained approval.

**Impact:** Approval replay across nodes — an approval granted for Node A could authorize execution on Node B.

**Fix:** Pending.

### GHSA-2j9j-gf59-p4p5: iOS Deep Link Triggers Gateway Requests Without Confirmation

**Severity:** LOW
**Published:** 2026-02-24
**Credits:** @GCXWLP

**Description:** The `openclaw://agent` iOS deep link scheme could trigger gateway agent requests without presenting a local confirmation dialog to the user. An attacker could craft a malicious link that, when opened on an iOS device, sends agent commands to the user's gateway without explicit user confirmation.

**Impact:** Unauthorized agent command dispatch via crafted iOS deep links. Requires the victim to open a malicious link on their device.

**Fix:** Pending.

### GHSA-3c6h-g97w-fg78: safeBins Sort Long-Option Abbreviation Bypass

**Severity:** HIGH
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** The `tools.exec.safeBins` allowlist analysis for `sort` did not account for GNU long-option prefix abbreviations. The `--compress-program` option (which can execute arbitrary commands) could be passed as `--compress-prog` or `--compress-p`, bypassing the blocked long-option check and allowing exec approval to be skipped in allowlist mode.

**Impact:** Exec approval bypass — `sort --compress-prog=<command>` could execute arbitrary commands without triggering the approval gate, bypassing the allowlist safety mechanism.

**Fix:** Commit `0f0b2c025` — `matchAllowlist()` in `src/infra/exec-command-resolution.ts` now enforces exact option matching and rejects prefix abbreviations for blocked flags. See [Feb 25 sync 2](./post-merge-hardening/2026-02-25-sync-2.md).

### GHSA-p4wh-cr8m-gm6c: Shell-env Trusted-Prefix Fallback Allows Attacker-Controlled Binary via $SHELL

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** The shell-env trusted-prefix fallback mechanism resolved the shell binary via the `$SHELL` environment variable. An attacker who could influence `$SHELL` (e.g., via env injection) could point it to an attacker-controlled binary that would be executed with elevated trust in the fallback path.

**Impact:** Attacker-controlled binary execution via `$SHELL` manipulation in shell-env fallback configurations.

**Fix:** Pending.

### GHSA-7ff8-xjh3-mgh6: Non-Default autoAllowSkills Bypass of On-Miss exec Prompt

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @tdjackey

**Description:** When the non-default `autoAllowSkills` setting was enabled, the on-miss exec prompt (shown when an exec command is not in the allowlist) could be bypassed. Skills marked for auto-allow could invoke exec commands that would otherwise trigger user confirmation.

**Impact:** Exec confirmation bypass for skills in non-default `autoAllowSkills` configurations.

**Fix:** Pending.

### GHSA-2ww6-868g-2c56: HTML Injection via Unvalidated Image MIME Type in data-URL

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @allsmog

**Description:** When constructing data-URLs for image content, the MIME type was taken from image metadata without validation. An attacker who could influence image metadata could inject arbitrary MIME types, leading to HTML injection when the data-URL was rendered in a browser context.

**Impact:** HTML injection via crafted image MIME type; potential for content spoofing or XSS in browser-based conversation views.

**Fix:** Commits `ebb568089` (image URL allowlisting — blocks attacker-influenced image sources) and `e5836283a` (safe URL centralization — centralizes URL construction through `resolveSafeExternalUrl()`). See [Feb 25 sync 2](./post-merge-hardening/2026-02-25-sync-2.md).

### GHSA-r294-2894-92j3: Stored XSS in Exported Session HTML Viewer

**Severity:** MEDIUM
**Published:** 2026-02-24
**Credits:** @allsmog

**Description:** Session export to HTML format used markdown/raw-HTML rendering without sufficient sanitization. Stored content in session transcripts (e.g., agent responses containing HTML or script tags) could be rendered as active HTML when the exported session file was opened in a browser.

**Impact:** Stored XSS in exported session HTML files; malicious script execution when victims open exported session files.

**Fix:** Pending.

### GHSA-534w-2vm4-89xr: Zalo group sender allowlist bypass permits unauthorized GROUP dispatch

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** A missing group-sender authorization check in the Zalo plugin allowed unauthorized `GROUP` messages to enter agent dispatch paths in configurations intended to restrict group traffic. Group access checks were not consistently enforced before dispatch for Zalo `GROUP` messages.

**Impact:** Unauthorized senders could trigger agent processing through the Zalo `GROUP` message path, bypassing group allowlist restrictions.

**Fix:** Commit `b4010a0b6` adds explicit runtime group-policy evaluation (`groupPolicy`, `groupAllowFrom`, fallback to `allowFrom`) and fail-closed behavior for missing provider config. Patched in `openclaw >= 2026.2.24`.

### GHSA-gw85-xp4q-5gp9: Synology Chat dmPolicy=allowlist failed open on empty allowedUserIds

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** In the optional `synology-chat` channel plugin (`>= 2026.2.22, <= 2026.2.23`), when `dmPolicy` was `allowlist` and `allowedUserIds` was empty/unset, the policy resolved as allow-all, granting unauthorized senders access to agent dispatch.

**Impact:** Unauthorized Synology Chat senders could trigger downstream agent and tool actions when `allowedUserIds` was empty under `allowlist` mode.

**Fix:** Commits `0ee30361b` and `7655c0cb3` fix the allowlist fail-open condition. Patched in `openclaw >= 2026.2.24`.

### GHSA-5gj7-jf77-q2q2: safeBins static default trusted dirs allow writable-dir binary hijack

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** The `safeBins` exec allowlist included package-manager paths (`/opt/homebrew/bin`, `/usr/local/bin`) in its default trusted directories. An attacker who could place a same-name binary (e.g., `jq`) in those user-managed directories could bypass the safe-bin evaluation and execute attacker-controlled code.

**Impact:** Exec allowlist bypass leading to command execution in the OpenClaw runtime context, conditional on write access to trusted bin directories.

**Fix:** Commit `b67e600bf` restricts default trusted directories to immutable system paths (`/bin`, `/usr/bin`) and requires explicit opt-in for package-manager paths via `tools.exec.safeBinTrustedDirs`. Patched in `openclaw >= 2026.2.24`.

### GHSA-33hm-cq8r-wc49: Temporary path handling could write outside OpenClaw temp boundary

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** Sandbox media local-path validation accepted absolute paths under host `os.tmpdir()` even when outside the active `sandboxRoot`. Outbound attachment hydration consumed these as already-validated, enabling out-of-sandbox host tmp file reads and exfiltration through attachment delivery.

**Impact:** Confidentiality impact: attacker-controlled media references could read and attach host tmp files outside the sandbox workspace boundary.

**Fix:** Commits `d3da67c7a`, `79a7b3d22`, and `def993dbd` restrict sandbox tmp-path acceptance to OpenClaw-managed temp roots. Patched in `openclaw >= 2026.2.24`.

### GHSA-fqcm-97m6-w7rm: Message action attachment hydration bypasses local media root checks when sandboxRoot is unset

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @GCXWLP

**Description:** `sendAttachment` and `setGroupIcon` message actions could hydrate media from local absolute paths when `sandboxRoot` was unset, bypassing intended local media root checks, allowing reads of arbitrary host files reachable by the runtime user.

**Impact:** Arbitrary local file reads via message action attachment paths when `sandboxRoot` is unconfigured.

**Fix:** Commit `270ab03e3` enforces media root checks regardless of `sandboxRoot`. Patched in `openclaw >= 2026.2.24`.

### GHSA-6rcp-vxwf-3mfp: system.run shell-wrapper positional argv carriers could execute hidden commands under misleading approval text

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** For shell-wrapper forms (e.g., `/bin/sh -c ...`), command-text binding could focus on inline shell payload text while runtime execution still used the full argv vector. Positional argv carriers after the inline payload could therefore execute under incomplete operator-visible display context.

**Impact:** Hidden command execution under misleading approval text in `system.run` shell-wrapper invocations.

**Fix:** Commits `0f0a680d3` and `55cf92578` bind approval/display command text to full formatted argv for shell-wrapper carrier forms and validate `rawCommand`/argv consistency. Patched in `openclaw >= 2026.2.24`.

### GHSA-m8v2-6wwh-r4gc: Sandbox bind validation could bypass allowed-root and blocked-path checks via symlink-parent missing-leaf paths

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** `validateBindMounts` relied on full-path `realpath` only when the full source path already existed. For missing-leaf paths, parent symlink traversal was not fully canonicalized before allowed-root and blocked-path checks, allowing a bind source path that looked inside an allowed root to resolve outside that root once the missing leaf was created.

**Impact:** Sandbox bind source boundary enforcement weakened; could allow access to blocked runtime paths via symlink-parent missing-leaf patterns.

**Fix:** Commit `b5787e4ab` canonicalizes through the nearest existing ancestor and re-checks against both allowed source roots and blocked runtime paths. Patched in `openclaw >= 2026.2.24`.

### GHSA-27cr-4p5m-74rj: Workspace-only sandbox guard mismatch for @-prefixed absolute paths

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** When `tools.fs.workspaceOnly=true`, certain `@`-prefixed absolute paths (e.g., `@/etc/passwd`) could pass validation before canonicalization while runtime path handling normalized the prefix differently, permitting reads outside the workspace boundary in affected tool paths.

**Impact:** Workspace boundary bypass for `@`-prefixed absolute paths when `tools.fs.workspaceOnly` is enabled (non-default).

**Fix:** Commit `9ef0fc2ff` aligns `@`-prefix normalization with canonicalization used at runtime. Patched in `openclaw >= 2026.2.24`.

### GHSA-h656-5vcf-cm23: Telegram: Unauthorized Senders Trigger Media Download and Disk Write Before Access Check

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @v8hid

**Description:** In Telegram DM mode, inbound media was downloaded and written to disk before sender authorization checks completed. An unauthorized sender could trigger inbound media download/write activity (including media groups) even when DM access should be denied.

**Impact:** Unauthorized senders could trigger disk write activity and media download before being rejected by DM access control.

**Fix:** Commit `9514201fb` moves DM authorization before media download/write paths execute, including media-group handling. Patched in `openclaw >= 2026.2.24`.

### GHSA-ww6v-v748-x7g9: Sandbox network isolation bypass via docker.network=container:<id>

**Severity:** LOW
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** Sandbox network hardening blocked `network=host` but allowed `network=container:<id>`, letting a sandbox join another container's network namespace and reach services in that namespace. Requires trusted-operator configuration path (`agents.defaults.sandbox.docker.network`).

**Impact:** Sandbox network isolation bypass allowing namespace-join to another container's network (requires operator config access).

**Fix:** Commits `14b6eea6e` and `5552f9073` block namespace-join style network modes including `container:<id>` and enforce strict allowlisting. Patched in `openclaw >= 2026.2.24`.

### GHSA-ccg8-46r6-9qgj: Dispatch-wrapper depth-cap mismatch can bypass shell-wrapper approval gating in system.run allowlist mode

**Severity:** MEDIUM
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** A wrapper-depth parsing mismatch in `system.run` allowed nested transparent dispatch wrappers (e.g., repeated `/usr/bin/env`) to suppress shell-wrapper detection while still matching allowlist resolution. In `security=allowlist` + `ask=on-miss`, this could bypass the expected approval prompt for shell execution.

**Impact:** Approval-boundary bypass for shell execution via nested wrapper depth overflow in `system.run` allowlist mode.

**Fix:** Commit `57c9a1818` adds regression coverage for depth-overflow wrapper chains and correctly denies approval bypass. Patched in `openclaw >= 2026.2.24`.

### GHSA-9f72-qcpw-2hxc: Native prompt image auto-load did not honor tools.fs.workspaceOnly in sandboxed runs

**Severity:** HIGH
**Published:** 2026-02-25
**Credits:** @tdjackey

**Description:** In sandboxed runs with `tools.fs.workspaceOnly=true`, native prompt image auto-load (`detectAndLoadPromptImages` / `loadImageFromRef`) resolved and read sandbox paths without applying the workspace-root assertion used by file tools. Out-of-workspace mounted paths (e.g., `/agent/secret.png`) could be loaded as vision model inputs, leaking sandbox-accessible file contents.

**Impact:** Confidentiality impact: out-of-workspace files readable via vision model path when `tools.fs.workspaceOnly=true` and sandbox mode are both active. Severity HIGH due to silent data exfiltration through model input.

**Fix:** Commit `370d11554` applies workspace-root assertion to prompt image loading path when `tools.fs.workspaceOnly` is set. Patched in `openclaw >= 2026.2.24`.

### GHSA-r9q5-c7qc-p26w: Nextcloud Talk Webhook Replay Attack

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The Nextcloud Talk webhook handler did not require per-request replay protection. An attacker who intercepted a signed webhook payload could replay the same request to re-execute the embedded command without re-authorization.

**Impact:** Integrity impact: replay of captured authorized commands to a gateway reachable by the attacker. Requires prior network access to intercept a valid signed webhook payload.

**Fix:** Commit `d512163d6` introduces `createNextcloudTalkReplayGuard()` with nonce tracking and timestamp validation, rejecting replayed requests. Patched in `openclaw >= 2026.2.26`.

### GHSA-fgvx-58p6-gjwc: Gateway agents.files Symlink Escape via Path Traversal

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The gateway `agents.files` node tool resolved requested paths without checking for symlink escapes. A crafted symlink inside the agent workspace could redirect file operations to paths outside the intended working tree.

**Impact:** Confidentiality impact: an agent could read files outside its designated workspace via symlink traversal. Requires the ability to create symlinks inside the workspace root.

**Fix:** Commit `125f4071b` adds symlink escape detection to the `agents.files` path resolution, rejecting targets that resolve outside the workspace root. Patched in `openclaw >= 2026.2.26`.

### GHSA-553v-f69r-656j: Unpaired Device Operator Identity Bypass

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The gateway operator device authentication flow included a shared-auth pairing exemption that allowed an unpaired device to acquire operator-level identity without completing the pairing handshake, provided the gateway was configured in shared-auth mode.

**Impact:** Authorization impact: an attacker with network access to the gateway could obtain operator-level session identity without completing the intended pairing challenge.

**Fix:** Commit `8d1481cb4` removes the shared-auth pairing exemption, requiring full pairing for all operator device authentications. Patched in `openclaw >= 2026.2.26`.

### GHSA-792q-qw95-f446: Signal Reaction Notification Enqueued Before Access Checks

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The Signal channel adapter enqueued reaction notification events before evaluating the sender allowlist and DM access policy. A blocked Signal user could therefore trigger notification processing (and any downstream agent actions) by sending a reaction emoji.

**Impact:** Authorization impact: blocked users could bypass Signal ingress access checks via reaction events. Affects configurations using a strict sender allowlist.

**Fix:** Commit `2aa7842ad` moves the DM/allowlist access check (`resolveDmGroupAccessDecision()`) before the reaction notification enqueue step. Patched in `openclaw >= 2026.2.26`.

### GHSA-qj22-xqjr-v83v: Telegram Reaction Authorization Bypass

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The Telegram adapter processed reaction events without verifying the sender against the configured authorization policy. Unauthorized Telegram users could trigger reaction-based automations that should have been gated by `isTelegramEventSenderAuthorized()`.

**Impact:** Authorization impact: unauthorized users could trigger reaction-driven automations on a Telegram bot instance. Requires access to the Telegram group or channel where the bot is active.

**Fix:** Commit `e56b0cf1a` adds `isTelegramEventSenderAuthorized()` enforcement for incoming Telegram reaction events. Patched in `openclaw >= 2026.2.26`.

### GHSA-36h3-7c54-j27r: Browser Trace/Download Temp Path Symlink Escape

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The browser tool wrote trace and download artifacts to temporary paths that were resolved without symlink validation. A crafted symlink in the temp directory could redirect writes to arbitrary locations outside the intended temp subtree.

**Impact:** Integrity/confidentiality impact: arbitrary file writes or overwrites via symlink in the trace/download temp path. Requires the ability to pre-plant a symlink in the temp directory.

**Fix:** Commit `496a76c03` hardens the browser trace/download temp path with `resolveWritablePathWithinRoot()` to reject symlink escapes. Patched in `openclaw >= 2026.2.26`.

### GHSA-354r-7mfh-7rh2: Discord DM Reaction Ingress Missed Authorization Checks

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** Discord DM reaction events were processed through a separate ingress path that skipped the standard reaction authorization policy applied to guild reactions. Users blocked from reacting to guild messages could still trigger reaction-based automations via DMs.

**Impact:** Authorization impact: DM-based reaction events bypassed the configured reaction ingress authorization policy.

**Fix:** Commit `aedf62ac7` unifies Discord DM and guild reaction ingress through a shared authorization policy guard. Patched in `openclaw >= 2026.2.26`.

### GHSA-vvgp-4c28-m3jm: Trusted-Proxy Control UI Pairing Bypass

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The gateway's trusted-proxy configuration for the Control UI omitted the pairing check applied to direct connections. A request arriving via a trusted reverse proxy (e.g., Cloudflare Tunnel) could access Control UI endpoints without completing device pairing.

**Impact:** Authorization impact: paired-device requirement for Control UI access was not enforced for trusted-proxy paths, weakening the pairing security model.

**Fix:** Commits `0cc3e8137` and `ec45c317f` centralize trusted-proxy bypass policy and extend the pairing check to all Control UI paths regardless of proxy trust. Patched in `openclaw >= 2026.2.26`.

### GHSA-3jx4-q2m7-r496: Browser Upload Hardlink Alias Checks Workspace Bypass

**Severity:** HIGH
**Published:** 2026-02-26

**Description:** The browser tool validated upload paths at request time but did not revalidate them at use time. A hardlink or alias created between validation and use could redirect the upload target to a path outside the workspace, bypassing the workspace containment boundary.

**Impact:** Integrity/confidentiality impact: a TOCTOU race using hardlinks or filesystem aliases could redirect browser file uploads to arbitrary paths outside the workspace.

**Fix:** Commit `ef326f5cd` adds a second path validation check immediately before file use, closing the TOCTOU window for hardlink alias attacks. Patched in `openclaw >= 2026.2.26`.

### GHSA-j26j-7qc4-3mrf: MS Teams fileConsent Conversation Binding Missing

**Severity:** MEDIUM
**Published:** 2026-02-26

**Description:** The MS Teams adapter processed `fileConsentCardResponse` (file upload consent) events without verifying that the response came from the same conversation as the original consent request. An attacker in a different Teams conversation could accept or decline a file consent on behalf of another conversation.

**Impact:** Integrity impact: cross-conversation file consent manipulation in MS Teams deployments. Requires the attacker to be a member of the same Teams tenant.

**Fix:** Commit `347f7b955` binds file consent invoke handlers to the originating conversation ID, rejecting cross-conversation consent responses. Patched in `openclaw >= 2026.2.26`.

### GHSA-x2ff-j5c2-ggpr: Slack Interactive Callbacks Skip Sender Authorization Checks

**Severity:** HIGH
**Published:** 2026-02-26

**Description:** Slack interactive system events (button clicks, menu selections, modal submissions) arriving via the Slack Events API were processed without verifying the triggering user against the gateway's sender authorization policy. Any Slack workspace member could trigger interactive automations regardless of their authorization status.

**Impact:** Authorization impact: unauthorized Slack users could trigger interactive event automations. Severity HIGH due to the broad attack surface (any workspace member) and potential for privilege escalation via interactive tool invocations.

**Fix:** Commit `ce8c67c31` gates Slack interactive event processing behind sender authorization checks before dispatching to the event handler. Patched in `openclaw >= 2026.2.26`.

### GHSA-jmmg-jqc7-5qf4: Browser-Origin WebSocket Auth Gap Allows Non-Loopback Connections

**Severity:** HIGH
**Published:** 2026-02-26

**Description:** The gateway's browser WebSocket authentication chain applied origin validation only to loopback (`localhost`) connections. Non-loopback WebSocket upgrade requests from browser extensions or proxied connections were permitted without the same origin check, allowing a malicious page to establish an authenticated WebSocket session if the gateway was reachable from the browser.

**Impact:** Authorization impact: browser-based attackers reachable to the gateway could bypass origin validation on non-loopback WebSocket connections. Severity HIGH due to browser-accessible attack surface.

**Fix:** Commit `c736f11a1` extends browser origin checks and rate limiting to non-loopback connection paths via `attachGatewayWsMessageHandler()`. Patched in `openclaw >= 2026.2.26`.

### Relationship to Third-Party Audits

These official CVEs are **distinct from** the two third-party security audits documented below:
- [Issue #1796 (Argus)](./issue-1796-argus-audit.md) — Automated scanner report (0/8 exploitable)
- [Medium Article (Saad Khalid)](./medium-article-audit.md) — Manual pentest claims (0/8 exploitable)

The official CVEs were responsibly disclosed through GitHub Security Advisories and patched before public disclosure. The third-party audits contain false positives, design observations, and overstated claims (see analysis sections).
