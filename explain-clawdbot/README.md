# Explain Clawdbot (integrated beginner + technical guide)

## Table of contents

- [What is Clawdbot? (plain English)](./01-plain-english/what-is-clawdbot.md)
- [Glossary](./01-plain-english/glossary.md)
- [Threat model](./04-privacy-safety/threat-model.md)
- [Hardening checklist](./04-privacy-safety/hardening-checklist.md)
- [Architecture (technical)](./02-technical/architecture.md)
- [Repo map](./02-technical/repo-map.md)
- [Deployment: Standalone Mac mini](./03-deploy/standalone-mac-mini.md)
- [Deployment: Isolated VPS](./03-deploy/isolated-vps.md)
- [Commands + troubleshooting](./99-reference/commands-and-troubleshooting.md)

---

This folder is an **ultra in-depth** guide to the Clawdbot framework, written for someone who is new to agent frameworks and wants both:
- **Plain-English understanding** (what it is, what it does, what can go wrong)
- **Technical understanding** (how the Gateway, channels, agents, sessions, tools, nodes, and plugins fit together)

It **synthesizes** and reconciles the following AI-generated summaries:
- [Copilot (OpenAI GPT-5.2)](../explain-clawdbot-copilot-gpt-5.2/)
- [Google Gemini 3.0 Pro](../explain-clawdbot-gemini-3.0-pro/)
- [Z.AI GLM 4.7](../explain-clawdbot-glm-4.7/)
- [Claude Code Opus 4.5](../explain-clawdbot-opus-4.5/)

…while **verifying key claims** against the repo’s canonical docs (`../docs/**`) and code (`../src/**`). When something conflicts, assume:

> **Repo docs + code win.** Model summaries are supporting material.

---

## What is Clawdbot? (30-second version)

Clawdbot is a **self-hosted AI assistant platform**. You run an always-on process called the **Gateway** on a machine you control (a Mac mini at home or an isolated VPS). The Gateway connects to messaging apps (WhatsApp/Telegram/Discord/iMessage/… via built-in channels + plugins), receives messages, runs an agent turn (the “brain”), optionally invokes tools/devices, and sends responses back.

**Key idea:** your **Gateway host** is the trust boundary. If it’s compromised (or configured too openly), your assistant can be turned into a data-exfil / automation engine.

Official docs starting point:
- https://docs.clawd.bot/start/getting-started
- https://docs.clawd.bot/gateway
- https://docs.clawd.bot/gateway/security

---

## The two deployment scenarios this guide focuses on

1) **Standalone Mac mini (local-first, high privacy)**
- The Gateway runs on a Mac mini you own.
- Default best practice: keep it **loopback-only** (`gateway.bind: "loopback"`) and access it locally.
- Optional remote access should be via **SSH tunnels** or **Tailscale Serve**, not public ports.

2) **Isolated VPS server (remote, locked down)**
- The Gateway runs on a small Linux VPS.
- Default best practice: keep it **loopback-only** and access it via **SSH tunnel** or **tailnet**.
- Harden the host like any admin system (dedicated user, firewall, patching, log hygiene).

---

## Start here (recommended reading order)

### 1) Plain English
- [What is Clawdbot?](./01-plain-english/what-is-clawdbot.md)
- [Glossary](./01-plain-english/glossary.md)

### 2) Privacy + safety first (highly recommended)
- [Threat model (beginner-friendly)](./04-privacy-safety/threat-model.md)
- [Hardening checklist (high privacy)](./04-privacy-safety/hardening-checklist.md)

### 3) Technical overview (how it works)
- [Architecture (Gateway → channels → agent → tools)](./02-technical/architecture.md)
- [Repo map (where to look in code)](./02-technical/repo-map.md)

### 4) Deployment runbooks
- [Standalone Mac mini (local-first)](./03-deploy/standalone-mac-mini.md)
- [Isolated VPS (remote + locked down)](./03-deploy/isolated-vps.md)

### 5) Reference
- [Commands + troubleshooting quick reference](./99-reference/commands-and-troubleshooting.md)

---

## Quick start (safe-ish defaults)

