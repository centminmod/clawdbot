---
name: check-upstream-issues
description: Search openclaw/openclaw GitHub issues for security-related discussions, cross-reference with explain-clawdbot documentation security audit findings, and analyze local codebase for impact.
user-invocable: true
allowed-tools: Bash, Read, Grep, Glob, LSP, Task, Write, Edit
---

# Check Upstream Security Issues

> **Note:** This skill is for OpenClaw (formerly Moltbot/Clawdbot).

This skill searches the upstream `openclaw/openclaw` GitHub repository for security-related issues, cross-references them with the security audit findings documented in `explain-clawdbot/README.md`, and analyzes the local codebase to determine impact.

## NEVER Truncate Result Sets

**CRITICAL:** When listing or counting items (git commits, GitHub issues, search results), NEVER truncate output with `head -N`, `| tail`, or fixed `--limit` values. Always get the **complete** result set, then filter.

**Git commands:**
- Always use `git rev-list --count` first to know the total, then `git log` without `head` to get ALL results
- NEVER pipe `git log` through `head -N` — it silently drops commits

**gh CLI pagination:**
- Always paginate `gh issue list` results. Run with `--limit 100`, then check if result count == 100. If so, there are more — increase limit or run additional queries with date-range filters to get ALL results
- For GraphQL: split into batches of ~28, cover ALL tracked issues across multiple batches
- NEVER assume a single query with any `--limit` value returns everything

**General rule:** If a command returns exactly N results where N equals your limit, assume truncation occurred — paginate until you get a page with fewer results than the limit.

## Critical: gh CLI Command Reference

**Commands that WORK:**

```bash
# List issues (use -R not --repo, NO --sort flag)
gh issue list -R openclaw/openclaw --state all --limit 100 --json number,title,state,createdAt,labels  # Always check if count == limit; if so, paginate

# List with search filter (--search flag does GitHub search within the repo)
gh issue list -R openclaw/openclaw --state all --limit 100 --search "KEYWORD" --json number,title,state,createdAt,labels  # Always check if count == limit; if so, paginate

# List with label filter
gh issue list -R openclaw/openclaw --label security --state all --limit 100 --json number,title,state,createdAt,labels  # Always check if count == limit; if so, paginate

# View single issue with body
gh issue view NUMBER -R openclaw/openclaw --json number,title,state,body,labels,createdAt

# View issue with comments
gh issue view NUMBER -R openclaw/openclaw --comments --json number,title,state,comments

# GraphQL batch status check (max ~28 issues per query to avoid timeouts)
gh api graphql -f query='{ repository(owner: "openclaw", name: "openclaw") { i1234: issue(number: 1234) { number state updatedAt } ... } }'
```

**Commands that DO NOT WORK:**

```bash
# NO --sort flag on gh issue list (use --search with sort qualifiers instead)
gh issue list -R openclaw/openclaw --sort created  # FAILS

# gh search issues with repo: filter has permission issues - use gh issue list --search instead
gh search issues "repo:openclaw/openclaw KEYWORD"  # FAILS with permission error
```

## Execution Strategy (Optimized for Incremental Runs)

### Step 0: Get current timestamp and read baseline

```bash
# Get current AEST time for report
TZ='Australia/Brisbane' date  # e.g. "Sat  7 Feb 2026 17:39:27 AEST"
```

Read the tracking section from `explain-clawdbot/08-security-analysis/open-upstream-issues.md` to get:
- "Last checked" timestamp (for incremental search window)
- Full issue tracking table (all tracked issue numbers and statuses)
- Total count

Read the previous report from `.private/upstream-issues-checked-reports/` (latest file by name).

### Step 1: Discovery — search for NEW issues (run in parallel)

**Batch A — run these 5 queries in parallel:**

