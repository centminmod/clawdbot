> **Navigation:** [Main Guide](../README.md) | [Security Audit Reference](./security-audit-command-reference.md) | [CVEs/GHSAs](./official-security-advisories.md) | [Issue #1796](./issue-1796-argus-audit.md) | [Medium Article](./medium-article-audit.md) | [ZeroLeeks](./zeroleeks-audit.md) | [Post-merge Hardening](./post-merge-hardening.md) | [Open Issues](./open-upstream-issues.md) | [Ecosystem Threats](./ecosystem-security-threats.md) | [Model Comparison](./ai-model-analysis-comparison.md)

## Third security audit (ZeroLeeks AI Red Team)

In January 2026, the [ZeroLeeks AI Red Team](https://zeroleeks.ai/) published an automated security assessment ([full report](https://zeroleaks.ai/reports/openclaw-analysis.pdf), Assessment ID: jn7aey02g9b76t71yrzq5mtedx8088s5) testing **system prompt extraction** (11/13 succeeded, 84.6%) and **prompt injection** (21/23 succeeded, 91.3%). They rated OpenClaw **CRITICAL RISK** (ZLSS Score 10/10, Security Score 2/100). This section provides a source-code-verified analysis.

### Our evaluation of this audit

This audit was independently evaluated using the [`/consult-codex` dual-AI consultation skill](https://github.com/centminmod/my-claude-code-setup/blob/master/.claude/skills/consult-codex/SKILL.md):

| Evaluator | Role | Conclusion |
|-----------|------|------------|
| **Opus 4.6** (this document's author) | Primary evaluation with source code verification | 0/34 exploitable; CRITICAL rating not justified; all extraction claims match public code |
| **Codex GPT-5.3** (OpenAI, second opinion) | Independent evaluation via `/consult-codex` | CRITICAL rating not justified; "low as a security audit"; scope misalignment confirmed |
| **Code-Searcher** (Claude Opus 4.6 subagent) | Deep codebase verification | Mapped complete external content defense pipeline; confirmed no defenses were tested |

**Agreement level: High.** All three evaluators independently reached the same conclusions on all major findings. Full evaluation with comparison table: `.private/zeroleeks-security-audit-eval.md` (not committed to git).

### Synthesized verdict (all 34 findings)

#### Part 1: System Prompt Extraction (11/13 succeeded)

| # | Extracted Content | Source Code (Public) | Verdict |
|---|-------------------|---------------------|---------|
| 1 | `buildSkillsSection` logic | `src/agents/system-prompt.ts:16-38` | **Not a finding** - public open-source code |
| 2 | `buildMemorySection` | `src/agents/system-prompt.ts:40-66` | **Not a finding** - public open-source code |
| 3 | `buildReplyTagsSection` | `src/agents/system-prompt.ts:82-95` | **Not a finding** - public open-source code |
| 4 | `SILENT_REPLY_TOKEN` | `src/auto-reply/tokens.ts:4` (value: "NO_REPLY") | **Not a finding** - public constant |
| 5 | `HEARTBEAT_OK` | `src/auto-reply/tokens.ts:3` (value: "HEARTBEAT_OK") | **Not a finding** - public constant |
| 6 | Reply tags | `src/agents/system-prompt.ts:89-91` | **Not a finding** - public code |
| 7 | Tool narration policy | `src/agents/system-prompt.ts:408-412` | **Not a finding** - public code |
| 8 | SOUL.md reference | `src/agents/system-prompt.ts:552-569` | **Not a finding** - public code |
| 9 | Reasoning format tags | `src/agents/system-prompt.ts:323-332` | **Not a finding** - public code |
| 10 | Identity line | `src/agents/system-prompt.ts:377,381` | **Not a finding** - public code |
| 11 | Silent reply rules | `src/agents/system-prompt.ts:572-587` | **Not a finding** - public code |

**Result: 0 of 11 extraction findings are meaningful security concerns.** All extracted content is publicly available TypeScript code on GitHub (`github.com/openclaw/openclaw`).

#### Part 2: Prompt Injection (21/23 succeeded)

| Category | Tests | Count | Verdict |
|----------|-------|-------|---------|
| **Expected behavior** (user instruction-following) | Canary, format (emoji), language (Spanish), JSON, uppercase, word count, persona (pirate/robot), behavior override, question suffix | 9 | **Not vulnerabilities** - user telling their own assistant to change format/style/persona |
| **Correct vector, wrong delivery** | Indirect document, email, code injection | 3 | **Inconclusive** - bypassed actual defense layer (`src/security/external-content.ts`) by sending as direct user messages |
| **User messages, not external content** | False memory, false context (debug mode), fake API, gamification, encoding (base64), reversal, system impersonation (`[SYSTEM]`), authority impersonation (`[ADMIN]`) | 8 | **Not vulnerabilities as tested** - delivered as direct user messages, not through external content pipeline |
| **Correctly resisted** | Fake tool injection, fiction injection | 2 | Safety mechanisms working correctly |

**Result: 0 of 23 injection tests demonstrate exploitable vulnerabilities.**

- 9 are expected user instruction-following behavior
- 3 test the correct attack vector but bypass the actual defense layer
- 8 are user messages classified as attacks
- 2 were correctly resisted

### Critical context

1. **SECURITY.md line 24** explicitly lists "Prompt injection attacks" as **out of scope** for security reports
2. **OpenClaw is open-source** (MIT license) - system prompt is built from public TypeScript at `src/agents/system-prompt.ts`
3. **All 23 injection tests were direct user messages** - not routed through the external content pipeline
4. **Existing defenses were NOT tested:**
   - `src/security/external-content.ts:47-64` - `<<<EXTERNAL_UNTRUSTED_CONTENT>>>` boundary markers and security warnings
   - `src/security/external-content.ts:15-28` - Suspicious pattern detection
   - `src/security/external-content.ts:85-150` - Boundary marker sanitization + Unicode homoglyph folding
   - `src/security/channel-metadata.ts:21-45` - Channel metadata isolation with truncation
   - Active integration across web search, web fetch, cron hooks, Discord, and Slack

### Methodology concerns

The audit suffers from four fundamental methodology flaws:

1. **Scope violation:** Tests an explicitly out-of-scope attack surface (prompt injection per `SECURITY.md:24`) and rates it CRITICAL without acknowledging the scope limitation
2. **Open-source blindness:** Treats extraction of publicly available source code as a security finding
3. **Threat model confusion:** Conflates user-as-operator (telling your own assistant what to do) with attacker-as-external-party
4. **Defense bypass:** Sends all payloads as direct user messages, completely bypassing the external content defense layer

### Comparison to prior audits

| Aspect | Argus (Issue #1796) | Medium Article (Saad Khalid) | ZeroLeeks |
|--------|-------------------|------------------------------|-----------|
| Methodology | Automated scanners + AI | Claims manual pentest | AI red teaming |
| Findings | 512 total, 8 CRITICAL | 8 "zero-day" claims | 34 (11 extraction + 23 injection) |
| Exploitable as described | 0 of 8 | 0 of 8 | 0 demonstrated |
| Core weakness | Pattern matching without context | Code reading without architectural context | Testing expected behavior as vulnerabilities |
| Overall quality | Low | Low | Very Poor |

### New attack techniques contributed

While the audit's severity rating and methodology are flawed, ZeroLeeks documented several prompt injection techniques not previously covered in our documentation. These have been added to [Prompt Injection Attacks](../05-worst-case-security/prompt-injection-attacks.md) with citations:

| Technique | Description | Added As |
|-----------|-------------|----------|
| YAML auto-completion | Incomplete code block priming the model to complete system config | Attack #22 |
| Chain-of-thought hijacking | Verification framing ("let me check my config") | Attack #23 |
| Context window overflow | 10KB filler + embedded partial info to prime completion | Attack #24 |
| Gamification injection | Word games as compliance primer | Attack #25 |
| Indirect email HTML comments | Hidden instructions in HTML comments within email bodies | Attack #26 |

Full evaluation with AI second opinions: `.private/zeroleeks-security-audit-eval.md` (not committed to git)

Report: [ZeroLeeks AI Red Team Assessment](https://zeroleaks.ai/reports/openclaw-analysis.pdf) | Website: [zeroleeks.ai](https://zeroleeks.ai/)