The repo strongly recommends using the onboarding wizard; it sets up:
- a working Gateway service (launchd/systemd)
- auth/provider credentials
- safe access defaults (pairing, token)

### Install

Recommended installer:

```bash
curl -fsSL https://clawd.bot/install.sh | bash
```

Alternative:

```bash
npm install -g clawdbot@latest
```

### Onboard + install background service

```bash
clawdbot onboard --install-daemon
```

### Verify

```bash
clawdbot gateway status
clawdbot status
clawdbot health
clawdbot security audit --deep
```

If you only do one security thing, do this:

```bash
clawdbot security audit --fix
```

(Security audit docs: https://docs.clawd.bot/gateway/security)

---

## How to think about Clawdbot (beginner mental model)

Clawdbot is easiest to understand as 6 layers:

1. **Gateway (control plane)** — one long-running process that owns:
   - message ingress/egress
   - sessions + transcripts
   - routing rules
   - plugin loading
   - tool execution policy + sandboxing
   - node/device pairing and invocations

2. **Channels** — adapters from Telegram/WhatsApp/etc. into a normalized message/event shape.

3. **Routing + sessions** — decides which “agent/session” handles which chat.

4. **Agent runtime** — takes context (system prompt + history + attachments), calls your chosen model provider, streams responses, and can request tools.

5. **Tools** — optional capabilities beyond text (web fetch/search, browser control, exec, cron, nodes/devices).

6. **Surfaces** — where you interact:
   - chat apps (WhatsApp/Telegram/…)
   - Control UI dashboard (web)
   - macOS menu bar app

This matters because your security choices mostly reduce to:
- **Who can trigger the agent?** (pairing + allowlists + group policies)
- **What can the agent do once triggered?** (tools/sandboxing/nodes)
- **What can the agent reach?** (network exposure, filesystem access, accounts)

---

## FAQ (Beginner → Intermediate → Advanced)

This FAQ is intentionally long and practical; it’s the “things you’ll actually Google at 2am.”

### Beginner FAQ

#### Q: What should I install this on: my laptop, a Mac mini, or a VPS?
- **Mac mini (recommended for most privacy-first users):** always-on, easy local access, no cloud exposure by default.
- **VPS (recommended for always-on + remote access):** great uptime, but higher security responsibility.
- **Laptop (okay for learning/dev):** simplest to start, but sleeps often and you may be tempted to expose it.

See runbooks:
- [Mac mini](./03-deploy/standalone-mac-mini.md)
- [VPS](./03-deploy/isolated-vps.md)

#### Q: Is Clawdbot “an AI model” like ChatGPT?
No. Clawdbot is a **self-hosted assistant platform** that *talks to* models (Anthropic/OpenAI/etc.) and *wraps them* with routing, sessions, tools, and chat integrations.

#### Q: What exactly runs on my machine?
The main always-on process is the **Gateway** (default port **18789**) which multiplexes:
- a WebSocket control plane
- the dashboard/control UI (HTTP)
- optional HTTP endpoints (OpenAI-compatible APIs)

See: https://docs.clawd.bot/gateway

#### Q: Where is my data stored?
By default, Clawdbot stores state under `~/.clawdbot/` (or `~/.clawdbot-<profile>/` for profiles). This includes config, credentials, and session transcripts.

See: https://docs.clawd.bot/gateway/security ("Credential storage map")

#### Q: Does Clawdbot have telemetry?
This repo’s positioning is local-first control. Still, your chosen **model provider** will receive whatever text/media is sent to it for inference, unless you run a local model.

#### Q: What’s the safest first setup?
- Run on a **single-user machine** you control (Mac mini).
- Keep the Gateway **loopback-only**.
- Use **pairing/allowlists** so only you can talk to it.
- Don’t enable powerful tools until you understand the blast radius.

Use the wizard:
```bash
clawdbot onboard --install-daemon
```

#### Q: I opened the dashboard and it says “unauthorized” or keeps reconnecting.
The Gateway likely has auth enabled and the UI is missing the token/password.

Fast fixes:
- Run `clawdbot dashboard` (it prints a tokenized URL).
- If remote: bring up an SSH tunnel first:
  ```bash
  ssh -N -L 18789:127.0.0.1:18789 user@gateway-host
  ```
  then open `http://127.0.0.1:18789/?token=...`.

See: https://docs.clawd.bot/help/faq (Control UI unauthorized)

#### Q: What does “pairing” mean?
Pairing is owner approval for:
- **DM pairing** (who can message the bot)
- **device/node pairing** (which devices can connect)

See: https://docs.clawd.bot/start/pairing

---

### Intermediate FAQ

#### Q: What’s the difference between `clawdbot gateway` and `clawdbot gateway restart`?
- `clawdbot gateway` runs the Gateway in the **foreground** in your terminal.
- `clawdbot gateway restart` restarts the **background service** (launchd/systemd).

See: https://docs.clawd.bot/help/faq

#### Q: What port does Clawdbot use?
`gateway.port` controls the single multiplexed port for WebSocket + HTTP. Precedence is:

```
--port > CLAWDBOT_GATEWAY_PORT > gateway.port > default 18789
```

See: https://docs.clawd.bot/help/faq

#### Q: I want remote access. Should I set `gateway.bind: "lan"`?
Usually no.

Preferred patterns:
- **Loopback + SSH tunnel** (universal)
- **Loopback + Tailscale Serve** (best UX)

Only bind to LAN/tailnet when you understand the auth requirements.

See: https://docs.clawd.bot/gateway/remote and https://docs.clawd.bot/gateway/tailscale

#### Q: Can I run multiple Gateways on one host?
Yes, but it’s usually unnecessary; one Gateway can run multiple channels and agents.

If you do, you must isolate:
- config path (`CLAWDBOT_CONFIG_PATH`)
- state dir (`CLAWDBOT_STATE_DIR`)
- workspace (`agents.defaults.workspace`)
- port (`gateway.port`)

See: https://docs.clawd.bot/gateway/multiple-gateways

#### Q: How do I see what Clawdbot is doing?
Use:
```bash
clawdbot status --all
clawdbot logs --follow
```

See: https://docs.clawd.bot/help/faq (log locations)

---

### Advanced FAQ

#### Q: What’s the real security risk: “public bot”, prompt injection, or host compromise?
All three matter, but the practical order is:
1) **Inbound access** (DM/group policies)
2) **Tool blast radius** (exec/browser/web)
3) **Network exposure** (bind modes, proxies, auth)
4) **Host compromise** (OS hardening, keys, patching)

