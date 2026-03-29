> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Open PRs](./open-upstream-prs.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [SecurityScorecard](./securityscorecard-strike-report.md) | [Cisco AI Defense](./cisco-ai-defense-skill-scanner.md) | [Model Poisoning](./model-poisoning-sleeper-agents.md) | [Hudson Rock](./hudson-rock-infostealer-analysis.md) | [Cline Supply Chain](./cline-supply-chain-attack.md) | [ClawJacked](./clawjacked-attack.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Official Security Advisories (CVEs/GHSAs)

> **Source:** [github.com/openclaw/openclaw/security](https://github.com/openclaw/openclaw/security)
>
> These are officially disclosed vulnerabilities with assigned CVE/GHSA identifiers. Earlier advisories were patched in v2026.1.29-1.30; Feb 14 batch (5 new advisories) patched in v2026.2.1-2.6; Feb 15 batch (26 new advisories, 10 HIGH + 10 MEDIUM + 6 previously tracked) patched in v2026.2.1-2.2+; Feb 16 batch (16 new advisories, 9 HIGH + 4 MEDIUM + 3 LOW) published 2026-02-15/16; Feb 15/16/18/19 supplemental (8 additional advisories, 4 HIGH + 4 MEDIUM); Feb 20 batch (4 new advisories, 2 MEDIUM + 2 LOW) published 2026-02-20, patched in v2026.2.18; Feb 21 batch (22 new advisories, 4 HIGH + 15 MEDIUM + 3 LOW) + GHSA-82g8-464f-2mv7 (CRITICAL, patched v2026.2.21) published 2026-02-21; Feb 23 batch (30 new advisories, 1 HIGH + 25 MEDIUM + 4 LOW) published 2026-02-23, 2 patched in Feb 23 sync 16 (GHSA-f6h3-846h-2r8w + GHSA-wpph-cjgr-7c39); Feb 24 batch (16 new advisories, 2 HIGH + 13 MEDIUM + 1 LOW) published 2026-02-24, 3 patched in Feb 25 sync 2 (GHSA-q6qf-4p5j-r25g + GHSA-3c6h-g97w-fg78 + GHSA-2ww6-868g-2c56); Feb 25 batch (12 new advisories, 1 HIGH + 10 MEDIUM + 1 LOW) published 2026-02-25, 1 patched in Feb 25 sync 5 (GHSA-ccg8-46r6-9qgj by 57c9a1818); Feb 26 batch (18 new advisories, 4 HIGH + 11 MEDIUM + 3 LOW) published 2026-02-26, 12 patched in Feb 26 sync 1; GHSA-56pc-6hvp-4gv4 (arbitrary file read via $include) patched in Feb 26 sync 6 (9925ac6a2 + 242188b7b); Feb 26 late batch (15 new advisories, 5 HIGH + 4 MEDIUM + 4 LOW + 2 pending-classification) published 2026-02-26T22:40; GHSA-8j2w-6fmm-m587 (boundary path canonicalization mismatch) patched in Feb 27 sync 5 (7dad7cc2c); Mar 2 batch (11 new advisories, 4 HIGH + 7 MEDIUM) published 2026-03-02, 7 patched in Mar 2 sync 4 (GHSA-jr6x-2q95-fh2g + GHSA-392f-ggf5-fp3c + GHSA-p7gr-f84w-hqg5 + GHSA-7xmq-g46g-f8pv + GHSA-x82f-27x3-q89c + GHSA-6f6j-wx9w-ff4j + GHSA-g99v-8hwm-g76g), GHSA-q399-23r3-hfx4 (PATH-token executable identity) patched in Mar 3 sync 6 (dded56962); GHSA-mwxv-35wr-4vvj (plugin auth path traversal bypass, HIGH) patched in Mar 3 sync 3 (93b072402); GHSA-7vwx-582j-j332 (MS Teams bearer token leak, HIGH) + GHSA-7qf6-h84j-8fq4 (MS Teams media SSRF, MEDIUM) patched in Mar 3 sync 8 (4a414c5e5 + 8937c10f1 + cceecc8bd); Mar 3 batch (11 new advisories, 2 HIGH + 9 MEDIUM) published 2026-03-03, patched >= v2026.3.2; Mar 8 batch (10 new advisories, 2 HIGH + 8 MEDIUM) published 2026-03-08, GHSA-rchv-x836-w7xp patched in Mar 10 sync 1 (f2f561fab); Mar 10-11 batch (3 new advisories, 0 HIGH + 3 MEDIUM) published 2026-03-10/11; Mar 12 batch (13 new advisories, 6 HIGH + 4 MEDIUM + 1 LOW + 1 CRITICAL + 1 HIGH CVE) published 2026-03-12, all patched in v2026.3.11; Mar 13 batch (12 new advisories, 5 HIGH + 4 MEDIUM + 2 CRITICAL) published 2026-03-13, all patched in v2026.3.12; Mar 14 batch (5 new advisories, 2 HIGH + 3 MEDIUM) published 2026-03-14, all patched in v2026.3.13; Mar 24 batch (26 new advisories, 1 CRITICAL + 11 HIGH + 14 MEDIUM) published 2026-03-24, pending patch; Mar 26 batch (19 new advisories, 2 CRITICAL + 5 HIGH + 12 MEDIUM) published 2026-03-26, 17 patched in Mar 27 sync 1 (GHSA-3h52-cx59-c456 + GHSA-4hmj-39m8-jwc7 + GHSA-52q4-3xjc-6778 + GHSA-5jvj-hxmh-6h6j + GHSA-77w2-crqv-cmv3 + GHSA-9hjh-fr4f-gxc4 + GHSA-9wqx-g2cw-vc7r + GHSA-h4jx-hjr3-fhgc + GHSA-j4c9-w69r-cw33 + GHSA-mf5g-6r6f-ghhm + GHSA-mw7w-g3mg-xqm7 + GHSA-q2qc-744p-66r2 + GHSA-qm2m-28pf-hgjw + GHSA-rf6h-5gpw-qrgq + GHSA-rhfg-j8jq-7v2h + GHSA-vcx4-4qxg-mfp4 + GHSA-xq8g-hgh6-87hv); GHSA-9p93-7j67-5pc2 patched in Mar 27 sync 2 (02cf12371f); GHSA-fqw4-mph7-2vr8 pending; Mar 27 late batch (9 new advisories, 4 HIGH + 5 MEDIUM) published 2026-03-27, GHSA-68f8-9mhj-h2mp patched in Mar 28 sync 1 (2d80dbfeba); 8 remaining pending; Mar 29 batch (24 new advisories, 3 CRITICAL + 13 HIGH + 7 MEDIUM + 1 LOW) published 2026-03-29, all patched in v2026.3.22–v2026.3.28.

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
| [GHSA-7vwx-582j-j332](https://github.com/openclaw/openclaw/security/advisories/GHSA-7vwx-582j-j332) | HIGH | MS Teams Attachment Downloader Leaks Bearer Tokens | - | Mar 3 sync 8 (4a414c5e5 + 8937c10f1) | - |
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
| [GHSA-q447-rj3r-2cgh](https://github.com/openclaw/openclaw/security/advisories/GHSA-q447-rj3r-2cgh) | HIGH | DoS via Unbounded Webhook Request Body Buffering | CWE-400 | Mar 3 sync 6 (d3e8b17aa + 1c9deeda9) | - |
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
| [GHSA-56pc-6hvp-4gv4](https://github.com/openclaw/openclaw/security/advisories/GHSA-56pc-6hvp-4gv4) | HIGH | OC-06: Arbitrary file read via $include directive | CWE-22 | Feb 26 sync 6 (9925ac6a2 + 242188b7b) | @aether-ai-agent |
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
| [GHSA-f7ww-2725-qvw2](https://github.com/openclaw/openclaw/security/advisories/GHSA-f7ww-2725-qvw2) | MEDIUM | Node system.run approval bypass via parent-symlink cwd rebind | - | pending | - |
| [GHSA-vjp8-wprm-2jw9](https://github.com/openclaw/openclaw/security/advisories/GHSA-vjp8-wprm-2jw9) | LOW | Cross-account DM pairing authorization bypass via unscoped pairing store access | - | pending | - |
| [GHSA-gcj7-r3hg-m7w6](https://github.com/openclaw/openclaw/security/advisories/GHSA-gcj7-r3hg-m7w6) | LOW | voice-call Twilio replay dedupe now bound to authenticated webhook identity | - | pending | - |
| [GHSA-7qf6-h84j-8fq4](https://github.com/openclaw/openclaw/security/advisories/GHSA-7qf6-h84j-8fq4) | MEDIUM | Microsoft Teams media fetch SSRF hardening: unified guarded fetch across Graph and attachment paths | CWE-918 | Mar 3 sync 8 (cceecc8bd + 4a414c5e5 + 8937c10f1) | - |
| [GHSA-25pw-4h6w-qwvm](https://github.com/openclaw/openclaw/security/advisories/GHSA-25pw-4h6w-qwvm) | LOW | BlueBubbles group allowlist mismatch via DM pairing-store fallback | - | pending | - |
| [GHSA-hjvp-qhm6-wrh2](https://github.com/openclaw/openclaw/security/advisories/GHSA-hjvp-qhm6-wrh2) | MEDIUM | Node system.run approval context-binding weakness in approval-enabled host=node flows | - | pending | - |
| [GHSA-jv6r-27ww-4gw4](https://github.com/openclaw/openclaw/security/advisories/GHSA-jv6r-27ww-4gw4) | MEDIUM | DM pairing-store identities could satisfy group allowlist authorization | - | pending | - |
| [GHSA-mwxv-35wr-4vvj](https://github.com/openclaw/openclaw/security/advisories/GHSA-mwxv-35wr-4vvj) | HIGH | Gateway plugin auth bypass via encoded dot-segment traversal in protected /api/channels paths | CWE-22 | Mar 3 sync 3 (93b072402) | - |
| [GHSA-wm8r-w8pf-2v6w](https://github.com/openclaw/openclaw/security/advisories/GHSA-wm8r-w8pf-2v6w) | LOW | Signal group allowlist authorization bypass via DM pairing-store leakage | - | pending | - |
| [GHSA-r65x-2hqr-j5hf](https://github.com/openclaw/openclaw/security/advisories/GHSA-r65x-2hqr-j5hf) | HIGH | Node reconnect metadata spoofing could bypass platform-based node command policy | - | pending | - |
| [GHSA-qcc4-p59m-p54m](https://github.com/openclaw/openclaw/security/advisories/GHSA-qcc4-p59m-p54m) | HIGH | Sandbox dangling-symlink alias handling could bypass workspace-only write boundary | CWE-59 | pending | - |
| [GHSA-mgrq-9f93-wpp5](https://github.com/openclaw/openclaw/security/advisories/GHSA-mgrq-9f93-wpp5) | HIGH | workspace path guard bypass on non-existent out-of-root symlink leaf | CWE-59 | pending | - |
| [GHSA-gp3q-wpq4-5c5h](https://github.com/openclaw/openclaw/security/advisories/GHSA-gp3q-wpq4-5c5h) | HIGH | LINE group allowlist scope mismatch with DM pairing-store entries | CWE-284 | pending | - |
| [GHSA-v8cg-4474-49v8](https://github.com/openclaw/openclaw/security/advisories/GHSA-v8cg-4474-49v8) | MEDIUM | Slack system events bypass sender authorization in member and message subtype handlers | CWE-284 | pending | - |
| [GHSA-8j2w-6fmm-m587](https://github.com/openclaw/openclaw/security/advisories/GHSA-8j2w-6fmm-m587) | MEDIUM | /api/channels gateway-auth boundary bypass via path canonicalization mismatch | - | Feb 27 sync 5 (7dad7cc2c) | - |
| [GHSA-vpj2-69hf-rppw](https://github.com/openclaw/openclaw/security/advisories/GHSA-vpj2-69hf-rppw) | MEDIUM | Browser control startup could continue unauthenticated after auth bootstrap failure | CWE-306 | pending | - |
| [GHSA-wr6m-jg37-68xh](https://github.com/openclaw/openclaw/security/advisories/GHSA-wr6m-jg37-68xh) | MEDIUM | Unbounded memory growth in Zalo webhook via query-string key churn (unauthenticated DoS) | CWE-400 | pending | @Somet2mes, @migraine-sudo |
| [GHSA-jr6x-2q95-fh2g](https://github.com/openclaw/openclaw/security/advisories/GHSA-jr6x-2q95-fh2g) | HIGH | Authorization mismatch allowed write-scope agent runs to reach owner-only tools | CWE-269, CWE-863 | Mar 2 sync 4 (58659b931) | @tdjackey |
| [GHSA-392f-ggf5-fp3c](https://github.com/openclaw/openclaw/security/advisories/GHSA-392f-ggf5-fp3c) | MEDIUM | Unicode canonicalization drift in node metadata policy classification could broaden node allowlists | CWE-176, CWE-436 | Mar 2 sync 4 (9005e8bc0 + 0eac494db) | @tdjackey |
| [GHSA-q399-23r3-hfx4](https://github.com/openclaw/openclaw/security/advisories/GHSA-q399-23r3-hfx4) | HIGH | system.run approvals did not bind PATH-token executable identity, enabling post-approval executable rebind | CWE-367, CWE-426 | Mar 3 sync 6 (dded56962) | @tdjackey |
| [GHSA-p7gr-f84w-hqg5](https://github.com/openclaw/openclaw/security/advisories/GHSA-p7gr-f84w-hqg5) | HIGH | Sandboxed sessions_spawn now enforces sandbox inheritance for cross-agent spawns | CWE-269, CWE-284 | Mar 2 sync 4 (bfeadb80b + b9aa2d436) | @tdjackey |
| [GHSA-7xmq-g46g-f8pv](https://github.com/openclaw/openclaw/security/advisories/GHSA-7xmq-g46g-f8pv) | MEDIUM | Sandbox media TOCTOU could read files outside sandbox root | CWE-59, CWE-367 | Mar 2 sync 4 (c823a8530) | @tdjackey |
| [GHSA-x82f-27x3-q89c](https://github.com/openclaw/openclaw/security/advisories/GHSA-x82f-27x3-q89c) | MEDIUM | TOCTOU symlink race in writeFileWithinRoot could create or truncate files outside root boundaries | CWE-59, CWE-367 | Mar 2 sync 4 (710004e01) | @tdjackey |
| [GHSA-8m9v-xpgf-g99m](https://github.com/openclaw/openclaw/security/advisories/GHSA-8m9v-xpgf-g99m) | MEDIUM | Unauthorized sender bypass in stop triggers and /models command authorization | CWE-863 | pending | @tdjackey |
| [GHSA-6f6j-wx9w-ff4j](https://github.com/openclaw/openclaw/security/advisories/GHSA-6f6j-wx9w-ff4j) | HIGH | ACPX Windows wrapper shell fallback allowed cwd injection in specific paths | CWE-78 | Mar 2 sync 4 (68a8a98ab) | @tdjackey |
| [GHSA-g99v-8hwm-g76g](https://github.com/openclaw/openclaw/security/advisories/GHSA-g99v-8hwm-g76g) | MEDIUM | web_search citation redirect SSRF via private-network-allowing policy | CWE-918 | Mar 2 sync 4 (085c23ce5) | @tdjackey |
| [GHSA-wpg9-4g4v-f9rc](https://github.com/openclaw/openclaw/security/advisories/GHSA-wpg9-4g4v-f9rc) | MEDIUM | Discord voice transcript owner-flag omission could expose owner-only tools in mixed-trust channels | - | >= v2026.3.2 | - |
| [GHSA-2858-xg23-26fp](https://github.com/openclaw/openclaw/security/advisories/GHSA-2858-xg23-26fp) | MEDIUM | Node camera URL payload host-binding bypass allowed gateway fetch pivots | - | >= v2026.3.2 | @grp06 |
| [GHSA-r54r-wmmq-mh84](https://github.com/openclaw/openclaw/security/advisories/GHSA-r54r-wmmq-mh84) | MEDIUM | ZIP extraction race could write outside destination via parent symlink rebind | - | >= v2026.3.2 | - |
| [GHSA-cfvj-7rx7-fc7c](https://github.com/openclaw/openclaw/security/advisories/GHSA-cfvj-7rx7-fc7c) | MEDIUM | stageSandboxMedia destination symlink traversal can overwrite files outside sandbox workspace | - | >= v2026.3.2 | - |
| [GHSA-v865-p3gq-hw6m](https://github.com/openclaw/openclaw/security/advisories/GHSA-v865-p3gq-hw6m) | MEDIUM | Encoded-path auth bypass in plugin `/api/channels` route classification | - | Mar 3 sync 3 (93b072402) | - |
| [GHSA-8mvx-p2r9-r375](https://github.com/openclaw/openclaw/security/advisories/GHSA-8mvx-p2r9-r375) | HIGH | web tools strict URL guard could lose DNS pinning when env proxy is configured | - | >= v2026.3.2 | - |
| [GHSA-h3rm-6x7g-882f](https://github.com/openclaw/openclaw/security/advisories/GHSA-h3rm-6x7g-882f) | MEDIUM | Node system.run approval hardening wrapper semantic drift can execute unintended local scripts | - | Mar 3 sync 6 (dded56962) | - |
| [GHSA-474h-prjg-mmw3](https://github.com/openclaw/openclaw/security/advisories/GHSA-474h-prjg-mmw3) | HIGH | Sandboxed sessions_spawn(runtime="acp") bypassed sandbox inheritance and allowed host ACP initialization | - | >= v2026.3.2 | - |
| [GHSA-3pxq-f3cp-jmxp](https://github.com/openclaw/openclaw/security/advisories/GHSA-3pxq-f3cp-jmxp) | MEDIUM | Unified root-bound write hardening for browser output and related path-boundary flows | - | >= v2026.3.2 | - |
| [GHSA-x4vp-4235-65hg](https://github.com/openclaw/openclaw/security/advisories/GHSA-x4vp-4235-65hg) | MEDIUM | Pre-auth webhook body parsing can enable unauthenticated slow-request DoS | - | >= v2026.3.2 | - |
| [GHSA-77hf-7fqf-f227](https://github.com/openclaw/openclaw/security/advisories/GHSA-77hf-7fqf-f227) | MEDIUM | skills-install-download: tar.bz2 extraction bypassed archive safety parity checks (local DoS) | - | >= v2026.3.2 | - |
| [GHSA-wpg9-4g4v-f9rc](https://github.com/openclaw/openclaw/security/advisories/GHSA-wpg9-4g4v-f9rc) | MEDIUM | Discord voice transcript owner-flag omission could expose owner-only tools in mixed-trust channels | - | >= v2026.3.2 | @tdjackey |
| [GHSA-2858-xg23-26fp](https://github.com/openclaw/openclaw/security/advisories/GHSA-2858-xg23-26fp) | MEDIUM | Node camera URL payload host-binding bypass allowed gateway fetch pivots | - | >= v2026.3.2 | @tdjackey |
| [GHSA-r54r-wmmq-mh84](https://github.com/openclaw/openclaw/security/advisories/GHSA-r54r-wmmq-mh84) | MEDIUM | ZIP extraction race could write outside destination via parent symlink rebind | - | >= v2026.3.2 | @tdjackey |
| [GHSA-cfvj-7rx7-fc7c](https://github.com/openclaw/openclaw/security/advisories/GHSA-cfvj-7rx7-fc7c) | MEDIUM | stageSandboxMedia destination symlink traversal can overwrite files outside sandbox workspace | - | >= v2026.3.2 | @tdjackey |
| [GHSA-v865-p3gq-hw6m](https://github.com/openclaw/openclaw/security/advisories/GHSA-v865-p3gq-hw6m) | MEDIUM | Encoded-path auth bypass in plugin `/api/channels` route classification | - | >= v2026.3.2 | @tdjackey |
| [GHSA-8mvx-p2r9-r375](https://github.com/openclaw/openclaw/security/advisories/GHSA-8mvx-p2r9-r375) | HIGH | web tools strict URL guard could lose DNS pinning when env proxy is configured | - | >= v2026.3.2 | @tdjackey |
| [GHSA-h3rm-6x7g-882f](https://github.com/openclaw/openclaw/security/advisories/GHSA-h3rm-6x7g-882f) | MEDIUM | Node system.run approval hardening wrapper semantic drift can execute unintended local scripts | - | >= v2026.3.2 | @tdjackey |
| [GHSA-474h-prjg-mmw3](https://github.com/openclaw/openclaw/security/advisories/GHSA-474h-prjg-mmw3) | HIGH | Sandboxed sessions_spawn(runtime="acp") bypassed sandbox inheritance and allowed host ACP initialization | - | >= v2026.3.2 | @tdjackey |
| [GHSA-3pxq-f3cp-jmxp](https://github.com/openclaw/openclaw/security/advisories/GHSA-3pxq-f3cp-jmxp) | MEDIUM | Unified root-bound write hardening for browser output and related path-boundary flows | - | >= v2026.3.2 | @tdjackey |
| [GHSA-x4vp-4235-65hg](https://github.com/openclaw/openclaw/security/advisories/GHSA-x4vp-4235-65hg) | MEDIUM | Pre-auth webhook body parsing can enable unauthenticated slow-request DoS | - | >= v2026.3.2 | @GCXWLP |
| [GHSA-77hf-7fqf-f227](https://github.com/openclaw/openclaw/security/advisories/GHSA-77hf-7fqf-f227) | MEDIUM | skills-install-download: tar.bz2 extraction bypassed archive safety parity checks (local DoS) | - | >= v2026.3.2 | @GCXWLP |
| [GHSA-rchv-x836-w7xp](https://github.com/openclaw/openclaw/security/advisories/GHSA-rchv-x836-w7xp) | HIGH | Dashboard leaked gateway auth material via browser URL/query and localStorage | - | Mar 10 sync 1 (f2f561fab) | - |
| [GHSA-6rmx-gvvg-vh6j](https://github.com/openclaw/openclaw/security/advisories/GHSA-6rmx-gvvg-vh6j) | MEDIUM | hooks count non-POST requests toward auth lockout | - | pending | - |
| [GHSA-6mgf-v5j7-45cr](https://github.com/openclaw/openclaw/security/advisories/GHSA-6mgf-v5j7-45cr) | HIGH | fetch-guard forwards custom authorization headers across cross-origin redirects | - | pending | - |
| [GHSA-pjvx-rx66-r3fg](https://github.com/openclaw/openclaw/security/advisories/GHSA-pjvx-rx66-r3fg) | MEDIUM | Cross-account sender authorization expansion in `/allowlist ... --store` account scoping | - | pending | - |
| [GHSA-hfpr-jhpq-x4rm](https://github.com/openclaw/openclaw/security/advisories/GHSA-hfpr-jhpq-x4rm) | MEDIUM | `operator.write` chat.send could reach admin-only config writes | - | pending | - |
| [GHSA-j425-whc4-4jgc](https://github.com/openclaw/openclaw/security/advisories/GHSA-j425-whc4-4jgc) | MEDIUM | `system.run` env override filtering allowed dangerous helper-command pivots | - | pending | - |
| [GHSA-9q36-67vc-rrwg](https://github.com/openclaw/openclaw/security/advisories/GHSA-9q36-67vc-rrwg) | MEDIUM | Sandboxed /acp spawn requests could initialize host ACP sessions | - | pending | - |
| [GHSA-9q2p-vc84-2rwm](https://github.com/openclaw/openclaw/security/advisories/GHSA-9q2p-vc84-2rwm) | MEDIUM | system.run allow-always persistence included shell-commented payload tails | - | pending | - |
| [GHSA-r6qf-8968-wj9q](https://github.com/openclaw/openclaw/security/advisories/GHSA-r6qf-8968-wj9q) | MEDIUM | system.run wrapper-depth boundary could skip shell approval gating | - | pending | - |
| [GHSA-3h2q-j2v4-6w5r](https://github.com/openclaw/openclaw/security/advisories/GHSA-3h2q-j2v4-6w5r) | MEDIUM | system.run allowlist approval parsing missed PowerShell encoded-command wrappers | - | pending | - |
| [GHSA-8g75-q649-6pv6](https://github.com/openclaw/openclaw/security/advisories/GHSA-8g75-q649-6pv6) | MEDIUM | system.run approvals did not bind mutable script operands across approval and execution | - | v2026.3.8 | @tdjackey |
| [GHSA-vhwf-4x96-vqx2](https://github.com/openclaw/openclaw/security/advisories/GHSA-vhwf-4x96-vqx2) | MEDIUM | skills-install-download can be redirected outside the tools root by rebinding the validated base path | - | v2026.3.8 | @tdjackey |
| [GHSA-g7cr-9h7q-4qxq](https://github.com/openclaw/openclaw/security/advisories/GHSA-g7cr-9h7q-4qxq) | MEDIUM | MS Teams sender allowlist bypass when route allowlist is configured and sender allowlist is empty | - | v2026.3.8 | @zpbrent |
| [CVE-2026-32302](https://github.com/openclaw/openclaw/security/advisories/GHSA-5wcw-8jjv-m286) | HIGH | Browser-originated WebSocket connections could bypass origin validation in trusted-proxy mode | - | v2026.3.11 | - |
| [GHSA-4jpw-hj22-2xmc](https://github.com/openclaw/openclaw/security/advisories/GHSA-4jpw-hj22-2xmc) | CRITICAL | Pairing-scoped device tokens could mint `operator.admin` and reach node RCE | - | v2026.3.11 | - |
| [GHSA-8jhh-jcqg-mj5p](https://github.com/openclaw/openclaw/security/advisories/GHSA-8jhh-jcqg-mj5p) | MEDIUM | Channel commands could bypass account-scoped `configWrites` restrictions | - | v2026.3.11 | - |
| [GHSA-4w7m-58cg-cmff](https://github.com/openclaw/openclaw/security/advisories/GHSA-4w7m-58cg-cmff) | HIGH | Leaf subagents could steer sibling sessions across sandbox boundaries | - | v2026.3.11 | - |
| [GHSA-9vvh-2768-c8vp](https://github.com/openclaw/openclaw/security/advisories/GHSA-9vvh-2768-c8vp) | MEDIUM | Discord guild reaction ingress could bypass users and roles allowlists | - | v2026.3.11 | - |
| [GHSA-jf6w-m8jw-jfxc](https://github.com/openclaw/openclaw/security/advisories/GHSA-jf6w-m8jw-jfxc) | MEDIUM | Write-scoped callers could reach admin-only session reset logic through `agent` | - | v2026.3.11 | - |
| [GHSA-qc36-x95h-7j53](https://github.com/openclaw/openclaw/security/advisories/GHSA-qc36-x95h-7j53) | HIGH | Unrecognized script runners could bypass `system.run` approval integrity | - | v2026.3.11 | - |
| [GHSA-mj4p-rc52-m843](https://github.com/openclaw/openclaw/security/advisories/GHSA-mj4p-rc52-m843) | HIGH | Sandbox staged writes could escape the verified parent directory before commit | - | v2026.3.11 | - |
| [GHSA-qvr7-g57c-mrc7](https://github.com/openclaw/openclaw/security/advisories/GHSA-qvr7-g57c-mrc7) | LOW | Unavailable local auth SecretRefs could fall through to remote credentials in local mode | - | v2026.3.11 | - |
| [GHSA-xf99-j42q-5w5p](https://github.com/openclaw/openclaw/security/advisories/GHSA-xf99-j42q-5w5p) | HIGH | Unbound interpreter and runtime commands could bypass node-host approval integrity | - | v2026.3.11 | - |
| [GHSA-rw39-5899-8mxp](https://github.com/openclaw/openclaw/security/advisories/GHSA-rw39-5899-8mxp) | HIGH | Node-host approvals could show misleading shell payloads instead of the executed argv | - | v2026.3.11 | - |
| [GHSA-xvx8-77m6-gwg6](https://github.com/openclaw/openclaw/security/advisories/GHSA-xvx8-77m6-gwg6) | MEDIUM | Sandbox `writeFile` commit could race outside the validated path | - | v2026.3.11 | - |
| [GHSA-xw77-45gv-p728](https://github.com/openclaw/openclaw/security/advisories/GHSA-xw77-45gv-p728) | HIGH | Plugin subagent routes could bypass gateway authorization with synthetic admin scopes | - | v2026.3.11 | - |
| [GHSA-f5mf-3r52-r83w](https://github.com/openclaw/openclaw/security/advisories/GHSA-f5mf-3r52-r83w) | MEDIUM | Zalouser allowlist authorization matched mutable group names by default | - | v2026.3.12 | - |
| [GHSA-7h7g-x2px-94hj](https://github.com/openclaw/openclaw/security/advisories/GHSA-7h7g-x2px-94hj) | MEDIUM | Pairing setup codes exposed long-lived shared gateway credentials instead of short-lived bootstrap tokens | - | v2026.3.12 | - |
| [GHSA-rqpp-rjj8-7wv8](https://github.com/openclaw/openclaw/security/advisories/GHSA-rqpp-rjj8-7wv8) | CRITICAL | WebSocket shared-auth connections could self-declare elevated scopes | - | v2026.3.12 | - |
| [GHSA-99qw-6mr3-36qr](https://github.com/openclaw/openclaw/security/advisories/GHSA-99qw-6mr3-36qr) | HIGH | Workspace plugin auto-discovery allowed code execution from cloned repositories | - | v2026.3.12 | - |
| [GHSA-r7vr-gr74-94p8](https://github.com/openclaw/openclaw/security/advisories/GHSA-r7vr-gr74-94p8) | HIGH | Command-authorized non-owners could reach owner-only `/config` and `/debug` surfaces | - | v2026.3.12 | - |
| [GHSA-5m9r-p9g7-679c](https://github.com/openclaw/openclaw/security/advisories/GHSA-5m9r-p9g7-679c) | MEDIUM | Zalo webhook rate limiting could be bypassed before secret validation | - | v2026.3.12 | - |
| [GHSA-g353-mgv3-8pcj](https://github.com/openclaw/openclaw/security/advisories/GHSA-g353-mgv3-8pcj) | HIGH | Feishu webhook mode accepted forged events when only `verificationToken` was configured | - | v2026.3.12 | - |
| [GHSA-m69h-jm2f-2pv8](https://github.com/openclaw/openclaw/security/advisories/GHSA-m69h-jm2f-2pv8) | MEDIUM | Feishu reaction events could bypass group authorization and mention gating | - | v2026.3.12 | - |
| [GHSA-vmhq-cqm9-6p7q](https://github.com/openclaw/openclaw/security/advisories/GHSA-vmhq-cqm9-6p7q) | HIGH | `browser.request` let `operator.write` persist admin-only browser profile changes | - | v2026.3.11 | - |
| [GHSA-f8r2-vg7x-gh8m](https://github.com/openclaw/openclaw/security/advisories/GHSA-f8r2-vg7x-gh8m) | MEDIUM | Exec approval allowlist patterns overmatched on POSIX paths | - | v2026.3.11 | - |
| [GHSA-2rqg-gjgv-84jm](https://github.com/openclaw/openclaw/security/advisories/GHSA-2rqg-gjgv-84jm) | HIGH | Gateway `agent` calls could override the workspace boundary | - | v2026.3.11 | - |
| [GHSA-wcxr-59v9-rxr8](https://github.com/openclaw/openclaw/security/advisories/GHSA-wcxr-59v9-rxr8) | HIGH | `session_status` let sandboxed subagents access parent or sibling session state | - | v2026.3.11 | - |
| [GHSA-vr7j-g7jv-h5mp](https://github.com/openclaw/openclaw/security/advisories/GHSA-vr7j-g7jv-h5mp) | MEDIUM | Session transcript files were created without forced user-only permissions | - | v2026.2.17 | - |
| [GHSA-jq3f-vjww-8rq7](https://github.com/openclaw/openclaw/security/advisories/GHSA-jq3f-vjww-8rq7) | HIGH | Telegram webhook request bodies were read before secret validation, enabling unauthenticated resource exhaustion | - | v2026.3.13 | @space08 |
| [GHSA-xwcj-hwhf-h378](https://github.com/openclaw/openclaw/security/advisories/GHSA-xwcj-hwhf-h378) | MEDIUM | Telegram media fetch errors exposed bot tokens in logged file URLs | - | v2026.3.13 | @space08 |
| [GHSA-g2f6-pwvx-r275](https://github.com/openclaw/openclaw/security/advisories/GHSA-g2f6-pwvx-r275) | MEDIUM | Unsanitized iMessage attachment paths allowed SCP remote-path command injection | - | v2026.3.13 | @lintsinghua |
| [GHSA-63f5-hhc7-cx6p](https://github.com/openclaw/openclaw/security/advisories/GHSA-63f5-hhc7-cx6p) | HIGH | Bootstrap setup codes could be replayed to escalate pending pairing scopes before approval | - | v2026.3.13 | @tdjackey |
| [GHSA-hf68-49fm-59cq](https://github.com/openclaw/openclaw/security/advisories/GHSA-hf68-49fm-59cq) | CRITICAL | Gateway device.pair.approve lets operator.pairing escalate a new device into operator.admin, reaching Node RCE | - | pending | - |
| [GHSA-7xr2-q9vf-x4r5](https://github.com/openclaw/openclaw/security/advisories/GHSA-7xr2-q9vf-x4r5) | HIGH | Incomplete fix for CVE-2026-32013: symlink traversal via IDENTITY.md appendFile in agents.create/update | - | pending | - |
| [GHSA-wq58-2pvg-5h4f](https://github.com/openclaw/openclaw/security/advisories/GHSA-wq58-2pvg-5h4f) | HIGH | Gateway agent /reset exposes admin session reset to operator.write callers | - | pending | - |
| [GHSA-cg6c-q2hx-69h7](https://github.com/openclaw/openclaw/security/advisories/GHSA-cg6c-q2hx-69h7) | HIGH | Plivo V2 verified replay identity drifts on query-only variants | - | pending | - |
| [GHSA-qm9x-v7cx-7rq4](https://github.com/openclaw/openclaw/security/advisories/GHSA-qm9x-v7cx-7rq4) | HIGH | system.run allowlist bypass via unregistered time dispatch wrapper | - | pending | - |
| [GHSA-wv46-v6xc-2qhf](https://github.com/openclaw/openclaw/security/advisories/GHSA-wv46-v6xc-2qhf) | HIGH | Synology Chat reply delivery could be rebound through username-based user resolution | - | pending | - |
| [GHSA-65h8-27jh-q8wv](https://github.com/openclaw/openclaw/security/advisories/GHSA-65h8-27jh-q8wv) | HIGH | Nostr inbound DMs could trigger unauthenticated crypto work before sender policy enforcement | - | pending | - |
| [GHSA-48vw-m3qc-wr99](https://github.com/openclaw/openclaw/security/advisories/GHSA-48vw-m3qc-wr99) | HIGH | Trusted-proxy Control UI sessions could retain self-declared privileged scopes without device identity | - | pending | - |
| [GHSA-cxmw-p77q-wchg](https://github.com/openclaw/openclaw/security/advisories/GHSA-cxmw-p77q-wchg) | HIGH | Unvalidated WebView JavascriptInterface allows attacker-controlled pages to inject and execute arbitrary instructions via the Android canvas bridge | - | pending | - |
| [GHSA-39pp-xp36-q6mg](https://github.com/openclaw/openclaw/security/advisories/GHSA-39pp-xp36-q6mg) | HIGH | Gateway host exec env override handling did not consistently apply the shared host env policy | - | pending | - |
| [GHSA-74wf-h43j-vvmj](https://github.com/openclaw/openclaw/security/advisories/GHSA-74wf-h43j-vvmj) | HIGH | ACP rawInput tool identity spoof could suppress dangerous-tool prompting | - | pending | - |
| [GHSA-mp66-rf4f-mhh8](https://github.com/openclaw/openclaw/security/advisories/GHSA-mp66-rf4f-mhh8) | HIGH | Google Chat app-url webhook auth accepted non-deployment add-on principals | - | pending | - |
| [GHSA-cfp9-w5v9-3q4h](https://github.com/openclaw/openclaw/security/advisories/GHSA-cfp9-w5v9-3q4h) | MEDIUM | Image tool bypassed tools.fs.workspaceOnly and could read mounted files outside the workspace | - | pending | - |
| [GHSA-6mqc-jqh6-x8fc](https://github.com/openclaw/openclaw/security/advisories/GHSA-6mqc-jqh6-x8fc) | MEDIUM | Gateway Canvas local-direct requests bypass Canvas HTTP and WebSocket authentication | - | pending | - |
| [GHSA-4qwc-c7g9-4xcw](https://github.com/openclaw/openclaw/security/advisories/GHSA-4qwc-c7g9-4xcw) | MEDIUM | Remote media error responses could trigger unbounded memory allocation before failure | - | pending | - |
| [GHSA-h3x4-hc5v-v2gm](https://github.com/openclaw/openclaw/security/advisories/GHSA-h3x4-hc5v-v2gm) | MEDIUM | Windows media loaders accepted remote-host file URLs before local path validation | - | pending | - |
| [GHSA-rvqr-hrcc-j9vv](https://github.com/openclaw/openclaw/security/advisories/GHSA-rvqr-hrcc-j9vv) | MEDIUM | TXT-only Bonjour and DNS-SD discovery metadata could steer CLI routing when service resolution failed | - | pending | - |
| [GHSA-rm59-992w-x2mv](https://github.com/openclaw/openclaw/security/advisories/GHSA-rm59-992w-x2mv) | MEDIUM | Voice Call webhook buffered request bodies before provider signature checks, enabling bounded unauthenticated resource exhaustion | - | pending | - |
| [GHSA-wj55-88gf-x564](https://github.com/openclaw/openclaw/security/advisories/GHSA-wj55-88gf-x564) | MEDIUM | Queued node actions were not revalidated against current command policy | - | pending | - |
| [GHSA-rqp8-q22p-5j9q](https://github.com/openclaw/openclaw/security/advisories/GHSA-rqp8-q22p-5j9q) | MEDIUM | Synology Chat shared webhook path route replacement collapses multi-account policy contexts and bypasses DM access control | - | pending | - |
| [GHSA-x2cm-hg9c-mf5w](https://github.com/openclaw/openclaw/security/advisories/GHSA-x2cm-hg9c-mf5w) | MEDIUM | Sessions send action missing controlScope enforcement allows leaf subagents to message controlled children | - | pending | - |
| [GHSA-844j-xrrq-wgh4](https://github.com/openclaw/openclaw/security/advisories/GHSA-844j-xrrq-wgh4) | MEDIUM | XFF loopback spoofing bypasses canvas auth and rate limiter when trustedProxies configured | - | pending | - |
| [GHSA-ppwq-6v66-5m6j](https://github.com/openclaw/openclaw/security/advisories/GHSA-ppwq-6v66-5m6j) | MEDIUM | Gateway operator.read exposes credentials embedded in baseUrl fields via config.get and channels.status | - | pending | - |
| [GHSA-8883-9w57-vwv6](https://github.com/openclaw/openclaw/security/advisories/GHSA-8883-9w57-vwv6) | MEDIUM | Mattermost callback dispatch allowed non-allowlisted sender actions | - | pending | - |
| [GHSA-xhq5-45pm-2gjr](https://github.com/openclaw/openclaw/security/advisories/GHSA-xhq5-45pm-2gjr) | MEDIUM | Nextcloud Talk room allowlist matched colliding room names instead of stable room tokens | - | pending | - |
| [GHSA-pw7h-9g6p-c378](https://github.com/openclaw/openclaw/security/advisories/GHSA-pw7h-9g6p-c378) | MEDIUM | Tlon settings empty-allowlist reconciliation bypassed intended revocation | - | pending | - |
| [GHSA-9hjh-fr4f-gxc4](https://github.com/openclaw/openclaw/security/advisories/GHSA-9hjh-fr4f-gxc4) | CRITICAL | Gateway Backend Reconnect lets Non-Admin Operator Scopes Self-Claim operator.admin | - | Mar 27 sync 1 (d3d8e316bd) | - |
| [GHSA-fqw4-mph7-2vr8](https://github.com/openclaw/openclaw/security/advisories/GHSA-fqw4-mph7-2vr8) | CRITICAL | Gateway local shared-auth reconnect silently widens paired device scope from operator.read to operator.admin and reach node RCE | - | pending | - |
| [GHSA-9p93-7j67-5pc2](https://github.com/openclaw/openclaw/security/advisories/GHSA-9p93-7j67-5pc2) | HIGH | Gateway HTTP /sessions/:sessionKey/kill Reaches Admin Kill Path Without Caller Scope Binding | - | Mar 27 sync 2 (02cf12371f) | - |
| [GHSA-h4jx-hjr3-fhgc](https://github.com/openclaw/openclaw/security/advisories/GHSA-h4jx-hjr3-fhgc) | HIGH | Gateway Plugin Subagent Fallback deleteSession Uses Synthetic operator.admin | - | Mar 27 sync 1 (b5d785f1a5) | - |
| [GHSA-q2qc-744p-66r2](https://github.com/openclaw/openclaw/security/advisories/GHSA-q2qc-744p-66r2) | HIGH | session_status sessionId resolution bypasses sandboxed session-tree visibility | - | Mar 27 sync 1 (d9810811b6) | - |
| [GHSA-qm2m-28pf-hgjw](https://github.com/openclaw/openclaw/security/advisories/GHSA-qm2m-28pf-hgjw) | HIGH | Gateway Plugin HTTP auth: "gateway" mints operator.admin runtime scope | - | Mar 27 sync 1 (ec2dbcff9a) | - |
| [GHSA-rhfg-j8jq-7v2h](https://github.com/openclaw/openclaw/security/advisories/GHSA-rhfg-j8jq-7v2h) | HIGH | SSRF via Unguarded Configured Base URLs in Multiple Channel Extensions (Incomplete Fix for CVE-2026-28476) | CWE-918 | Mar 27 sync 1 (f92c92515b + e43600c9e5 + 2513a8d852) | - |
| [GHSA-3h52-cx59-c456](https://github.com/openclaw/openclaw/security/advisories/GHSA-3h52-cx59-c456) | MEDIUM | Feishu webhook reads and parses unauthenticated request bodies before signature validation | - | Mar 27 sync 1 (5e8cb22176) | - |
| [GHSA-4hmj-39m8-jwc7](https://github.com/openclaw/openclaw/security/advisories/GHSA-4hmj-39m8-jwc7) | MEDIUM | ACP CLI approval prompt ANSI escape sequence injection | - | Mar 27 sync 1 (464e2c10a5) | - |
| [GHSA-52q4-3xjc-6778](https://github.com/openclaw/openclaw/security/advisories/GHSA-52q4-3xjc-6778) | MEDIUM | Google Chat Authz Bypass via Group Policy Rebinding with Mutable Space displayName | - | Mar 27 sync 1 (11ea1f6786) | - |
| [GHSA-5jvj-hxmh-6h6j](https://github.com/openclaw/openclaw/security/advisories/GHSA-5jvj-hxmh-6h6j) | MEDIUM | Gateway HTTP Session History Route Bypasses Operator Read Scope | - | Mar 27 sync 1 (1c45123231) | - |
| [GHSA-77w2-crqv-cmv3](https://github.com/openclaw/openclaw/security/advisories/GHSA-77w2-crqv-cmv3) | MEDIUM | Feishu Raw card Send Surface Can Mint Legacy Card Callbacks That Bypass DM Pairing | - | Mar 27 sync 1 (81c45976db) | - |
| [GHSA-9wqx-g2cw-vc7r](https://github.com/openclaw/openclaw/security/advisories/GHSA-9wqx-g2cw-vc7r) | MEDIUM | Matrix Verification Notices Bypass Matrix DM Policy and Reply to Unpaired DM Peers | - | Mar 27 sync 1 (2383daf5c4) | - |
| [GHSA-j4c9-w69r-cw33](https://github.com/openclaw/openclaw/security/advisories/GHSA-j4c9-w69r-cw33) | MEDIUM | Telegram DM-Scoped Inline Button Callbacks Bypass DM Pairing and Mutate Session State | - | Mar 27 sync 1 (269282ac69) | - |
| [GHSA-mf5g-6r6f-ghhm](https://github.com/openclaw/openclaw/security/advisories/GHSA-mf5g-6r6f-ghhm) | MEDIUM | Synology Chat Webhook Pre-Auth Rate-Limit Bypass Enables Brute-Force Guessing of Weak Webhook Token | - | Mar 27 sync 1 (0b4d073374) | - |
| [GHSA-mw7w-g3mg-xqm7](https://github.com/openclaw/openclaw/security/advisories/GHSA-mw7w-g3mg-xqm7) | MEDIUM | BlueBubbles Group Reactions Bypass requireMention and Still Enqueue Agent-Visible System Events | - | Mar 27 sync 1 (f8c9863078) | - |
| [GHSA-rf6h-5gpw-qrgq](https://github.com/openclaw/openclaw/security/advisories/GHSA-rf6h-5gpw-qrgq) | MEDIUM | MS Teams Feedback Invoke Bypasses Sender Allowlists and Records Unauthorized Session Feedback | - | Mar 27 sync 1 (c5415a474b) | - |
| [GHSA-vcx4-4qxg-mfp4](https://github.com/openclaw/openclaw/security/advisories/GHSA-vcx4-4qxg-mfp4) | MEDIUM | Telegram Webhook Missing Guess Rate Limiting Enables Brute-Force Guessing of Weak Webhook Secret | - | Mar 27 sync 1 (c2c136ae95) | - |
| [GHSA-xq8g-hgh6-87hv](https://github.com/openclaw/openclaw/security/advisories/GHSA-xq8g-hgh6-87hv) | MEDIUM | BlueBubbles Webhook Missing Guess Rate Limiting Enables Brute-Force Guessing of Weak Webhook Password | - | Mar 27 sync 1 (5e08ce36d5) | - |
| [GHSA-68f8-9mhj-h2mp](https://github.com/openclaw/openclaw/security/advisories/GHSA-68f8-9mhj-h2mp) | MEDIUM | Gateway HTTP /v1/models Route Bypasses Operator Read Scope | CWE-284, CWE-863 | Mar 28 sync 1 (2d80dbfeba) | @zpbrent |
| [GHSA-94pw-c6m8-p9p9](https://github.com/openclaw/openclaw/security/advisories/GHSA-94pw-c6m8-p9p9) | HIGH | Gateway operator.write Can Reach Admin-Class Channel Allowlist Persistence via chat.send | CWE-269 | pending | @zpbrent |
| [GHSA-vqvg-86cc-cg83](https://github.com/openclaw/openclaw/security/advisories/GHSA-vqvg-86cc-cg83) | MEDIUM | Mutating internal /allowlist chat commands missed operator.admin scope enforcement | CWE-862 | pending | @tdjackey |
| [GHSA-hr5v-j9h9-xjhg](https://github.com/openclaw/openclaw/security/advisories/GHSA-hr5v-j9h9-xjhg) | HIGH | Sandbox Media Root Bypass via Unnormalized mediaUrl / fileUrl Parameter Keys | CWE-22 | pending | @YLChen-007 |
| [GHSA-39mp-545q-w789](https://github.com/openclaw/openclaw/security/advisories/GHSA-39mp-545q-w789) | MEDIUM | Non-owner command-authorized sender can change the owner-only /send session delivery policy | CWE-285 | pending | @tdjackey |
| [GHSA-3298-56p6-rpw2](https://github.com/openclaw/openclaw/security/advisories/GHSA-3298-56p6-rpw2) | MEDIUM | Incomplete Fix for CVE-2026-27486: Unvalidated SIGKILL in !stop Chat Command via shell-utils.ts | CWE-404 | pending | @YLChen-007 |
| [GHSA-xp9r-prpg-373r](https://github.com/openclaw/openclaw/security/advisories/GHSA-xp9r-prpg-373r) | HIGH | browser.request still allows POST /reset-profile through the operator.write surface | CWE-863 | pending | @tdjackey |
| [GHSA-m3mh-3mpg-37hw](https://github.com/openclaw/openclaw/security/advisories/GHSA-m3mh-3mpg-37hw) | HIGH | openclaw Arbitrary Malicious Code Execution Vulnerability | - | pending | @ChangeYourWay |
| [GHSA-w6m8-cqvj-pg5v](https://github.com/openclaw/openclaw/security/advisories/GHSA-w6m8-cqvj-pg5v) | MEDIUM | Incomplete Fix for CVE-2026-32011: Feishu Webhook Pre-Auth Body Parsing DoS (Slow-Body / Slowloris Variant) | CWE-400 | pending | - |
| [GHSA-7jrw-x62h-64p8](https://github.com/openclaw/openclaw/security/advisories/GHSA-7jrw-x62h-64p8) | HIGH | Device Token Rotate Deny Handling Allows Scope Escalation | CWE-269 | v2026.3.22 | - |
| [GHSA-9528-x887-j2fp](https://github.com/openclaw/openclaw/security/advisories/GHSA-9528-x887-j2fp) | MEDIUM | Nextcloud Talk webhook missing rate limiting on shared secret authentication | - | v2026.3.28 | @forgreatagent |
| [GHSA-qxgf-hmcj-3xw3](https://github.com/openclaw/openclaw/security/advisories/GHSA-qxgf-hmcj-3xw3) | HIGH | SSRF via unguarded image download in fal provider | - | v2026.3.28 | @forgreatagent |
| [GHSA-8rh7-6779-cjqq](https://github.com/openclaw/openclaw/security/advisories/GHSA-8rh7-6779-cjqq) | CRITICAL | CWD .env environment variable injection bypasses host-env policy and allows config takeover | - | v2026.3.28 | @tdjackey |
| [GHSA-j7p2-qcwm-94v4](https://github.com/openclaw/openclaw/security/advisories/GHSA-j7p2-qcwm-94v4) | CRITICAL | Incomplete host env sanitization blocklist allows supply-chain redirection via package-manager env overrides | - | v2026.3.22 | @tdjackey |
| [GHSA-6pfc-6m7w-m8fx](https://github.com/openclaw/openclaw/security/advisories/GHSA-6pfc-6m7w-m8fx) | HIGH | Gateway exec allowlist allow-always bypass via unregistered /usr/bin/script wrapper | - | v2026.3.28 | @LonggTeng |
| [GHSA-qf48-qfv4-jjm9](https://github.com/openclaw/openclaw/security/advisories/GHSA-qf48-qfv4-jjm9) | MEDIUM | Feishu extension resolveUploadInput bypasses file-system sandbox and allows arbitrary file reads via upload_image | - | v2026.3.28 | @ADumpling |
| [GHSA-6xg4-82hv-cp6f](https://github.com/openclaw/openclaw/security/advisories/GHSA-6xg4-82hv-cp6f) | HIGH | Gateway chat.send ACP-only provenance guard could be bypassed by client identity spoofing | - | v2026.3.28 | @zpbrent |
| [GHSA-jccr-rrw2-vc8h](https://github.com/openclaw/openclaw/security/advisories/GHSA-jccr-rrw2-vc8h) | HIGH | OpenClaw safeBins jq $ENV filter bypass allows environment variable disclosure | - | v2026.3.28 | @nicky-cc |
| [GHSA-f44p-c7w9-7xr7](https://github.com/openclaw/openclaw/security/advisories/GHSA-f44p-c7w9-7xr7) | HIGH | OpenClaw Gateway WebSocket denial of service via unbounded pre-auth upgrades | - | v2026.3.28 | @topsec-bunney |
| [GHSA-5h2w-qmfp-ggp6](https://github.com/openclaw/openclaw/security/advisories/GHSA-5h2w-qmfp-ggp6) | MEDIUM | Gateway operator.write can reach admin-only persisted verboseLevel via chat.send /verbose | - | v2026.3.28 | @zpbrent |
| [GHSA-g86v-f9qv-rh6m](https://github.com/openclaw/openclaw/security/advisories/GHSA-g86v-f9qv-rh6m) | LOW | OpenClaw SSRF guard misses four IPv6 special-use ranges | - | v2026.3.28 | @nicky-cc |
| [GHSA-5r8f-96gm-5j6g](https://github.com/openclaw/openclaw/security/advisories/GHSA-5r8f-96gm-5j6g) | HIGH | Gateway operator.write can reach admin-only session reset via chat.send /reset | - | v2026.3.28 | @zpbrent |
| [GHSA-v8wv-jg3q-qwpq](https://github.com/openclaw/openclaw/security/advisories/GHSA-v8wv-jg3q-qwpq) | HIGH | message tool media parameter bypasses tool policy filesystem isolation | - | v2026.3.24 | @forgreatagent |
| [GHSA-m866-6qv5-p2fg](https://github.com/openclaw/openclaw/security/advisories/GHSA-m866-6qv5-p2fg) | MEDIUM | OpenClaw host-env blocklist missing GIT_TEMPLATE_DIR and AWS_CONFIG_FILE allows code execution via env override | - | v2026.3.28 | @nicky-cc |
| [GHSA-2pr2-hcv6-7gwv](https://github.com/openclaw/openclaw/security/advisories/GHSA-2pr2-hcv6-7gwv) | HIGH | Device removal and token revocation do not terminate active WebSocket sessions | - | v2026.3.28 | @forgreatagent |
| [GHSA-p4x4-2r7f-wjxg](https://github.com/openclaw/openclaw/security/advisories/GHSA-p4x4-2r7f-wjxg) | HIGH | Gateway exec allow-always over-trusts positional carrier executables | - | v2026.3.28 | - |
| [GHSA-jp4j-q5fc-58gv](https://github.com/openclaw/openclaw/security/advisories/GHSA-jp4j-q5fc-58gv) | MEDIUM | Discord component interaction ingress skips guild/channel policy enforcement | - | v2026.3.28 | @nexrin |
| [GHSA-63mg-xp9j-jfcm](https://github.com/openclaw/openclaw/security/advisories/GHSA-63mg-xp9j-jfcm) | MEDIUM | Google Chat and Zalouser group sender allowlist bypass via policy downgrade | - | v2026.3.28 | @forgreatagent |
| [GHSA-98hh-7ghg-x6rq](https://github.com/openclaw/openclaw/security/advisories/GHSA-98hh-7ghg-x6rq) | HIGH | Discord text /approve bypasses execApprovals.approvers and allows non-approvers to resolve pending exec approvals | - | v2026.3.28 | @tdjackey |
| [GHSA-2x4x-cc5g-qmmg](https://github.com/openclaw/openclaw/security/advisories/GHSA-2x4x-cc5g-qmmg) | HIGH | node.pair.approve missing callerScopes validation allows low-privilege operator to approve malicious nodes | - | v2026.3.28 | @forgreatagent |
| [GHSA-hc5h-pmr3-3497](https://github.com/openclaw/openclaw/security/advisories/GHSA-hc5h-pmr3-3497) | CRITICAL | /pair approve command path omitted caller scope subsetting and reopened device pairing escalation | - | v2026.3.28 | @forgreatagent |
| [GHSA-3cw3-5vxw-g2h3](https://github.com/openclaw/openclaw/security/advisories/GHSA-3cw3-5vxw-g2h3) | HIGH | CLI Remote Onboarding Persists Unauthenticated Discovery Endpoint and Exfiltrates Gateway Credentials | - | v2026.3.28 | @nexrin |
| [GHSA-8689-gm9g-jgr6](https://github.com/openclaw/openclaw/security/advisories/GHSA-8689-gm9g-jgr6) | HIGH | Voice-call Plivo V3 webhook replay key uses unsorted URL, allowing replay via query-parameter reordering | - | v2026.3.28 | @zsxsoft |
| [GHSA-v2v2-f783-358j](https://github.com/openclaw/openclaw/security/advisories/GHSA-v2v2-f783-358j) | MEDIUM | Zalo channel downloads media before sender authorization | - | v2026.3.28 | @forgreatagent |

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

**Fix commits:** `2cdbadee1` (creates `src/infra/host-env-security.ts` with unified `sanitizeHostExecEnv()` at `:46`), `f202e7307` (centralizes policy to `src/infra/host-env-security-policy.json`, policy now shared with macOS Swift layer). `validateHostEnv()` at `src/agents/bash-tools.exec-runtime.ts:77` (enforced at `src/agents/bash-tools.exec.ts:369`) delegates to the centralized enforcement point.

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

**Fix:** Patched in Feb 26 sync 6 by commits [`9925ac6a2`](https://github.com/openclaw/openclaw/commit/9925ac6a2) + [`242188b7b`](https://github.com/openclaw/openclaw/commit/242188b7b). `readConfigIncludeFileWithGuards()` now uses `openBoundaryFileSync()` from `boundary-file-read.ts`, which enforces path boundaries, rejects symlinks and hardlinks, and applies size limits before reading include files.

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

### GHSA-vpj2-69hf-rppw: Browser Control Startup Continued Unauthenticated After Auth Bootstrap Failure

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** When browser control started without explicit auth credentials, OpenClaw attempted to bootstrap auth automatically. In affected versions, if that bootstrap step threw an error, startup could continue and expose browser-control routes without authentication.

**Impact:** On affected deployments, a local process (or a loopback-reachable SSRF path) could access browser-control routes, including evaluate-capable actions, without auth.

**Fix:** Commit `e4d22fb07` fails closed: if bootstrap auth fails and no explicit token/password is configured, browser-control startup aborts. Patched in `openclaw >= 2026.3.1`.

### GHSA-wr6m-jg37-68xh: Unbounded Memory Growth in Zalo Webhook via Query-String Key Churn

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** Unauthenticated requests to a reachable Zalo webhook endpoint could trigger unbounded in-memory key growth by varying query strings on the same valid webhook route.

**Impact:** An attacker could cause memory pressure and potential process instability or OOM, degrading availability.

**Fix:** Commit `43cad8268` introduces `createFixedWindowRateLimiter()` and `createBoundedCounter()` from `src/plugin-sdk/webhook-memory-guards.ts`, normalizing webhook tracking keys and bounding/pruning state across Feishu, Nostr, Synology Chat, and Zalo extensions. Patched in `openclaw >= 2026.3.1`.

### GHSA-jr6x-2q95-fh2g: Authorization Mismatch Allowed Write-Scope Agent Runs to Reach Owner-Only Tools

**Severity:** HIGH

**Published:** 2026-03-02

**Description:** An authorization mismatch allowed authenticated callers with `operator.write` access to invoke owner-only tool surfaces (`gateway`, `cron`) through `agent` runs in scoped-token deployments.

**Impact:** On affected deployments, write-scoped callers could perform control-plane actions beyond intended write scope.

**Fix:** Owner-only gating is now enforced consistently for owner-only tool surfaces during agent execution, and tool scope classification was tightened to remove the privilege mismatch. Patched in `openclaw >= 2026.3.1`.

### GHSA-392f-ggf5-fp3c: Unicode Canonicalization Drift in Node Metadata Policy Classification

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** A paired node could supply Unicode-confusable `platform` or `deviceFamily` metadata that passed metadata pinning but classified differently for command policy resolution, broadening default node command allowlists.

**Impact:** A policy-bypass issue within the paired-node trust boundary that can expand node command availability beyond intended defaults.

**Fix:** Node metadata canonicalization was hardened against confusables, and unknown platform defaults were made conservative (excluding `system.run` and `system.which` unless explicitly allowlisted). Patched in `openclaw >= 2026.3.1`.

### GHSA-q399-23r3-hfx4: system.run Approvals Did Not Bind PATH-Token Executable Identity

**Severity:** HIGH

**Published:** 2026-03-02

**Description:** For `host=node` runs, approvals validated command context but did not pin executable identity for non-path-like `argv[0]` tokens (for example `tr`). If PATH resolution changed after approval, execution could run a different binary.

**Impact:** A previously approved action could execute a different executable than the operator approved.

**Fix:** Node `system.run` approvals now require immutable `systemRunPlan` data, and path-token commands are pinned to canonical executable identity (`realpath`) across approval and execution. Patched in `openclaw >= 2026.3.1`.

### GHSA-p7gr-f84w-hqg5: Sandboxed sessions_spawn Enforces Sandbox Inheritance for Cross-Agent Spawns

**Severity:** HIGH

**Published:** 2026-03-02

**Description:** A sandboxed session could use cross-agent `sessions_spawn` to create a child under an agent configured with `sandbox.mode="off"`, downgrading runtime confinement.

**Impact:** In mixed-agent setups that allow cross-agent spawning, a sandboxed requester could escape into an unsandboxed child runtime.

**Fix:** Commit `4fc7ecf08` enforces spawn-time sandbox inheritance: if the requester is sandboxed and the resolved child runtime would be unsandboxed, spawn is rejected. Also adds system prompt instruction prohibiting `message action=thread-create` for ACP harness requests. Patched in `openclaw >= 2026.3.1`.

### GHSA-7xmq-g46g-f8pv: Sandbox Media TOCTOU Could Read Files Outside Sandbox Root

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** Sandbox media handling had a time-of-check/time-of-use gap: media paths could be validated first and read later through a separate path. A symlink retarget between those steps could cause reads outside `sandboxRoot`.

**Impact:** Affected versions could permit host file reads outside the intended sandbox root in media attachment/image flows.

**Fix:** Media reads now use consolidated root-scoped, boundary-safe read paths at use time, removing check/use drift across call sites. Patched in `openclaw >= 2026.3.1`.

### GHSA-x82f-27x3-q89c: TOCTOU Symlink Race in writeFileWithinRoot Could Create or Truncate Files Outside Root

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** A symlink-retarget TOCTOU race in `writeFileWithinRoot` (`src/infra/fs-safe.ts`) could point an attacker-controlled path alias outside the configured root between resolution and write operations.

**Impact:** Affected versions could cause out-of-root write side effects (including file creation or truncation) before final boundary validation.

**Fix:** Root-scoped write flow now opens existing files without pre-truncation, creates missing files with exclusive create semantics, truncates only after post-open identity/boundary checks, and removes out-of-root artifacts when a race is detected. Patched in `openclaw >= 2026.3.1`.

### GHSA-8m9v-xpgf-g99m: Unauthorized Sender Bypass in Stop Triggers and /models Command Authorization

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** Unauthorized senders could trigger two command paths without sender authorization checks: (1) stop-like natural-language abort triggers, and (2) `/models` command output.

**Impact:** An unauthorized sender could disrupt active sessions and view model/auth metadata that should be authorization-gated.

**Fix:** Commit `a93a7bb1` enforces sender authorization for stop-like abort triggers and `/models` listings. Patched in `openclaw >= 2026.3.1`.

### GHSA-6f6j-wx9w-ff4j: ACPX Windows Wrapper Shell Fallback Allowed cwd Injection

**Severity:** HIGH

**Published:** 2026-03-02

**Description:** On Windows ACPX paths, wrapper resolution for `.cmd`/`.bat` could fall back to shell execution in ways that allowed `cwd` influence to alter execution behavior.

**Impact:** In affected Windows ACPX configurations, this could enable command execution integrity loss through cwd-influenced wrapper resolution.

**Fix:** Commits `9e6e7a3d6` and `12c125702` harden the Windows cmd wrapper: resolution now prefers explicit PATH/PATHEXT entrypoint resolution and unwrapped Node/EXE execution. The shared `src/plugin-sdk/windows-spawn.ts` module adds `strictWindowsCmdWrapper` mode (fail-closed for unresolvable wrapper cases). Patched in `openclaw >= 2026.3.1`.

### GHSA-g99v-8hwm-g76g: web_search Citation Redirect SSRF via Private-Network-Allowing Policy

**Severity:** MEDIUM

**Published:** 2026-03-02

**Description:** Gemini `web_search` citation redirect resolution used a private-network-allowing SSRF policy. A citation URL redirect could target loopback/private/internal destinations and be fetched by the gateway.

**Impact:** An attacker who can influence citation redirect targets could trigger internal-network requests from the OpenClaw host.

**Fix:** Citation redirect resolution now uses strict/default SSRF policy (no private-network override), blocking localhost/private/internal redirect targets. Patched in `openclaw >= 2026.3.1`.

### GHSA-wpg9-4g4v-f9rc: Discord Voice Transcript Owner-Flag Omission

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** In `openclaw@2026.3.1`, the Discord voice transcript path called `agentCommand(...)` without `senderIsOwner`, and `agentCommand` defaults missing `senderIsOwner` to `true`. This could allow a non-owner voice participant in the same channel to reach owner-only tool surfaces (`gateway`, `cron`) during voice transcript turns.

**Impact:** Affects deployments where Discord voice is enabled and the bot is present in channels with non-owner participants. Practical risk depends on whether the deployment is single-trust (recommended) or mixed-trust (not recommended per OpenClaw's trust model).

**Fix:** Always pass explicit `senderIsOwner` from Discord voice transcript ingress. Fail closed (`false`) when owner status is unknown for non-local/chat ingress paths. Patched in `openclaw >= 2026.3.2`.

### GHSA-2858-xg23-26fp: Node Camera URL Payload Host-Binding Bypass

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** OpenClaw accepted `camera.snap`/`camera.clip` node payload `url` fields and downloaded them on the gateway/agent host without binding downloads to the resolved node host. A malicious or compromised paired node could steer gateway-host fetches to off-node destinations during camera URL retrieval.

**Impact:** A compromised paired node could trigger internal network probing/fetch pivots in deployments where paired nodes are not fully trusted.

**Fix:** Introduces fail-closed node-host binding: requires resolved node host metadata for URL payload downloads, enforces hostname match between payload URL and resolved node host, and uses SSRF-guarded fetch with redirect host/protocol checks. Applied across both CLI and agent tool camera paths. Fix commit: `3bf19d6f40a`. Patched in `openclaw >= 2026.3.2`.

### GHSA-r54r-wmmq-mh84: ZIP Extraction Race via Parent Symlink Rebind

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** ZIP extraction in `src/infra/archive.ts` validated output paths then opened/truncated the destination path in a separate step. A local race on parent-directory symlink state between validation and write could redirect the final write outside the extraction root.

**Impact:** Could allow crafted ZIP archives to write files outside the intended extraction directory.

**Fix:** Hardens ZIP writes by binding writes to the opened file handle identity and avoiding the pre-write truncate race path, with shared fd realpath verification in `src/infra/fs-safe.ts` and regression coverage in `src/infra/archive.test.ts`. Fix commit: `7dac9b05dd9`. Patched in `openclaw >= 2026.3.2`.

### GHSA-cfvj-7rx7-fc7c: stageSandboxMedia Destination Symlink Traversal

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** `stageSandboxMedia` allowed destination symlink traversal during media staging: writes under `media/inbound` were not destination-alias-safe. A symlink in the destination path could cause the write to follow it and overwrite host files outside the sandbox workspace boundary.

**Impact:** Media staging could permit out-of-sandbox writes in affected versions.

**Fix:** Routes staging writes through root-scoped safe write primitives for both local and SCP-staged attachments, preventing destination symlink traversal escapes. Fix commit: `17ede52a4be`. Patched in `openclaw >= 2026.3.2`.

### GHSA-v865-p3gq-hw6m: Encoded-Path Auth Bypass in Plugin `/api/channels` Route

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** Encoded alternate-path requests could bypass plugin route auth checks for `/api/channels/*` due to canonicalization depth mismatch. In affected versions, plugin auth-path classification and route-path canonicalization could diverge for deeply encoded slash variants (e.g., multi-encoded `%2f`), allowing encoded paths to evade protected-prefix auth checks while still resolving to `/api/channels/...` in plugin route handling.

**Impact:** Deployments exposing plugin HTTP routes could be affected by auth bypass on `/api/channels/*` paths.

**Fix:** Canonicalizes route paths to a bounded fixpoint, fails closed on malformed or unresolved canonicalization depth, requires explicit plugin-route auth contracts, and enforces route ownership/conflict guards. Fix commits: `93b07240`, `2fd8264a`, `d74bc257`, `7a7eee92`. Patched in `openclaw >= 2026.3.2` (patched in Mar 3 sync 3).

### GHSA-8mvx-p2r9-r375: Web Tools Strict URL Guard DNS Pinning Loss with Env Proxy

**Severity:** HIGH

**Published:** 2026-03-03

**Description:** `openclaw` web tools strict URL fetch paths (e.g., `web_fetch`, citation redirect resolution) could lose DNS pinning when environment proxy variables are configured (`HTTP_PROXY`/`HTTPS_PROXY`/`ALL_PROXY`). SSRF guard performed hostname resolution and policy checks, then runtime connection routing could use `EnvHttpProxyAgent` instead of the DNS-pinned dispatcher, creating a destination-binding gap between check-time and connect-time.

**Impact:** In deployments with env proxy variables configured, attacker-influenced URLs from web tools could be routed through proxy behavior instead of strict pinned-destination routing, potentially reaching internal/private targets reachable from that proxy environment.

**Fix:** Keeps DNS pinning on strict/untrusted web-tool URL paths; limits env-proxy bypass to trusted/operator-controlled endpoints via an explicit dangerous opt-in. Fix commit: `345abf0b2e`. Patched in `openclaw >= 2026.3.2`.

### GHSA-h3rm-6x7g-882f: system.run Approval Wrapper Semantic Drift

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** In `openclaw@2026.3.1`, node `system.run` approval-path hardening rewrote wrapper command argv in a way that changed execution semantics. `src/node-host/invoke-system-run-plan.ts` rewrote `argv[0]` to the resolved executable; wrapper unwrapping could produce e.g. `['/bin/sh','sh','-c','echo SAFE']` while approval text remained `echo SAFE`. `/bin/sh` interprets the extra `sh` positional as a script path, enabling execution of a local `./sh` file from the approved `cwd`.

**Impact:** Approval-integrity break in `host=node` execution flow: operator-visible command text and executed behavior could diverge when an attacker can influence wrapper argv and place a local file in the approved working directory.

**Fix:** Fix commit: `dded56962` (same commit as GHSA-q399-23r3-hfx4). Patched in `openclaw >= 2026.3.2` (patched in Mar 3 sync 6).

### GHSA-474h-prjg-mmw3: Sandboxed sessions_spawn ACP Sandbox Inheritance Bypass

**Severity:** HIGH

**Published:** 2026-03-03

**Description:** Sandboxed `sessions_spawn(runtime="acp")` could bypass sandbox inheritance and initialize host-side ACP runtime. `runtime="subagent"` enforced sandbox inheritance, while `runtime="acp"` did not enforce equivalent sandbox/runtime checks, allowing sandbox-boundary bypass into host-side ACP initialization.

**Impact:** A sandboxed session could reach host-side ACP initialization, bypassing the intended sandbox confinement boundary.

**Fix:** Denies ACP spawn when requester runtime is sandboxed; denies `sessions_spawn` with `runtime="acp", sandbox="require"`; aligns sandboxed prompt guidance to avoid advertising blocked ACP paths. Fix commits: `ac11f0af7`, `c703aa0fe`. Patched in `openclaw >= 2026.3.2`.

### GHSA-3pxq-f3cp-jmxp: Unified Root-Bound Write Hardening for Browser Output

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** A path-confinement bypass in browser output handling allowed writes outside intended roots. Browser output writes did not use root-bound, fd/inode-verified commit flow; install and skills path checks had divergent canonical validation, creating escape surfaces.

**Impact:** Could allow writes outside the intended browser output root in affected versions.

**Fix:** Browser output writes now use root-bound, fd/inode-verified commit flow. Install + skills path checks share canonical in-base validation. Regression coverage added for symlink-rebind and root-bound source-path write behavior. Fix commit: `104d32bb6`. Patched in `openclaw >= 2026.3.2`.

### GHSA-x4vp-4235-65hg: Pre-Auth Webhook Body Parsing Unauthenticated DoS

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** OpenClaw webhook handlers for BlueBubbles and Google Chat accepted and parsed request bodies before authentication and signature checks on vulnerable releases. This allowed unauthenticated clients to hold parser work open with slow/oversized request bodies and degrade availability.

**Impact:** Unauthenticated slow-request DoS against webhook endpoints.

**Fix:** Enforces auth-before-body for affected webhook paths, adds strict pre-auth body/time budgets, and introduces shared in-flight/request guardrails with regression coverage. Fix commit: `d3e8b17aa` (same commit as GHSA-q447-rj3r-2cgh). Patched in `openclaw >= 2026.3.2`.

### GHSA-77hf-7fqf-f227: skills-install-download tar.bz2 Archive Safety Parity Bypass

**Severity:** MEDIUM

**Published:** 2026-03-03

**Description:** The `tar.bz2` installer path in `src/agents/skills-install-download.ts` used shell tar preflight/extract logic that did not share the same hardening guarantees as the centralized archive extractor. This allowed crafted `.tar.bz2` archives to bypass special-entry blocking and extracted-size guardrails enforced on other archive paths.

**Impact:** Local DoS / availability impact when processing untrusted `.tar.bz2` skill archives.

**Fix:** Brings `tar.bz2` extraction into parity with centralized archive safety enforcement. Fix commit: `0dbb92dd2`. Patched in `openclaw >= 2026.3.2`.

### GHSA-rchv-x836-w7xp: Dashboard Leaked Gateway Auth Material via Browser URL and localStorage

**Severity:** HIGH

**Published:** 2026-03-08

**Description:** The OpenClaw web dashboard exposed gateway authentication material (tokens, credentials) through the browser URL query string and localStorage. Credentials could be exfiltrated via browser history, referrer headers, or XSS targeting localStorage.

**Impact:** Disclosure of gateway authentication credentials to actors with access to browser history or localStorage.

**Fix:** Auth material removed from URL parameters; localStorage cleared of sensitive fields. Patched in `openclaw >= 2026.3.8`.

### GHSA-6rmx-gvvg-vh6j: Hooks Count Non-POST Requests Toward Auth Lockout

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The authentication lockout mechanism in webhook hooks counted non-POST requests (e.g., GET, HEAD) toward the failed-auth counter. An unauthenticated actor could trigger lockouts without needing to make authentication attempts, creating a denial-of-service vector against the auth system.

**Impact:** Unauthenticated DoS against webhook authentication via lockout exhaustion.

**Fix:** Lockout counter scoped to POST requests only. Patched in `openclaw >= 2026.3.8`.

### GHSA-6mgf-v5j7-45cr: Fetch-Guard Forwards Custom Authorization Headers Across Cross-Origin Redirects

**Severity:** HIGH

**Published:** 2026-03-08

**Description:** The `fetch-guard` layer that enforces SSRF protections forwarded custom `Authorization` headers across cross-origin redirects. An attacker able to control a redirect target could use this to exfiltrate auth tokens to a controlled host.

**Impact:** Auth token exfiltration via cross-origin redirect during gateway-initiated web fetches.

**Fix:** `Authorization` headers stripped before following cross-origin redirects. Patched in `openclaw >= 2026.3.8`.

### GHSA-pjvx-rx66-r3fg: Cross-Account Sender Authorization Expansion in allowlist --store Account Scoping

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The `/allowlist ... --store` command did not correctly scope stored allowlist entries to the originating account. Entries could inadvertently expand sender authorization across accounts, allowing senders authorized in one account context to be treated as authorized in another.

**Impact:** Unintended cross-account sender authorization in multi-account deployments.

**Fix:** Allowlist store operations scoped strictly to the originating account. Patched in `openclaw >= 2026.3.8`.

### GHSA-hfpr-jhpq-x4rm: operator.write chat.send Could Reach Admin-Only Config Writes

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The `operator.write` permission scope, which controls `chat.send`, could escalate to reach config write operations that should be restricted to admin-only. The authorization check did not sufficiently separate the `chat.send` capability from the broader config write surface.

**Impact:** Operator-level users could write to admin-only config paths via `chat.send` paths.

**Fix:** Authorization checks tightened to separate `chat.send` capabilities from config write access. Patched in `openclaw >= 2026.3.8`.

### GHSA-j425-whc4-4jgc: system.run Env Override Filtering Allowed Dangerous Helper-Command Pivots

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The environment variable filtering in `system.run` did not block overrides that could pivot execution to dangerous helper commands. Certain env vars (e.g., `GIT_SSH_COMMAND`, wrapper-style overrides) could be passed through to influence which binary was ultimately executed.

**Impact:** Env var injection enabling execution of attacker-controlled helper commands within `system.run` invocations.

**Fix:** Expanded env override blocklist to cover helper-command pivot variables. Patched in `openclaw >= 2026.3.8`.

### GHSA-9q36-67vc-rrwg: Sandboxed /acp Spawn Requests Could Initialize Host ACP Sessions

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** A sandboxed agent making `/acp` spawn requests could, under certain conditions, initialize ACP sessions on the host rather than within the sandbox boundary. This allowed sandboxed agents to influence host-level ACP session state.

**Impact:** Sandbox escape via ACP session initialization leaking to host context.

**Fix:** ACP spawn requests from sandboxed agents are confined to the sandbox. Patched in `openclaw >= 2026.3.8`.

### GHSA-9q2p-vc84-2rwm: system.run allow-always Persistence Included Shell-Commented Payload Tails

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The `allow-always` persistence mechanism for `system.run` approvals stored the full invocation including shell-commented payload tails (e.g., `# <injected>`). On subsequent invocations, the stored approval could match a command with a commented-out payload that differed from the originally approved invocation.

**Impact:** Approval persistence bypass — a modified command with injected shell comments could be approved based on a prior approval for a different command.

**Fix:** `allow-always` approval storage strips shell-commented tails before persistence. Patched in `openclaw >= 2026.3.8`.

### GHSA-r6qf-8968-wj9q: system.run Wrapper-Depth Boundary Could Skip Shell Approval Gating

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The `system.run` wrapper-depth tracking used to gate shell approval checks could, at certain recursion depths or wrapper chain lengths, skip the approval gate entirely. This allowed commands wrapped inside multiple shell invocations to bypass the approval requirement.

**Impact:** Shell approval gate bypass via wrapper-depth boundary exploitation.

**Fix:** Wrapper-depth boundary enforced more strictly; approval gate cannot be skipped regardless of wrapping depth. Patched in `openclaw >= 2026.3.8`.

### GHSA-3h2q-j2v4-6w5r: system.run Allowlist Approval Parsing Missed PowerShell Encoded-Command Wrappers

**Severity:** MEDIUM

**Published:** 2026-03-08

**Description:** The `system.run` allowlist approval parser did not recognize PowerShell `encoded-command` (`-EncodedCommand`) wrappers, treating them as unrecognized invocations rather than decoding and checking the embedded command against the allowlist. This caused encoded PowerShell commands to either bypass or incorrectly trigger approval gating.

**Impact:** PowerShell encoded-command invocations could bypass `system.run` allowlist approval checks.

**Fix:** PowerShell `encoded-command` wrappers decoded and checked against the allowlist during approval parsing. Patched in `openclaw >= 2026.3.8`.

### CVE-2026-32302 / GHSA-5wcw-8jjv-m286: Browser WebSocket Origin Bypass in Trusted-Proxy Mode

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Browser-originated WebSocket connections could bypass origin validation when `gateway.auth.mode` was set to `trusted-proxy` and the request arrived with proxy headers. A page served from an untrusted origin could connect through a trusted reverse proxy, inherit proxy-authenticated identity, and establish a privileged operator session.

**Impact:** Deployments exposing the gateway behind a trusted reverse proxy could be compromised via cross-site WebSocket connections. An attacker-origin page could call `config.get` with `operator.admin` scope and read sensitive configuration.

**Fix:** OpenClaw now enforces browser origin validation for any browser-originated WebSocket connection regardless of whether proxy headers are present. Fixed commit: `ebed3bbde1a72a1aaa9b87b63b91e7c04a50036b`.

### GHSA-4jpw-hj22-2xmc: Pairing-Scoped Token Privilege Escalation to Node RCE

**Severity:** CRITICAL
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** A caller holding only `operator.pairing` could use `device.token.rotate` to mint a new token with broader scopes for an already paired device. If the target device was approved for `operator.admin`, the attacker could obtain an administrative token without already holding administrative scope.

**Impact:** On deployments with connected node hosts exposing `system.run`, the escalated token could modify node execution approvals and reach remote code execution on the node. Even without nodes, unauthorized gateway-admin access was possible.

**Fix:** OpenClaw now enforces caller-scope subsetting in `device.token.rotate`, preventing callers from minting device tokens broader than the scopes they already hold.

### GHSA-8jhh-jcqg-mj5p: Channel Commands Bypass Account-Scoped `configWrites` Restrictions

**Severity:** MEDIUM
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Channel-initiated config mutations were authorized against the originating account's `configWrites` policy but did not consistently re-check the targeted account scope. An authorized sender on one account could mutate protected sibling-account configuration when the target account had `configWrites: false`.

**Impact:** Account-scoped policy bypass inside a single gateway deployment. Channel commands such as `/config set channels.<provider>.accounts.<id>...` could modify protected sibling-account configuration.

**Fix:** Config mutations are now authorized against both the origin scope and each resolved target scope; ambiguous root and collection writes from channel commands are rejected unless the caller holds `operator.admin`.

### GHSA-4w7m-58cg-cmff: Leaf Subagents Could Steer Sibling Sessions Across Sandbox Boundaries

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Sandboxed leaf subagents retained the `subagents` control surface and resolved requests against the parent requester scope. A low-privilege sandboxed leaf worker could steer or kill a sibling run owned by the same requester.

**Impact:** Sandbox and session-scope boundary bypass. A sandboxed leaf session could cause a sibling to execute with its broader tool policy.

**Fix:** Leaf subagents no longer receive `subagents` control access by default; subagent control is scoped to the caller's own descendants, and steer/kill requests targeting runs outside that tree are rejected.

### GHSA-9vvh-2768-c8vp: Discord Guild Reaction Ingress Bypassed Users and Roles Allowlists

**Severity:** MEDIUM
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Discord reaction ingestion for guild channels did not enforce the same member users and roles allowlist checks used for normal inbound guild messages. A non-allowlisted guild member could still trigger reaction events accepted as trusted system events for the target session.

**Impact:** Authorization bypass in the Discord allowlist path; reaction text could be injected into downstream session context even when the reacting member was not permitted by the configured allowlist.

**Fix:** The same users and roles allowlist enforcement now applies to guild reaction ingress.

### GHSA-jf6w-m8jw-jfxc: `agent` Write-Scope Callers Could Reach Admin-Only Session Reset

**Severity:** MEDIUM
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** A gateway caller with `operator.write` could issue `agent` requests containing `/new` or `/reset` and reach the same reset path used by the admin-only `sessions.reset` RPC. Scope checks were enforced only on the outer RPC method.

**Impact:** Non-admin write-scoped callers could reset targeted conversation state, crossing the documented method-scope boundary.

**Fix:** Conversation `/new` and `/reset` no longer route through the admin-only `sessions.reset` entry point; reset logic now lives in a shared service while `sessions.reset` remains admin-only.

### GHSA-qc36-x95h-7j53: Unrecognized Script Runners Bypassed `system.run` Approval Integrity

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Node-host `system.run` approvals did not bind a mutable file operand for some script runners including `tsx` and `jiti`. An attacker could obtain approval for a benign script-runner command, rewrite the referenced script on disk, and have modified code execute under the already approved context.

**Impact:** Deployments relying on node-host `system.run` approvals for script integrity could execute rewritten local code after operator approval.

**Fix:** OpenClaw now fails closed for approval-backed interpreter and runtime commands unless exactly one concrete local file operand can be bound; coverage extended for additional runtime forms.

### GHSA-mj4p-rc52-m843: Sandbox Staged Writes Could Escape Verified Parent Directory

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Sandbox fs-bridge writes validated the destination before commit, but temporary file creation was not pinned to a verified parent directory. A raced parent-path alias change could cause the staged temp file to be created outside the intended writable mount.

**Impact:** Sandbox boundary bypass; attacker-controlled bytes could be written outside the validated path before the final guarded step ran.

**Fix:** A pinned mount root plus relative parent path is now resolved, the temporary file is created inside the verified parent directory, and the final atomic replace runs from that pinned directory context.

### GHSA-qvr7-g57c-mrc7: Local Auth SecretRefs Could Fall Through to Remote Credentials in Local Mode

**Severity:** LOW
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Local gateway helper credential resolution treated configured but unavailable `gateway.auth.token` and `gateway.auth.password` SecretRefs as if they were unset, and could fall back to `gateway.remote.*` credentials in local mode.

**Impact:** Local CLI and helper paths could select the wrong credential source instead of failing closed for configured local auth SecretRefs.

**Fix:** Whether the local auth input is configured is now tracked separately from whether it resolves successfully; remote fallback is only allowed when the matching local auth input is truly unset.

### GHSA-xf99-j42q-5w5p: Unbound Interpreter Commands Bypassed Node-Host Approval Integrity

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Node-host `system.run` approvals could still execute rewritten local code for interpreter and runtime commands when OpenClaw could not bind exactly one concrete local file operand during approval planning. The approval flow treated some interpreter forms as approval-backed even without an honest file binding.

**Impact:** Deployments using node-host approval mode could approve a benign local script then execute different local code if that script changed before execution.

**Fix:** OpenClaw now fails closed for approval-backed interpreter and runtime commands unless exactly one concrete local file operand can be bound; best-effort direct-file binding extended for additional runtime forms.

### GHSA-rw39-5899-8mxp: Node-Host Approvals Showed Misleading Shell Payloads

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** Node-host `system.run` approvals could display only an extracted shell payload such as `jq --version` while execution still ran a different outer wrapper argv such as `./env sh -c 'jq --version'`. Wrapper resolution normalized executables by basename and extracted inner shell payload text for approval display while execution preserved the full wrapper argv.

**Impact:** An attacker who could place a local wrapper binary could get local code executed after the operator approved misleading command text.

**Fix:** Approvals are now bound to the exact executed argv; extracted shell payload text is kept only as secondary preview data.

### GHSA-xvx8-77m6-gwg6: Sandbox `writeFile` Commit Could Race Outside Validated Path

**Severity:** MEDIUM
**Published:** 2026-03-12
**Patched:** v2026.3.11

**Description:** The sandbox fs-bridge `writeFile` commit step used an unanchored container path during the final move. An attacker racing parent-path changes inside the sandbox could redirect the committed file outside the validated sandbox path.

**Impact:** Sandbox boundary bypass via TOCTOU race; committed files could land outside the validated writable path within the container mount namespace.

**Fix:** The `writeFile` commit path is now anchored to the canonical parent directory before the final move.

### GHSA-xw77-45gv-p728: Plugin Subagent Routes Bypassed Gateway Authorization with Synthetic Admin Scopes

**Severity:** HIGH
**Published:** 2026-03-12
**Patched:** v2026.3.11 (affected >= 2026.3.7)

**Description:** The plugin subagent runtime dispatched gateway methods through a synthetic operator client carrying broad administrative scopes. A plugin-owned HTTP route using `auth: "plugin"` could trigger admin-only gateway actions without normal gateway authorization when that route called `runtime.subagent.*`.

**Impact:** Remote unauthenticated requests to plugin-owned routes could reach privileged subagent runtime methods and perform admin-only gateway actions such as deleting sessions, reading session data, or triggering agent execution.

**Fix:** OpenClaw now propagates the real gateway client into the plugin subagent runtime and caps unauthenticated plugin-route access to non-admin scope.

### GHSA-f5mf-3r52-r83w: Zalouser Allowlist Authorization Matched Mutable Group Names

**Severity:** MEDIUM
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** OpenClaw's Zalouser allowlist mode accepted mutable group names and normalized slugs as authorization matches instead of requiring stable group IDs. In deployments using name-based `channels.zalouser.groups` entries, a different group could be accepted by reusing the same display name.

**Impact:** Channel authorization weakened for Zalouser group routing; messages from an unintended group could reach the agent when operators relied on group names.

**Fix:** Allowlist authorization now matches stable group identifiers.

### GHSA-7h7g-x2px-94hj: Pairing Setup Codes Exposed Long-Lived Shared Credentials

**Severity:** MEDIUM
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** Pairing setup codes generated by `/pair` and `openclaw qr` embedded the configured shared gateway token or password directly in the setup payload. Anyone who obtained the code from chat history, logs, screenshots, or copied QR payloads could recover the long-lived shared credential.

**Impact:** A leaked setup code enabled reuse of the shared gateway credential outside the intended one-time pairing flow.

**Fix:** Setup codes now carry short-lived bootstrap tokens valid only for the initial device bootstrap exchange. Operators should rotate previously exposed shared credentials.

### GHSA-rqpp-rjj8-7wv8: WebSocket Shared-Auth Connections Could Self-Declare Elevated Scopes

**Severity:** CRITICAL
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** A logic flaw in the gateway WebSocket connect path allowed certain device-less shared-token or password-authenticated backend connections to keep client-declared scopes without server-side binding. A shared-authenticated client could present elevated scopes such as `operator.admin` not tied to a device identity or trusted Control UI path.

**Impact:** A shared-secret-authenticated backend client could perform admin-only gateway operations.

**Fix:** The gateway now clears unbound scopes for non-Control-UI shared-auth connections; regression tests cover the device-less shared-auth path.

### GHSA-99qw-6mr3-36qr: Workspace Plugin Auto-Discovery Allowed Code Execution from Cloned Repositories

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** OpenClaw automatically discovered and loaded plugins from `.openclaw/extensions/` inside the current workspace without an explicit trust or install step. A malicious repository could include a crafted workspace plugin that executed as soon as a user ran OpenClaw from that cloned directory.

**Impact:** Opening or running OpenClaw in an untrusted repository could lead to arbitrary code execution under the user's account.

**Fix:** Workspace plugin loading now requires explicit trusted state before execution.

### GHSA-r7vr-gr74-94p8: Non-Owners Could Reach Owner-Only `/config` and `/debug` Surfaces

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** `/config` and `/debug` are documented as owner-only commands, but the command handlers checked only whether the sender was command-authorized. A lower-trust sender intentionally allowed to run commands could still reach privileged configuration and debugging surfaces.

**Impact:** A non-owner sender could read or change privileged configuration that should be restricted to owners.

**Fix:** Owner checks are now enforced for privileged command surfaces; regression tests cover `/config` and `/debug` access control.

### GHSA-5m9r-p9g7-679c: Zalo Webhook Rate Limiting Bypassed Before Secret Validation

**Severity:** MEDIUM
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** The Zalo webhook handler applied request rate limiting only after webhook authentication succeeded. Requests with an invalid secret returned `401` but did not count against the rate limiter, allowing repeated secret guesses without triggering `429`.

**Impact:** Brute-force guessing of weak webhook secrets was materially easier; a guessed secret enabled forged Zalo webhook traffic.

**Fix:** Rate limiting now applies before successful authentication is required.

### GHSA-g353-mgv3-8pcj: Feishu Webhook Accepted Forged Events Without `encryptKey`

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** Feishu webhook mode allowed deployments that configured only `verificationToken` without `encryptKey`. In that state, forged inbound events could be accepted because the weaker configuration did not provide the required cryptographic verification boundary.

**Impact:** An unauthenticated network attacker reaching the webhook endpoint could inject forged Feishu events, impersonate senders, and potentially trigger downstream tool execution.

**Fix:** Feishu webhook mode now fails closed unless `encryptKey` is configured; the webhook transport rejects missing or invalid signatures before dispatch. Operators should configure `encryptKey` for webhook deployments.

### GHSA-m69h-jm2f-2pv8: Feishu Reaction Events Bypassed Group Authorization and Mention Gating

**Severity:** MEDIUM
**Published:** 2026-03-13
**Patched:** v2026.3.12

**Description:** A Feishu reaction-originated synthetic event could misclassify a group conversation as `p2p` when the inbound reaction payload omitted `chat_type`. Authorization and mention-gating logic evaluated the event as a direct message instead of a group message.

**Impact:** `groupAllowFrom` and `requireMention` protections could be bypassed for reaction-derived events in Feishu group chats.

**Fix:** Reaction events now preserve the correct group context before authorization and mention-gate evaluation.

### GHSA-vmhq-cqm9-6p7q: `browser.request` Let `operator.write` Persist Admin-Only Browser Profile Changes

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.11

**Description:** An authorization mismatch let an authenticated caller with only `operator.write` use `browser.request` to reach browser profile management routes that persist configuration to disk. In practice, `/profiles/create` exposed an admin-only configuration write primitive to write-scoped operators.

**Impact:** A write-scoped operator could create or modify browser profiles and store attacker-chosen remote CDP endpoints without holding `operator.admin`.

**Fix:** Browser profile creation now requires the correct admin boundary; regression tests cover the write-vs-admin authorization split.

### GHSA-f8r2-vg7x-gh8m: Exec Approval Allowlist Patterns Overmatched on POSIX Paths

**Severity:** MEDIUM
**Published:** 2026-03-13
**Patched:** v2026.3.11

**Description:** `matchesExecAllowlistPattern` normalized patterns and targets with lowercasing and compiled glob matching too broadly on POSIX. The `?` wildcard could match `/`, allowing matches to cross path segments.

**Impact:** Allowlist entries could overmatch and permit commands or executable paths that an operator did not intend to approve.

**Fix:** Exec allowlist matching now respects intended path semantics; regression tests cover the POSIX case-folding and slash-crossing cases.

### GHSA-2rqg-gjgv-84jm: Gateway `agent` Calls Could Override the Workspace Boundary

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.11

**Description:** The public gateway `agent` RPC allowed an authenticated operator with `operator.write` to supply attacker-controlled `spawnedBy` and `workspaceDir` values, re-rooting the agent run outside its configured workspace boundary.

**Impact:** A non-owner operator could escape the intended workspace boundary and run normal file and exec tools from an arbitrary process-accessible directory.

**Fix:** The gateway now enforces the configured workspace boundary for agent runs regardless of caller-supplied overrides.

### GHSA-wcxr-59v9-rxr8: `session_status` Let Sandboxed Subagents Access Parent or Sibling Session State

**Severity:** HIGH
**Published:** 2026-03-13
**Patched:** v2026.3.11

**Description:** The built-in `session_status` tool did not enforce the intended session-visibility boundary. A sandboxed subagent could supply another session's `sessionKey` and inspect or modify state outside its own sandbox scope, including updating the target session's persisted model override.

**Impact:** Sandboxed child sessions could read parent or sibling session data and modify session state.

**Fix:** Session visibility checks now enforce the sandbox boundary before reading or mutating session state.

### GHSA-vr7j-g7jv-h5mp: Session Transcript Files Created Without Forced User-Only Permissions

**Severity:** MEDIUM
**Published:** 2026-03-14
**Patched:** v2026.2.17

**Description:** `openclaw` created new session transcript JSONL files with overly broad default permissions in affected releases (`<= 2026.2.15`). On multi-user hosts, other local users or processes could read transcript contents, including secrets that might appear in tool output.

**Impact:** Session transcript JSONL files under the local OpenClaw session store could be readable by other local users depending on host umask behavior.

**Fix:** New transcript files are now created with `0o600` permissions (`src/config/sessions/transcript.ts`). Existing transcript permission drift is also remediated by the security audit fix flow.

### GHSA-jq3f-vjww-8rq7: Telegram Webhook Bodies Read Before Secret Validation

**Severity:** HIGH
**Published:** 2026-03-14
**Patched:** v2026.3.13
**Credits:** @space08

**Description:** `openclaw` versions `<= 2026.3.12` read and buffered Telegram webhook request bodies before validating `x-telegram-bot-api-secret-token`. This allowed unauthenticated callers to force pre-auth body I/O and JSON parse work per request in `src/telegram/webhook.ts`.

**Impact:** Unauthenticated resource exhaustion via the Telegram webhook endpoint; any caller could cause body buffering and JSON parse work without supplying a valid secret.

**Fix:** `openclaw@2026.3.13` validates the Telegram webhook secret before any body I/O, rejecting invalid requests immediately with `401`.

### GHSA-xwcj-hwhf-h378: Telegram Media Fetch Errors Exposed Bot Tokens in Logs

**Severity:** MEDIUM
**Published:** 2026-03-14
**Patched:** v2026.3.13
**Credits:** @space08

**Description:** `openclaw` versions `<= 2026.3.12` embedded raw Telegram file URLs (which can include `/file/bot<TOKEN>/...`) in `MediaFetchError` messages from `src/media/fetch.ts`, potentially leaking bot tokens into logs or error surfaces.

**Impact:** Telegram bot tokens could appear in server logs, console output, or error messages when media downloads failed.

**Fix:** `openclaw@2026.3.13` routes source URLs through `redactMediaUrl()` / `redactSensitiveText()` before constructing fetch error messages.

### GHSA-g2f6-pwvx-r275: Unsanitized iMessage Attachment Paths Allowed SCP Remote-Path Injection

**Severity:** MEDIUM
**Published:** 2026-03-14
**Patched:** v2026.3.13
**Credits:** @lintsinghua

**Description:** `openclaw` versions `<= 2026.3.12` accepted unsanitized iMessage remote attachment paths in the SCP staging flow (`src/auto-reply/reply/stage-sandbox-media.ts`). When `MediaRemoteHost` was set, a sender-controlled attachment filename with shell metacharacters could trigger command execution on the configured remote host.

**Impact:** Command injection on the configured SCP remote host when remote attachment staging was enabled.

**Fix:** `openclaw@2026.3.13` validates the SCP remote path via `normalizeScpRemotePath()` and rejects paths containing shell metacharacters.

### GHSA-63f5-hhc7-cx6p: Bootstrap Setup Codes Could Be Replayed to Escalate Pending Pairing Scopes

**Severity:** HIGH
**Published:** 2026-03-14
**Patched:** v2026.3.13
**Credits:** @tdjackey

**Description:** `openclaw` versions `<= 2026.3.12` allowed bootstrap setup codes to be verified more than once before a pairing request was approved. A second verification attempt could mutate a pending device pairing to request broader scopes, including escalation from lower operator scope to `operator.admin`, before an approver finalized the pairing.

**Impact:** Privilege escalation on pending device pairings via bootstrap token replay before approval.

**Fix:** `openclaw@2026.3.13` makes bootstrap setup codes single-use via `src/infra/device-bootstrap.ts`; the bootstrap token record is consumed on the first successful verification.

### GHSA-hf68-49fm-59cq: device.pair.approve Privilege Escalation to operator.admin / Node RCE

**Severity:** CRITICAL
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The `device.pair.approve` gateway method allowed callers holding the `operator.pairing` scope to escalate a newly paired device directly into the `operator.admin` role. Because `operator.admin` grants full gateway control including `system.exec` and arbitrary Node invocation, this constitutes a privilege escalation path to remote code execution from a pairing-only credential.

**Impact:** An attacker holding `operator.pairing` scope could pair a device and immediately receive `operator.admin`, bypassing the intended scope assignment flow and achieving Node RCE without operator consent.

**Fix:** Pending patch.

### GHSA-7xr2-q9vf-x4r5: Incomplete Fix for CVE-2026-32013 — Symlink Traversal via IDENTITY.md appendFile

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The prior fix for CVE-2026-32013 (symlink traversal in `agents.create`/`agents.update`) left a residual path: `IDENTITY.md` writes performed via `appendFile` did not re-validate the resolved path against the agents directory root after symlink resolution. A crafted agent name containing traversal components could still escape the expected directory boundary through the append code path.

**Impact:** Partial path traversal allowing writes to files outside the agent directory via the `IDENTITY.md` append path.

**Fix:** Pending patch.

### GHSA-wq58-2pvg-5h4f: Gateway agent /reset Exposes Admin Session Reset to operator.write

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The gateway `agent` method's `/reset` sub-action required only `operator.write` scope rather than the `operator.admin` scope needed for destructive session operations. This allowed `operator.write` callers to reset any agent session, including sessions belonging to higher-privilege agents.

**Impact:** `operator.write` principals can disrupt or reset admin-level agent sessions, creating a denial-of-service vector against running sessions.

**Fix:** Pending patch.

### GHSA-cg6c-q2hx-69h7: Plivo V2 Verified Replay Identity Drift on Query-Only Variants

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Plivo V2 webhook verification used the full request URL for HMAC computation on standard callbacks but silently fell back to a query-stripped URL variant for certain GET-only probe requests. An attacker who could craft a replayed request matching the stripped-URL signature could pass the verification check while injecting arbitrary body content.

**Impact:** Signature bypass on Plivo V2 query-only webhook variants, allowing unauthenticated webhook injection.

**Fix:** Pending patch.

### GHSA-qm9x-v7cx-7rq4: system.run Allowlist Bypass via Unregistered Time Dispatch Wrapper

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The `system.run` method enforced a command allowlist against the directly requested command name. A time-based dispatch wrapper (used for deferred or scheduled execution) was not registered in the allowlist check path, allowing callers to invoke otherwise-blocked commands by routing through the wrapper.

**Impact:** Allowlist bypass enabling execution of commands that should be blocked by `system.run` policy.

**Fix:** Pending patch.

### GHSA-wv46-v6xc-2qhf: Synology Chat Reply Delivery Rebound via Username Resolution

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Synology Chat reply routing used username-based user resolution as a fallback when the primary user ID was unavailable. An attacker who could register or rename a Synology Chat account to match a target username could cause replies intended for the target user to be delivered to the attacker's account.

**Impact:** Reply interception or misdirection via username collision in Synology Chat delivery.

**Fix:** Pending patch.

### GHSA-65h8-27jh-q8wv: Nostr Inbound DMs Trigger Unauthenticated Crypto Work Before Sender Policy

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Nostr inbound direct messages initiated decryption and key-derivation operations before applying sender policy enforcement (allowlist/blocklist checks). An unauthenticated sender could therefore force the gateway to perform unbounded NIP-04 or NIP-44 crypto work on arbitrary payloads simply by broadcasting messages, prior to any authorization decision.

**Impact:** Unauthenticated resource exhaustion via forced crypto work on Nostr DMs before sender policy runs.

**Fix:** Pending patch.

### GHSA-48vw-m3qc-wr99: Trusted-Proxy Control UI Sessions Retain Self-Declared Privileged Scopes Without Device Identity

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** When a Control UI session arrived via a trusted-proxy configuration, the gateway accepted self-declared scope claims from the session payload without verifying device identity. A trusted-proxy caller could craft a session asserting elevated scopes (e.g., `operator.admin`) and receive them without completing the device pairing flow.

**Impact:** Privilege escalation via self-declared scopes in trusted-proxy Control UI sessions lacking device identity verification.

**Fix:** Pending patch.

### GHSA-cxmw-p77q-wchg: Android Canvas Bridge JavascriptInterface RCE

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The OpenClaw Android canvas bridge exposed a `JavascriptInterface`-annotated object to the embedded WebView without restricting the origin of pages that could access it. Pages loaded from attacker-controlled origins (via open redirect, content injection, or navigation manipulation) could invoke the bridge's methods to inject and execute arbitrary instructions through the canvas channel.

**Impact:** Remote code execution reachable from attacker-controlled web content loaded in the Android canvas WebView.

**Fix:** Pending patch.

### GHSA-39pp-xp36-q6mg: Gateway Host Exec Env Override Inconsistently Applies Host Env Policy

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Gateway host execution accepted an `env` override parameter that merged caller-supplied environment variables into the subprocess environment. The shared host environment policy (blocklists, required vars) was applied to the base environment but not re-evaluated after the override merge, allowing callers to reinstate blocked variables or override policy-enforced values by supplying them in the override map.

**Impact:** Policy bypass allowing reinstatement of blocked env vars in host exec subprocesses via the env override parameter.

**Fix:** Pending patch.

### GHSA-74wf-h43j-vvmj: ACP rawInput Tool Identity Spoof Suppresses Dangerous-Tool Prompting

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The ACP (Agent Control Protocol) `rawInput` channel allowed a caller to specify an arbitrary tool identity in the message payload. The gateway's dangerous-tool prompting logic used this caller-supplied identity to look up prompt thresholds, allowing the caller to spoof a benign tool identity and suppress approval prompts that would otherwise be shown for dangerous operations.

**Impact:** Dangerous-tool approval prompts can be suppressed by spoofing a benign tool identity via `rawInput`.

**Fix:** Pending patch.

### GHSA-mp66-rf4f-mhh8: Google Chat App-URL Webhook Auth Accepts Non-Deployment Add-On Principals

**Severity:** HIGH
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Google Chat webhook authentication for app-URL integrations verified the Google-signed JWT but accepted tokens issued to any Google Workspace add-on principal rather than restricting to the specific deployment's service account. A different Google Workspace app in the same organization could therefore send signed requests that passed authentication.

**Impact:** Webhook authentication bypass allowing any Google Workspace add-on principal in the organization to send authenticated messages to the OpenClaw Google Chat endpoint.

**Fix:** Pending patch.

### GHSA-cfp9-w5v9-3q4h: Image Tool Bypasses tools.fs.workspaceOnly for Mounted Files

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The image tool resolved file paths against the container filesystem before applying the `tools.fs.workspaceOnly` policy check. Files mounted into the container outside the workspace directory could be read by specifying their container-side path, bypassing the workspace boundary enforcement.

**Impact:** Agents can read files mounted outside the workspace boundary via the image tool when `workspaceOnly` is enabled.

**Fix:** Pending patch.

### GHSA-6mqc-jqh6-x8fc: Gateway Canvas local-direct Requests Bypass Canvas Auth

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Canvas HTTP and WebSocket endpoints applied authentication middleware only to requests arriving on the standard canvas network interface. Requests arriving via the `local-direct` loopback path bypassed this middleware entirely, allowing any local process to interact with the canvas endpoint without credentials.

**Impact:** Unauthenticated canvas access from local processes via the `local-direct` request path.

**Fix:** Pending patch.

### GHSA-4qwc-c7g9-4xcw: Remote Media Error Responses Trigger Unbounded Memory Allocation

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** When a remote media fetch returned an error response with a large `Content-Length` header, the media pipeline pre-allocated a buffer of the declared size before reading the body. A server returning a crafted error response with an inflated `Content-Length` could cause the gateway to allocate large memory buffers before the failure was detected.

**Impact:** Bounded memory exhaustion via crafted error response `Content-Length` in remote media fetches.

**Fix:** Pending patch.

### GHSA-h3x4-hc5v-v2gm: Windows Media Loaders Accept Remote-Host File URLs Before Local Validation

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** On Windows, media loader path validation accepted `file://` URLs referencing remote UNC hosts (e.g., `file://attacker-host/share/file`) before applying the local-path validation logic. This allowed the media pipeline to initiate SMB connections to attacker-controlled hosts as part of path resolution.

**Impact:** SSRF-adjacent: Windows media loaders can be directed to initiate SMB connections to remote hosts via `file://` UNC paths.

**Fix:** Pending patch.

### GHSA-rvqr-hrcc-j9vv: Bonjour/DNS-SD Discovery Metadata Steers CLI Routing When Service Resolution Fails

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** When Bonjour/DNS-SD service resolution failed to resolve a gateway service, the CLI routing layer fell back to metadata embedded in TXT records rather than treating the failure as a hard error. Attacker-controlled DNS-SD TXT records could therefore steer CLI routing to arbitrary endpoints even when the advertised service was unreachable.

**Impact:** CLI routing steering via malicious DNS-SD TXT records when service resolution fails.

**Fix:** Pending patch.

### GHSA-rm59-992w-x2mv: Voice Call Webhook Buffers Bodies Before Signature Check

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The Voice Call extension's webhook handler read and buffered the full request body before performing the provider signature check. An unauthenticated sender could submit arbitrarily large payloads that would be fully buffered before the signature validation rejected the request, enabling bounded memory exhaustion.

**Impact:** Bounded unauthenticated resource exhaustion via large webhook payloads before signature validation in the Voice Call extension.

**Fix:** Pending patch.

### GHSA-wj55-88gf-x564: Queued Node Actions Not Revalidated Against Current Command Policy

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Node actions that were queued for deferred execution captured the command policy state at queue time. When command policy changed between queuing and execution (e.g., a command was subsequently blocked by an operator), the queued action executed against the captured stale policy rather than the current policy.

**Impact:** Policy bypass allowing execution of commands that were permitted when queued but blocked by the time they execute.

**Fix:** Pending patch.

### GHSA-rqp8-q22p-5j9q: Synology Chat Shared Webhook Path Collapses Multi-Account Policy Contexts

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The Synology Chat plugin used a single webhook path shared across multiple account configurations. When a webhook arrived, the routing layer selected the first matching account configuration rather than the authoritative one. A shared-path replacement attack could cause an incoming webhook to be processed under the wrong account's DM access control policy.

**Impact:** DM access control bypass via webhook path collision in multi-account Synology Chat configurations.

**Fix:** Pending patch.

### GHSA-x2cm-hg9c-mf5w: Missing controlScope Enforcement Allows Leaf Subagents to Message Controlled Children

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The session `send` action did not enforce the `controlScope` boundary when a leaf subagent attempted to send messages to a sibling or child session it did not control. Leaf subagents could message controlled children directly, bypassing the intended scope restriction.

**Impact:** Leaf subagents can bypass `controlScope` to send messages to sessions outside their permitted scope.

**Fix:** Pending patch.

### GHSA-844j-xrrq-wgh4: XFF Loopback Spoofing Bypasses Canvas Auth and Rate Limiter

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** When `trustedProxies` was configured, canvas authentication and rate-limiting logic trusted the `X-Forwarded-For` header to determine the originating IP. A client that could send requests through a trusted proxy could inject a loopback address (`127.0.0.1`) into the XFF header, causing the gateway to treat the request as originating from localhost and bypass canvas auth and rate limiting.

**Impact:** Canvas authentication and rate-limiter bypass via XFF loopback spoofing through trusted proxies.

**Fix:** Pending patch.

### GHSA-ppwq-6v66-5m6j: Gateway operator.read Exposes Credentials in baseUrl Fields

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The gateway `config.get` and `channels.status` methods returned channel configuration objects that included `baseUrl` fields. Some channel configurations embed credentials (API keys, tokens) directly in the `baseUrl` as user-info components (e.g., `https://token@host/`). Callers with only `operator.read` scope could retrieve these credential-bearing URLs.

**Impact:** Credential exposure to `operator.read` callers via `baseUrl` fields returned by `config.get`/`channels.status`.

**Fix:** Pending patch.

### GHSA-8883-9w57-vwv6: Mattermost Callback Dispatch Allows Non-Allowlisted Sender Actions

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Mattermost interactive message callback dispatch verified the webhook signature but did not check whether the `action` field in the callback payload was on the configured allowlist. Mattermost users could therefore invoke arbitrary action identifiers via callback payloads, including actions not intended to be accessible from interactive messages.

**Impact:** Allowlist bypass allowing arbitrary Mattermost callback action invocation by authenticated Mattermost users.

**Fix:** Pending patch.

### GHSA-xhq5-45pm-2gjr: Nextcloud Talk Room Allowlist Matches Colliding Room Names

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** The Nextcloud Talk channel's room allowlist compared incoming requests against display names (human-readable room titles) rather than stable room tokens. Two rooms with the same display name (colliding names) would both match the allowlist entry intended for only one of them, allowing access to an unintended room.

**Impact:** Room allowlist bypass in Nextcloud Talk when multiple rooms share the same display name.

**Fix:** Pending patch.

### GHSA-pw7h-9g6p-c378: Tlon Settings Empty-Allowlist Reconciliation Bypasses Revocation

**Severity:** MEDIUM
**Published:** 2026-03-24
**Patched:** pending
**Credits:** -

**Description:** Tlon channel settings reconciliation treated an empty allowlist in the incoming settings payload as "no change" rather than "revoke all." When an operator pushed settings with an empty allowlist intending to revoke all permitted senders, the reconciliation logic preserved the existing non-empty allowlist, silently ignoring the revocation intent.

**Impact:** Allowlist revocation bypass in Tlon channel — clearing the allowlist via settings update does not take effect.

**Fix:** Pending patch.

### GHSA-9hjh-fr4f-gxc4: Gateway Backend Reconnect Self-Claim of operator.admin

**Severity:** CRITICAL
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (d3d8e316bd)
**Credits:** -

**Description:** The gateway's WebSocket reconnect path allowed a backend client holding any operator scope to skip pairing requirements when requesting scope upgrades. `shouldSkipBackendSelfPairing()` in `src/gateway/server/ws-connection/handshake-auth-helpers.ts` permitted backend self-connections to silently upgrade their scope to `operator.admin` without a user-visible pairing approval flow.

**Impact:** A local backend process (or compromised plugin) could self-escalate to `operator.admin`, granting full gateway control including `system.exec` and arbitrary Node invocation (RCE).

**Fix:** Commit `d3d8e316bd` removes `shouldSkipBackendSelfPairing()` and the `shouldAllowSilentLocalPairing` shortcut in `message-handler.ts`. Backend clients must now complete normal pairing to obtain elevated scopes.

### GHSA-fqw4-mph7-2vr8: Gateway Shared-Auth Reconnect Widens Scope to operator.admin (RCE)

**Severity:** CRITICAL
**Published:** 2026-03-26
**Patched:** pending
**Credits:** -

**Description:** A separate reconnect path in the gateway using local shared-auth silently widened an already-paired device's scope from `operator.read` to `operator.admin` on reconnect. Unlike GHSA-9hjh-fr4f-gxc4, this affects already-paired devices rather than new backend self-connections.

**Impact:** A paired device with `operator.read` scope could silently acquire `operator.admin` on reconnect, enabling RCE via `system.exec`.

**Fix:** Pending patch.

### GHSA-9p93-7j67-5pc2: Gateway HTTP Session Kill Without Caller Scope Binding

**Severity:** HIGH
**Published:** 2026-03-26
**Patched:** Mar 27 sync 2 (02cf12371f)
**Credits:** -

**Description:** The `DELETE /sessions/:sessionKey/kill` HTTP endpoint routed to an admin kill path without enforcing that the caller held the required scope. HTTP callers with weaker scopes could terminate arbitrary sessions.

**Impact:** Unauthorized session termination via the HTTP kill endpoint by callers lacking admin scope.

**Fix:** `02cf12371f` removes `canBearerTokenKillSessions()` and the `allowBearerOperatorKill` code path from `src/gateway/session-kill-http.ts`. Session kills now require a local admin request or requester session ownership; all other requests receive 403.

### GHSA-h4jx-hjr3-fhgc: Gateway Subagent deleteSession Uses Synthetic operator.admin

**Severity:** HIGH
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (b5d785f1a5)
**Credits:** -

**Description:** `createGatewaySubagentRuntime().deleteSession()` in `src/gateway/server-plugins.ts` injected `syntheticScopes: [ADMIN_SCOPE]` before dispatching the delete, bypassing the caller's declared scopes.

**Impact:** Any subagent runtime could delete sessions regardless of its actual declared operator scope.

**Fix:** Commit `b5d785f1a5` removes the synthetic scope injection so `deleteSession` dispatches with the caller's actual scopes.

### GHSA-q2qc-744p-66r2: session_status sessionId Bypasses Sandboxed Session Visibility

**Severity:** HIGH
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (d9810811b6)
**Credits:** -

**Description:** In `src/agents/tools/session-status-tool.ts`, providing a `sessionId` (rather than an explicit `agent:` key) to the `session_status` tool caused the visibility guard to be silently skipped. The sessionId resolution block rewrote `requestedKeyRaw` to an `agent:...` form, causing the guard condition `!requestedKeyRaw.startsWith("agent:")` to always be false for subsequently resolved inputs.

**Impact:** Sandboxed agents could read arbitrary session status by supplying a sessionId, bypassing the tree-visibility restriction.

**Fix:** Commit `d9810811b6` changes the guard condition to test `!isExplicitAgentKey` (a boolean captured before resolution), ensuring the visibility guard always applies to sessionId inputs.

### GHSA-qm2m-28pf-hgjw: Gateway Plugin HTTP Mints operator.admin Runtime Scope

**Severity:** HIGH
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (ec2dbcff9a)
**Credits:** -

**Description:** `createGatewayPluginRequestHandler()` in `src/gateway/server/plugins-http.ts` conditionally granted broader scopes to plugin HTTP route handlers when `gatewayAuthSatisfied` was true — a parameter the plugin itself could influence — effectively allowing plugins to mint `operator.admin` scope for their runtime clients.

**Impact:** A plugin could obtain `operator.admin` scope for its HTTP runtime, bypassing the least-privilege intent of the gateway plugin isolation model.

**Fix:** Commit `ec2dbcff9a` enforces `matchedPluginRoutesRequireGatewayAuth` at line 79 and always uses `WRITE_SCOPE` for plugin route runtime clients, removing the conditional admin-scope grant.

### GHSA-rhfg-j8jq-7v2h: SSRF via Unguarded Base URLs in Multiple Extensions

**Severity:** HIGH
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (f92c92515b + e43600c9e5 + 2513a8d852)
**Credits:** -

**Description:** Multiple channel extensions (BlueBubbles, Mattermost, Nextcloud Talk, Thread Ownership) made raw `fetch()` calls to configured base URLs without routing through the SSRF guard. This constituted an incomplete fix for CVE-2026-28476: the guard was present in some paths but callers omitting `allowPrivateNetwork` fell through to unguarded `fetch()`, and the send path in BlueBubbles entirely bypassed the account resolver.

**Impact:** Attackers who could influence the configured base URL or serverUrl could trigger SSRF against private network addresses (localhost, 127.0.0.1, RFC 1918 ranges) via these extensions.

**Fix:** Commit `f92c92515b` routes all fetch calls through `fetchWithSsrFGuard()` from `src/infra/net/fetch-guard.js`. Commit `e43600c9e5` adds automatic private-network allowlisting in `resolveBlueBubblesServerAccount()`. Commit `2513a8d852` extends the resolver to the BlueBubbles send path.

### GHSA-3h52-cx59-c456: Feishu Webhook Parses Body Before Signature Validation

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (5e8cb22176)
**Credits:** -

**Description:** `isFeishuWebhookSignatureValid()` in `extensions/feishu/src/monitor.transport.ts` previously accepted a pre-parsed `payload: Record<string, unknown>` and computed the HMAC over a re-serialized JSON object, allowing the signature to be computed over different bytes than what was received. Webhook bodies were parsed before validation, enabling attacks where malformed payloads could pass HMAC checks via serialization differences.

**Impact:** Webhook signature bypass in Feishu integration; attacker-controlled payloads could pass authentication.

**Fix:** Commit `5e8cb22176` refactors `isFeishuWebhookSignatureValid()` to accept `rawBody: string` and adds `parseFeishuWebhookPayload()` that parses only after validation passes. Adds `scripts/check-webhook-auth-body-order.mjs` to enforce validate-before-parse ordering.

### GHSA-4hmj-39m8-jwc7: ACP Approval Prompt ANSI Escape Injection

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (464e2c10a5)
**Credits:** -

**Description:** The ACP permission approval prompt at `src/acp/client.ts` displayed untrusted tool call titles without sanitizing ANSI/CSI escape sequences. A malicious tool could inject cursor-movement or SGR escape sequences into the permission prompt terminal, potentially hiding the real command being approved or manipulating the displayed prompt.

**Impact:** Terminal control-sequence injection in ACP permission prompts via crafted tool titles; could mislead users into approving dangerous tool invocations.

**Fix:** Commit `464e2c10a5` applies `sanitizeTerminalText()` to `toolTitle` at `src/acp/client.ts:298` and `escapeInlineControlChars()` in `formatToolTitle()` at `src/acp/event-mapper.ts:311`. Extends the ANSI CSI pattern from SGR-only to all CSI sequences.

### GHSA-52q4-3xjc-6778: Google Chat Authz Bypass via Mutable Space displayName

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (11ea1f6786)
**Credits:** -

**Description:** `resolveGroupConfig()` in `extensions/googlechat/src/monitor-access.ts` accepted mutable display names as group configuration keys in addition to stable `spaces/<id>` IDs. An attacker who could rename a Google Chat space to match a configured group name could rebind that group's authorization policy to an unintended space.

**Impact:** Google Chat group authorization policy rebinding via mutable space display name, enabling unauthorized access to spaces whose display names match configured group keys.

**Fix:** Commit `11ea1f6786` requires stable `spaces/` IDs as configuration keys. Name-keyed entries return `undefined` (fail-closed) with a `deprecatedNameMatch` flag and `warnMutableGroupKeysConfigured()` deprecation warning.

### GHSA-5jvj-hxmh-6h6j: Gateway HTTP Session History Bypasses Operator Read Scope

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (1c45123231)
**Credits:** -

**Description:** The HTTP transport for `GET /sessions/{id}/history` lacked the operator scope gate present on the WebSocket transport. HTTP callers could retrieve session history without declaring the required operator read scopes.

**Impact:** Session history accessible via HTTP without scope declaration; HTTP/WS scope parity gap.

**Fix:** Commit `1c45123231` adds `resolveGatewayRequestedOperatorScopes()` in `src/gateway/http-auth-helpers.ts` and enforces `authorizeOperatorScopesForMethod("chat.history")` in `src/gateway/sessions-history-http.ts`.

### GHSA-77w2-crqv-cmv3: Feishu Legacy Card Callbacks Bypass DM Pairing

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (81c45976db)
**Credits:** -

**Description:** The Feishu channel accepted unversioned (legacy) interactive card button payloads that contained `command` or `text` action values. These legacy callbacks bypassed DM pairing checks because they were processed through a different routing path than modern versioned card interactions.

**Impact:** Unpaired users could trigger command execution via legacy Feishu card button callbacks, bypassing DM access policy.

**Fix:** Commit `81c45976db` adds `containsLegacyFeishuCardCommandValue()` in `extensions/feishu/src/channel.ts` and rejects payloads containing legacy (non-`FEISHU_CARD_INTERACTION_VERSION`) card action values.

### GHSA-9wqx-g2cw-vc7r: Matrix Verification Notices Bypass DM Policy

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (2383daf5c4)
**Credits:** -

**Description:** Matrix cross-signing verification notices were sent without checking the DM access policy. An unpaired user could send a verification notice to a DM where DM ingress was restricted (`pairing`/`allowlist`) or disabled, causing the OpenClaw bot to respond to an unauthorized sender.

**Impact:** Matrix DM policy bypass via verification notices; unpaired senders could interact with the bot in restricted DM contexts.

**Fix:** Commit `2383daf5c4` adds `isVerificationNoticeAuthorized()` in `extensions/matrix/src/matrix/monitor/verification-events.ts` that evaluates the sender against the configured `dmPolicy` before processing verification events.

### GHSA-j4c9-w69r-cw33: Telegram DM Callback Bypasses DM Pairing

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (269282ac69)
**Credits:** -

**Description:** In `extensions/telegram/src/bot-handlers.runtime.ts`, inline keyboard callbacks in DM contexts fell through to `callback-scope` mode instead of `callback-allowlist` mode because the outer `isGroup` check was incorrectly absent from the `authorizationMode` condition. Unpaired DM senders could invoke session-state mutations via inline button callbacks.

**Impact:** Telegram DM pairing bypass via inline keyboard callbacks; unauthorized users could mutate session state via callback interactions.

**Fix:** Commit `269282ac69` adds `!isGroup ||` to the `authorizationMode` condition, ensuring DM callbacks enforce the same sender authorization gate as normal DM commands.

### GHSA-mf5g-6r6f-ghhm: Synology Chat Webhook Brute-Force via Missing Rate Limit

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (0b4d073374)
**Credits:** -

**Description:** The Synology Chat webhook endpoint performed token validation but did not rate-limit failed authentication attempts. An attacker could brute-force the webhook token at high throughput.

**Impact:** Webhook token disclosure via unrestricted brute-force guessing against the Synology Chat webhook endpoint.

**Fix:** Commit `0b4d073374` adds `createFixedWindowRateLimiter` in `extensions/synology-chat/src/security.ts` with lockout after repeated failures.

### GHSA-mw7w-g3mg-xqm7: BlueBubbles Group Reactions Bypass requireMention

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (f8c9863078)
**Credits:** -

**Description:** `processReaction()` in `extensions/bluebubbles/src/monitor-processing.ts` routed group reactions without checking the `requireMention` group setting. Group members who sent reactions would trigger agent-visible system events even when the group was configured to require explicit mention.

**Impact:** Unauthorized information leak via BlueBubbles group reactions; group members could enqueue agent-visible events without being mentioned.

**Fix:** Commit `f8c9863078` adds a `requireMention` check via `core.channel.groups.resolveRequireMention()` and returns early if the check is true.

### GHSA-rf6h-5gpw-qrgq: MS Teams Feedback Invoke Bypasses Sender Allowlists

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (c5415a474b)
**Credits:** -

**Description:** The MS Teams feedback invoke handler did not apply the configured sender allowlist before processing feedback submissions. Unauthorized users could invoke feedback actions via MS Teams adaptive cards, including from group contexts that should have been blocked by the allowlist.

**Impact:** Unauthorized MS Teams feedback invocation and session feedback recording by non-allowlisted senders.

**Fix:** Commit `c5415a474b` extracts `resolveMSTeamsSenderAccess()` into `extensions/msteams/src/monitor-handler/access.ts`, applying full DM and group authorization policy evaluation for feedback invocations.

### GHSA-vcx4-4qxg-mfp4: Telegram Webhook Brute-Force via Missing Rate Limit

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (c2c136ae95)
**Credits:** -

**Description:** The Telegram webhook endpoint performed signature verification but did not rate-limit failed authentication attempts, enabling brute-force guessing of the webhook secret.

**Impact:** Webhook secret disclosure via unrestricted brute-force guessing against Telegram webhook endpoints.

**Fix:** Commit `c2c136ae95` adds `createFixedWindowRateLimiter` per-listener in `extensions/telegram/src/webhook.ts` with per-bot rate-limit buckets.

### GHSA-xq8g-hgh6-87hv: BlueBubbles Webhook Brute-Force via Missing Rate Limit

**Severity:** MEDIUM
**Published:** 2026-03-26
**Patched:** Mar 27 sync 1 (5e08ce36d5)
**Credits:** -

**Description:** The BlueBubbles webhook endpoint performed password validation but did not rate-limit failed authentication attempts, enabling brute-force guessing of the webhook password.

**Impact:** Webhook password disclosure via unrestricted brute-force guessing against the BlueBubbles webhook endpoint.

**Fix:** Commit `5e08ce36d5` adds `createFixedWindowRateLimiter` (`webhookRateLimiter`) in `extensions/bluebubbles/src/monitor.ts` with trusted proxy IP resolution for accurate client IP keying.

### GHSA-9528-x887-j2fp: Nextcloud Talk Webhook Missing Rate Limit on Shared Secret Auth

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (e403decb6e)
**Credits:** @forgreatagent

**Description:** Nextcloud Talk webhook signature failures were not throttled even though the integration relies on an operator-configured shared secret that may be weak.

**Impact:** An attacker who could reach the webhook endpoint could brute-force weak secrets online and then forge inbound webhook events.

**Fix:** Commit `e403decb6e` (`nextcloud-talk: throttle repeated webhook auth failures`) adds rate limiting for repeated webhook auth failures.

### GHSA-qxgf-hmcj-3xw3: SSRF via Unguarded Image Download in fal Provider

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (80d1e8a11a)
**Credits:** @forgreatagent

**Description:** The fal provider used raw fetches for both provider API traffic and returned image download URLs instead of the existing SSRF-guarded fetch path.

**Impact:** A malicious or compromised fal relay could make the gateway fetch internal URLs and expose metadata or internal service responses through the image pipeline.

**Fix:** Commit `80d1e8a11a` (`fal: guard image fetches`) routes image downloads through the SSRF-guarded fetch path.

### GHSA-8rh7-6779-cjqq: CWD .env Injection Bypasses Host-Env Policy

**Severity:** CRITICAL
**Published:** 2026-03-29
**Patched:** v2026.3.28 (6a79324802)
**Credits:** @tdjackey

**Description:** OpenClaw loaded the current working directory `.env` before trusted state-dir configuration, allowing untrusted workspace state to inject host environment values.

**Impact:** A repository or workspace containing a malicious `.env` file could override runtime configuration and security-sensitive environment settings when OpenClaw is started from that directory.

**Fix:** Commit `6a79324802` (`Filter untrusted CWD .env entries before OpenClaw startup`) filters untrusted CWD `.env` entries before they can override startup configuration.

### GHSA-j7p2-qcwm-94v4: Incomplete Host Env Sanitization Allows Supply-Chain Redirection

**Severity:** CRITICAL
**Published:** 2026-03-29
**Patched:** v2026.3.22 (7abfff756d)
**Credits:** @tdjackey

**Description:** Host exec env override sanitization did not fail closed for several package-manager and related redirect variables that can steer dependency fetches or startup behavior.

**Impact:** An approved exec request could silently redirect package resolution or runtime bootstrap to attacker-controlled infrastructure and execute trojanized packages.

**Fix:** Commit `7abfff756d` (`Exec: harden host env override handling across gateway and node`) hardens the host env override blocklist to cover package-manager redirect variables.

### GHSA-6pfc-6m7w-m8fx: Gateway Exec Allowlist Allow-Always Bypass via /usr/bin/script Wrapper

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (83da3cfe31)
**Credits:** @LonggTeng

**Description:** Allow-always persistence did not unwrap `/usr/bin/script` and similar wrappers to the actual executed target before storing trust decisions.

**Impact:** A user approval for one wrapped command could persist trust for a wrapper binary that later executed a different underlying program.

**Fix:** Commit `83da3cfe31` (`infra: unwrap script wrapper approval targets`) unwraps wrapper executables before persisting allow-always trust decisions.

### GHSA-qf48-qfv4-jjm9: Feishu resolveUploadInput Sandbox Bypass via upload_image

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (764394c78b)
**Credits:** @ADumpling

**Description:** Feishu upload path resolution could read files outside the configured localRoots sandbox before handing them to the upload path.

**Impact:** A tool caller constrained to workspace or localRoots paths could exfiltrate arbitrary host files through Feishu upload actions.

**Fix:** Commit `764394c78b` (`fix: enforce localRoots sandbox on Feishu docx upload file reads`) enforces localRoots sandbox validation on Feishu upload inputs.

### GHSA-6xg4-82hv-cp6f: Gateway chat.send ACP Provenance Guard Bypass via Client Identity Spoofing

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (4b9542716c)
**Credits:** @zpbrent

**Description:** ACP-only provenance fields in `chat.send` were gated by self-declared client metadata from the WebSocket handshake rather than verified authorization state.

**Impact:** A normal authenticated operator client could spoof ACP identity labels and inject reserved provenance fields intended only for the ACP bridge.

**Fix:** Commit `4b9542716c` (`Gateway: require verified scope for chat provenance`) requires verified scope for ACP provenance fields in `chat.send`.

### GHSA-jccr-rrw2-vc8h: jq $ENV Filter Bypass Discloses Environment Variables

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (78e2f3d66d)
**Credits:** @nicky-cc

**Description:** The jq safe-bin policy blocked explicit `env` usage but still allowed jq programs that accessed environment data through `$ENV`.

**Impact:** An operator-approved safe-bin jq command could disclose environment variables that the safe-bin policy was supposed to keep out of scope.

**Fix:** Commit `78e2f3d66d` (`Exec: tighten jq safe-bin env checks`) extends the jq safe-bin policy to block `$ENV` access.

### GHSA-f44p-c7w9-7xr7: Gateway WebSocket DoS via Unbounded Pre-Auth Upgrades

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (cb5f7e201f)
**Credits:** @topsec-bunney

**Description:** The gateway accepted unbounded concurrent unauthenticated WebSocket upgrades before allocating them to an authenticated session budget.

**Impact:** An unauthenticated network attacker could consume socket and worker capacity and disrupt WebSocket availability for legitimate clients.

**Fix:** Commit `cb5f7e201f` (`gateway: cap concurrent pre-auth websocket upgrades`) caps concurrent pre-auth WebSocket upgrades to prevent resource exhaustion.

### GHSA-5h2w-qmfp-ggp6: operator.write Reaches Admin-Only verboseLevel via chat.send /verbose

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (c603123528)
**Credits:** @zpbrent

**Description:** The `chat.send` path let authorized write-scoped callers persist `/verbose` session overrides even though the same stored session mutation is admin-only through `sessions.patch`.

**Impact:** A write-scoped gateway caller could persist verbose output for later runs and expose more reasoning or tool output than the operator intended.

**Fix:** Commit `c603123528` (`fix(gateway): require admin for persisted verbose defaults`) requires admin scope for persisted verbose session defaults.

### GHSA-g86v-f9qv-rh6m: SSRF Guard Misses Four IPv6 Special-Use Ranges

**Severity:** LOW
**Published:** 2026-03-29
**Patched:** v2026.3.28 (d61f8e5672)
**Credits:** @nicky-cc

**Description:** The SSRF/IP classifier treated several IPv6 special-use ranges as public and allowed fetches to proceed.

**Impact:** An attacker who controlled a fetched URL could target internal or non-routable IPv6 addresses that should have been blocked by the SSRF guard.

**Fix:** Commit `d61f8e5672` (`Net: block missing IPv6 special-use ranges`) adds the missing IPv6 special-use ranges to the SSRF blocklist.

### GHSA-5r8f-96gm-5j6g: operator.write Reaches Admin-Only Session Reset via chat.send /reset

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (be00fcfccb)
**Credits:** @zpbrent

**Description:** The `chat.send` path reused command authorization to trigger `/reset` session rotation even though direct session reset is an admin-only control-plane operation.

**Impact:** A write-scoped gateway caller could rotate a target session, archive the prior transcript state, and force a new session id without admin scope.

**Fix:** Commit `be00fcfccb` (`Gateway: align chat.send reset scope checks`) aligns scope checks for `/reset` in `chat.send` with the admin-only `sessions.patch` surface.

### GHSA-v8wv-jg3q-qwpq: message Tool Media Parameter Bypasses Filesystem Isolation

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.24 (1d7cb6fc03)
**Credits:** @forgreatagent

**Description:** The message tool accepted `mediaUrl` and `fileUrl` aliases without applying the same sandbox localRoots validation as the canonical media path handling.

**Impact:** A caller constrained to sandbox media roots could read arbitrary local files by routing them through the alias parameters.

**Fix:** Commit `1d7cb6fc03` (`fix: close sandbox media root bypass for mediaUrl/fileUrl aliases`) closes the sandbox bypass by applying localRoots validation to all media parameter aliases.

### GHSA-m866-6qv5-p2fg: host-env Blocklist Missing GIT_TEMPLATE_DIR and AWS_CONFIG_FILE

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (6eb82fba3c)
**Credits:** @nicky-cc

**Description:** Host execution env sanitization did not block `GIT_TEMPLATE_DIR` or `AWS_CONFIG_FILE`, even though both can redirect trusted tooling to attacker-controlled content.

**Impact:** An approved exec request could redirect git or AWS CLI behavior through attacker-controlled configuration and execute untrusted code.

**Fix:** Commit `6eb82fba3c` (`Infra: block additional host exec env keys`) adds `GIT_TEMPLATE_DIR` and `AWS_CONFIG_FILE` to the host exec env blocklist.

### GHSA-2pr2-hcv6-7gwv: Device Removal Does Not Terminate Active WebSocket Sessions

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (7a801cc451)
**Credits:** @forgreatagent

**Description:** Removing a device or revoking its token updated stored credentials but did not disconnect already-authenticated WebSocket sessions.

**Impact:** A revoked device could continue using its existing live session until reconnect, extending access beyond credential removal.

**Fix:** Commit `7a801cc451` (`Gateway: disconnect revoked device sessions`) actively disconnects all WebSocket sessions belonging to a removed or revoked device.

### GHSA-p4x4-2r7f-wjxg: Exec Allow-Always Over-Trusts Positional Carrier Executables

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (9ec44fad39)
**Credits:** -

**Description:** Allow-always persistence could trust wrapper carrier executables instead of the actual invoked target when commands were routed through dispatch wrappers.

**Impact:** A one-time approval could persist a broader future allowlist entry than the operator intended, weakening execution approval boundaries.

**Fix:** Commit `9ec44fad39` (`Exec approvals: reject wrapper carrier allow-always targets`) rejects wrapper carrier executables as allow-always targets.

### GHSA-jp4j-q5fc-58gv: Discord Component Interaction Skips Guild/Channel Policy Gates

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (511093d4b3)
**Credits:** @nexrin

**Description:** Discord button and component interaction ingress did not consistently reapply the same guild and channel policy gates used for normal inbound messages.

**Impact:** Users could trigger privileged component actions from contexts that should have been blocked by Discord channel policy.

**Fix:** Commit `511093d4b3` (`Discord: apply component interaction policy gates`) applies the same guild and channel policy gates to component interactions as to normal inbound messages.

### GHSA-63mg-xp9j-jfcm: Google Chat and Zalouser Group Sender Allowlist Bypass via Policy Downgrade

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (e64a881ae0)
**Credits:** @forgreatagent

**Description:** When only a route-level group allowlist was configured, sender policy resolution silently downgraded from `allowlist` to `open` instead of preserving the configured group policy.

**Impact:** Any member of an allowlisted Google Chat space or Zalouser group could interact with the bot even when the operator intended sender-level restrictions.

**Fix:** Commit `e64a881ae0` (`Channels: preserve routed group policy`) preserves the group allowlist policy instead of downgrading to open access.

### GHSA-98hh-7ghg-x6rq: Discord text /approve Bypasses execApprovals.approvers

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (355abe5eba)
**Credits:** @tdjackey

**Description:** Discord text approval commands resolved pending exec approvals without honoring the configured approver allowlist.

**Impact:** A Discord user who was allowed to send commands but was not in the approver list could still approve pending host execution requests.

**Fix:** Commit `355abe5eba` (`Discord: enforce approver checks for text approvals`) enforces the configured approver allowlist for Discord text-based exec approval commands.

### GHSA-2x4x-cc5g-qmmg: node.pair.approve Missing callerScopes Validation Allows Privilege Escalation

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (4d7cc6bb4f)
**Credits:** @forgreatagent

**Description:** The node pairing approval path did not consistently enforce that the approving caller already held every scope requested by the node.

**Impact:** A lower-privileged operator could approve a pending node request for broader scopes and extend privileges onto the paired node.

**Fix:** Commit `4d7cc6bb4f` (`gateway: restrict node pairing approvals`) validates that the approving caller holds all scopes being approved for the node.

### GHSA-hc5h-pmr3-3497: /pair approve Omits Caller Scope Subsetting, Reopens Device Pairing Escalation

**Severity:** CRITICAL
**Published:** 2026-03-29
**Patched:** v2026.3.28 (4ee4960de2)
**Credits:** @forgreatagent

**Description:** The `/pair approve` command path called device approval without forwarding caller scopes into the core approval check.

**Impact:** A caller that held pairing privileges but not admin privileges could approve a pending device request asking for broader scopes, including admin access.

**Fix:** Commit `4ee4960de2` (`Pairing: forward caller scopes during approval`) forwards caller scopes through the pairing approval path to enforce scope subsetting.

### GHSA-3cw3-5vxw-g2h3: CLI Remote Onboarding Persists Unauthenticated Discovery Endpoint

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (d6affb17d8)
**Credits:** @nexrin

**Description:** Remote onboarding accepted discovered gateway endpoints without an explicit trust confirmation before persisting the remote URL and connection details.

**Impact:** A malicious or spoofed discovery endpoint could steer onboarding toward an attacker-controlled gateway and capture future gateway credentials or traffic.

**Fix:** Commit `d6affb17d8` (`CLI: confirm discovered remote gateways before saving config`) requires explicit confirmation of discovered gateway endpoints before persisting remote URL and credentials.

### GHSA-8689-gm9g-jgr6: Voice-Call Plivo V3 Webhook Replay via Query-Parameter Reordering

**Severity:** HIGH
**Published:** 2026-03-29
**Patched:** v2026.3.28 (85777e726c)
**Credits:** @zsxsoft

**Description:** Plivo V3 signature verification canonicalized query ordering, but replay detection hashed the raw verification URL. Reordering query parameters preserved a valid signature while producing a different replay hash.

**Impact:** An attacker who captured one valid signed Plivo V3 webhook could replay the same event by permuting query parameters and trigger duplicate voice-call processing.

**Fix:** Commit `85777e726c` (`Voice Call: canonicalize Plivo V3 replay key`) canonicalizes query parameter ordering in the replay detection key to match signature verification.

### GHSA-v2v2-f783-358j: Zalo Channel Downloads Media Before Sender Authorization

**Severity:** MEDIUM
**Published:** 2026-03-29
**Patched:** v2026.3.28 (68ceaf7a5f)
**Credits:** @forgreatagent

**Description:** The Zalo image path fetched and stored inbound media before the DM/pairing authorization checks ran.

**Impact:** Unauthorized senders could force network fetches and disk writes in the inbound media store even when the message itself was rejected.

**Fix:** Commit `68ceaf7a5f` (`zalo: gate image downloads before DM auth`) moves image download after sender authorization checks.

### Relationship to Third-Party Audits

These official CVEs are **distinct from** the two third-party security audits documented below:
- [Issue #1796 (Argus)](./issue-1796-argus-audit.md) — Automated scanner report (0/8 exploitable)
- [Medium Article (Saad Khalid)](./medium-article-audit.md) — Manual pentest claims (0/8 exploitable)

The official CVEs were responsibly disclosed through GitHub Security Advisories and patched before public disclosure. The third-party audits contain false positives, design observations, and overstated claims (see analysis sections).