```bash
# 1. Latest issues (catches anything new by recency)
gh issue list -R openclaw/openclaw --state all --limit 100 --json number,title,state,createdAt,labels

# 2. Security/vuln/injection keywords
gh issue list -R openclaw/openclaw --state all --limit 100 --search "security OR vulnerability OR CVE OR SSRF OR CSRF OR injection OR traversal" --json number,title,state,createdAt,labels

# 3. Auth/sandbox/crypto keywords
gh issue list -R openclaw/openclaw --state all --limit 100 --search "auth bypass OR sandbox escape OR Math.random OR plaintext OR TOCTOU OR prompt injection OR credential OR DNS rebinding" --json number,title,state,createdAt,labels

# 4. Infra/network/browser keywords
gh issue list -R openclaw/openclaw --state all --limit 100 --search "OAuth OR webhook OR mDNS OR Bonjour OR browser control OR CDP OR bind loopback OR network exposure" --json number,title,state,createdAt,labels

# 5. Config/permissions/isolation keywords
gh issue list -R openclaw/openclaw --state all --limit 100 --search "dmScope OR session isolation OR redact OR workspaceAccess OR trustedProxies OR device pairing OR permissions OR chmod OR RBAC OR LD_PRELOAD" --json number,title,state,createdAt,labels
```

**Pagination check:** After each query, if result count equals the `--limit` value (100), there are likely more results. Re-run with a higher `--limit` (e.g., 200, 500) or split by date range to ensure completeness. Repeat until a query returns fewer results than the limit.

**NOTE:** The `--search` results from `gh issue list` may include results from OTHER repos (GitHub search is cross-repo). Filter results by issue number range — openclaw/openclaw issues are typically in the 1000-15000 range currently.

**Filter new issues:** After collecting results, filter for issues created since the "Last checked" timestamp using:

```bash
gh issue list -R openclaw/openclaw --state all --limit 100 --search "created:>=YYYY-MM-DDTHH:MM:SSZ" --json number,title,state,createdAt,labels
```

Then pipe through Python to filter for security-relevant keywords:

```python
keywords = ['security', 'auth', 'bypass', 'sandbox', 'inject', 'credential', 'token',
            'vuln', 'cve', 'traversal', 'race', 'ssrf', 'csrf', 'xss', 'crash',
            'denial', 'session', 'corrupt', 'hijack', 'prompt inject', 'webhook',
            'rbac', 'authorization', 'docker', 'ld_preload', 'mdns', 'bonjour',
            'bind', 'loopback', 'browser', 'cdp', 'evaluate', 'dmscope',
            'redact', 'workspaceaccess', 'trustedprox', 'chmod', 'plaintext',
            'allowlist', 'allowfrom', 'grouppolicy', 'device pair', 'device auth',
            'dns rebind', 'network exposure', 'oauth']
```

### Keywords Reference (full list for manual searches)

- security audit, vulnerability, CVE
- SSRF, CSRF, XSS, OAuth, token, authentication
- injection, RCE, command injection, path traversal, directory traversal
- DNS rebinding, webhook, mDNS, Bonjour, discovery, service broadcast
- RBAC, authorization, sandbox, Docker, LD_PRELOAD, env injection
- prompt injection, indirect injection, jailbreak
- bind, loopback, network exposure, 0.0.0.0, gateway.bind
- browser control, CDP, evaluate, operator access
- dmScope, session isolation, DM policy, per-channel-peer
- redact, redactSensitive, redactPatterns, logging, log redaction
- workspaceAccess, workspace sandbox, access profile, multi-agent, per-agent
- trustedProxies, reverse proxy, proxy configuration
- device pairing, device auth, auto-approve
- permissions, chmod, credential storage, plaintext, encryption at rest
- incident response, containment, credential rotation
- allowlist, allowFrom, groupPolicy, DM open policy

**Deduplicate:** Remove all already-tracked issue numbers from results.

### Step 2: Batch status check on ALL tracked issues (GraphQL)

Split tracked issues into batches of ~28 and run GraphQL queries:

```bash
gh api graphql -f query='{
  repository(owner: "openclaw", name: "openclaw") {
    i8512: issue(number: 8512) { number state updatedAt }
    i3277: issue(number: 3277) { number state updatedAt }
    # ... up to ~28 issues per batch
  }
}'
```