See: https://docs.clawd.bot/gateway/security

#### Q: How do plugins/extensions affect my threat model?
Plugins run **in-process** with the Gateway. Treat them like installing arbitrary code.

Recommendation:
- only install plugins you trust
- prefer pinned versions
- keep an explicit allowlist if supported

See: https://docs.clawd.bot/gateway/security ("Plugins/extensions")

#### Q: If I want “maximum privacy”, do I need a local model?
A local model is the strongest privacy posture because it avoids sending content to a third-party provider. However, it changes the safety profile: smaller/weak local models can be easier to prompt-inject and may handle tool policies worse.

See: https://docs.clawd.bot/gateway/local-models

#### Q: How do I make sure different people’s DMs don’t leak context to each other?
Consider DM session isolation (multi-user mode) so each peer gets an isolated DM session, and use identity linking only where appropriate.

See: https://docs.clawd.bot/gateway/security ("DM session isolation") and https://docs.clawd.bot/concepts/session

---

## Official docs (high-signal links)

- Getting started: https://docs.clawd.bot/start/getting-started
- Install: https://docs.clawd.bot/install
- Gateway (runbook): https://docs.clawd.bot/gateway
- Gateway security: https://docs.clawd.bot/gateway/security
- Remote access: https://docs.clawd.bot/gateway/remote
- Tailscale: https://docs.clawd.bot/gateway/tailscale
- Pairing: https://docs.clawd.bot/start/pairing
- Help / FAQ: https://docs.clawd.bot/help/faq
- Troubleshooting: https://docs.clawd.bot/gateway/troubleshooting