Compare state + updatedAt against expected status from README. For any issue with a **state change** or **updatedAt within last 24h**, deep-dive with `gh issue view --comments`.

### Step 3: Validate NEW issues (conditional — only for genuinely new finds)

For each new security-relevant issue NOT already tracked:

1. **Read upstream issue:** `gh issue view NUMBER -R openclaw/openclaw --json number,title,state,body,labels,createdAt`
2. **Read local file(s)** mentioned in the issue (Read tool)
3. **Search for vulnerable patterns** (Grep tool)
4. **LSP verification** (when code paths are complex):
   - `goToDefinition` on the vulnerable function
   - `incomingCalls` to check if it's reachable
   - `outgoingCalls` to check if security guards are called
   - `findReferences` on security guard functions
   - `hover` to check type constraints

**Mandatory validation checklist per issue:**

```
[ ] Read upstream issue to extract: file path, vulnerable code, function names
[ ] Read local file at the mentioned path (or confirm file doesn't exist)
[ ] Compare local code to vulnerable code pattern from upstream
[ ] Search for related security functions (e.g., resolveSandboxPath, assertSandboxPath)
[ ] Check if vulnerable code path exists locally
[ ] Check if security validation is present/absent locally
[ ] Document specific line numbers as evidence
```

**Validation example — Sandbox Bypass:**
```
1. Upstream says: message tool's filePath bypasses sandbox
2. Read src/agents/tools/message-tool.ts
3. Read src/infra/outbound/message-action-runner.ts
4. Grep "resolveSandboxPath|assertSandboxPath" in message-action-runner.ts
5. Check if validation is called for filePath parameter
6. Document: "Line 630 reads filePath without calling resolveSandboxPath()"
```

**Validation example — Path Traversal:**
```
1. Upstream says: accountId used in path.join without sanitization
2. Read src/web/accounts.ts
3. Find the resolveDefaultAuthDir function
4. Check if sanitization exists (e.g., normalizeAccountId pattern)
5. Document: "Line 88-90 uses accountId directly without sanitization"
```

**Impact assessment criteria:**

- **AFFECTED** — vulnerable code pattern exists in local codebase AND is reachable
- **NOT AFFECTED** — file/function doesn't exist locally, OR local code has validation upstream lacks, OR vulnerable code path is not reachable
- **PATCHED LOCALLY** — local code has a fix that upstream doesn't have yet (document fix with file:line)
- **ENHANCEMENT** — feature request, not a vulnerability
- **UNKNOWN** — only when complex code paths require runtime testing (must explain why static analysis is insufficient)

### Key local security files for validation

| Vulnerability Type | Local Files to Check | Security Functions to Verify |
|-------------------|---------------------|------------------------------|
| Path traversal | `src/agents/agent-paths.ts`, `src/infra/archive.ts`, `src/web/accounts.ts` | `resolveUserPath()`, `path.resolve()`, character sanitization |
| Sandbox bypass | `src/agents/sandbox-paths.ts`, `src/agents/tools/*.ts` | `resolveSandboxPath()`, `assertSandboxPath()` |
| Env injection | `src/node-host/runner.ts`, `src/agents/bash-tools.exec.ts` | Env var blocklist, `LD_*`/`DYLD_*` filtering |
| OAuth/CSRF | `extensions/*/oauth.ts`, `src/agents/auth-profiles/` | State parameter validation, `state !== verifier` check |
| SSRF/DNS rebinding | `src/infra/net/ssrf.ts`, `src/web-fetch/` | `resolvePinnedHostname()`, `createPinnedDispatcher()` |
| RBAC/authorization | `src/gateway/server-methods.ts` | `authorizeGatewayMethod()`, role checks |
| Config injection | `src/gateway/protocol/`, `src/infra/json-file.ts` | Schema validation, `additionalProperties: false` |
| Token security | `src/gateway/device-auth.ts`, `src/gateway/auth.ts` | RSA signature verification, `safeEqual()` |
| mDNS/Bonjour exposure | `src/gateway/mdns.ts`, `src/gateway/discovery.ts` | mDNS mode config, broadcast content |
| Browser as operator | `src/agents/tools/browser*.ts`, `src/gateway/browser-bridge.ts` | Auth checks, CDP exposure |
| DM session isolation | `src/routing/session-key.ts`, `src/routing/dm-scope.ts` | `dmScope` enforcement, session key derivation |
| Logging redaction | `src/logging/redact.ts`, `src/config/schema.ts` | `redactSensitive`, `redactPatterns` config |
| Network binding | `src/gateway/net.ts`, `src/gateway/server.ts` | Bind mode, fallback to 0.0.0.0 |
| Trusted proxies | `src/gateway/server.ts`, `src/gateway/proxy.ts` | `trustedProxies` enforcement |
| Device pairing | `src/gateway/device-auth.ts`, `src/gateway/pairing.ts` | Auto-approve for local, tailnet auth |
| External content | `src/security/external-content.ts` | `wrapExternalContent()`, `replaceMarkers()` |
| Config secrets | `src/config/io.ts` | `redactConfigSnapshot()`, env var expansion |
| Audit detection | `src/security/audit.ts`, `src/security/audit-extra.ts` | Existing detection coverage |

### Step 4: Generate timestamped report

**IMPORTANT:** Use the system `date` command via Bash to get the accurate timestamp. Do NOT guess or hardcode dates.

```bash
mkdir -p .private/upstream-issues-checked-reports
TIMESTAMP=$(TZ='Australia/Brisbane' date +"%d-%m-%Y-%H-%M")
REPORT_FILE=".private/upstream-issues-checked-reports/${TIMESTAMP}.md"
```

Write the report with this structure:

```markdown
# Upstream Security Issues Check Report

**Generated:** DD-MM-YYYY at HH:MM AEST
**Upstream Repo:** openclaw/openclaw
**Run Type:** INCREMENTAL (previous: <previous report timestamp>)
**Verification Method:** Source code analysis + GraphQL batch status + regex validation

## Executive Summary

- **Previously tracked issues:** N
- **Status changes (OPEN<->CLOSED):** N
- **NEW security-relevant issues found:** N
- **NEW issues validated AFFECTED:** N
- **Documentation updates:** YES/NO

### Priority Action Items

| Priority | Issue # | Status | Summary |
|----------|---------|--------|---------|

## Status Check: All N Tracked Issues

[GraphQL batch results table — issue, expected, actual, updatedAt, changed?]

## New Issues — Detailed Validation

### #NNNN: [Title] (SEVERITY)

**Upstream claim:** ...
**Local validation:** AFFECTED / NOT AFFECTED / ...
- `file:line` — evidence
**Assessment:** ...

## Files Checked

| File | Lines | Finding |
|------|-------|---------|

## Updated Totals

| Category | Previous | New | Total |
|----------|----------|-----|-------|
```

### Step 5: Update `explain-clawdbot/08-security-analysis/open-upstream-issues.md`

**When to update:**
- **Add issues** when: New upstream security issue is found AND affects local codebase
- **Remove issues** when: Upstream issue is closed with a patch AND local code is synced
- **Update status** when: Issue state changes (e.g., patch merged but not synced locally)

**Required fields per issue:**
1. Issue number with GitHub link
2. Severity (CRITICAL/HIGH/MEDIUM/LOW/INVALID/ENHANCEMENT/N/A)
3. Brief summary (1 line)
4. Local file:line reference for affected code
5. "Last checked" date in section header

**Maintenance rules:**
1. Keep issues sorted by severity (CRITICAL first, then HIGH, MEDIUM, LOW, etc.)
2. When patch lands upstream, move to `explain-clawdbot/08-security-analysis/post-merge-hardening.md`
3. When local sync includes the patch, remove from `open-upstream-issues.md`
4. Always update "Last checked" date when running this skill

**Update steps:**
1. Update "Last checked" timestamp in `open-upstream-issues.md`: `> **Last checked:** DD-MM-YYYY (HH:MM AEST)`
2. Add new issues to tracking table (if any)
3. Add detailed subsections for new HIGH/MEDIUM findings
4. Update status of any issues that changed upstream
5. Commit via `scripts/committer` (README only; `.private/` is not committed)

### Step 6: Output summary to user

```
## Upstream Security Issues Check Complete

### Status Changes: N
### New Issues Found: N

| Issue # | Title | Local Impact |
|---------|-------|--------------|
| #NNNN | [Title] | [Status] |

### Documentation Updates Needed: [Yes/No]

### Full Report Saved To:
.private/upstream-issues-checked-reports/DD-MM-YYYY-HH-MM.md
```

### Validation Failure Modes to Avoid

- **Do NOT** assume an issue affects local code without reading the local files
- **Do NOT** assume an issue doesn't affect local code without checking
- **Do NOT** mark as "Unknown" if you can read the code — investigate properly
- **Do NOT** skip reading files due to context limits — prioritize security files
- **Do** use LSP to verify complex call chains when grep/read is ambiguous
- **Do** run `npm audit` for dependency-related issues when relevant
- **Do NOT** use `head -N` or fixed `--limit` values without checking for truncation — always paginate
- **Do NOT** assume any single query returns all results — check if result count == limit, and if so, paginate
- **Do** use `git rev-list --count` before `git log` to know the expected total

## Current Tracked Issue Numbers (for deduplication)

**CRITICAL:** 8512, 11437, 11434, 11431
**HIGH-OPEN:** 3277, 4949, 4950, 4995, 5052, 5255, 5995, 6606, 6609, 8054, 8516, 8586, 8590, 8591, 8696, 8776, 9512, 9627, 9813, 10646, 11023, 11945, 13683, 13786, 13718, 14137
**HIGH-FIXED:** 9435, 9517
**HIGH-DUPLICATE:** 11126
**MEDIUM-OPEN:** 4940, 5122, 5123, 5124, 6021, 7139, 7862, 8027, 8588, 8592, 8593, 8594, 9875, 10324, 10326, 10330, 10331, 11900, 11832, 12571, 14117
**MEDIUM-FIXED:** 5120, 10333, 13937
**MEDIUM-MITIGATED:** 3359
**LOW:** 4807, 6304, 8589, 9007, 9065, 9795
**LOW-FIXED:** 3086
**INVALID:** 9667, 9791, 9792, 10521
**ENHANCEMENT:** 10033, 10927, 10890, 10659
**N/A:** 9325, 11879

**Total:** 75 tracked issues

## Verification Checklist

1. Report file exists at `.private/upstream-issues-checked-reports/DD-MM-YYYY-HH-MM.md`
2. `explain-clawdbot/08-security-analysis/open-upstream-issues.md` has updated "Last checked" date
3. Any new issues have validation evidence with file:line references
4. Commit includes only `explain-clawdbot/08-security-analysis/open-upstream-issues.md` (not `.private/`)

## Audit Context (Historical Reference)

### Audit 1 (Issue #1796 - Argus Security Audit) - 8 Claims, 0/8 Exploitable

1. Plaintext OAuth token storage
2. Missing CSRF in OAuth state
3. Hardcoded OAuth client secret
4. Token refresh race condition
5. Insufficient file permission checks
6. Path traversal in agent dirs
7. Webhook signature bypass
8. Insufficient token expiry validation

### Audit 2 (Medium Article by Saad Khalid) - 8 Claims, 0/8 Exploitable

1. Config injection RCE via `setupCommand`
2. Arbitrary write via `nodes:screen_record` outPath
3. Log traversal via `logs.tail`
4. DNS rebinding SSRF via web-fetch
5. Self-approving agent (no RBAC)
6. Token field shifting via pipe injection
7. Shell injection via incomplete regex
8. Env variable injection (LD_PRELOAD)

### 3 Legitimate Defense-in-Depth Gaps

1. Gateway-side env var blocklist
2. Pipe-delimited token format
3. outPath validation in screen_record
