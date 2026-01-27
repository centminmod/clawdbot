# Clawdbot (beginner guide, Copilot GPT‑5.2)

This folder is a **beginner-oriented explanation** of the Clawdbot codebase you cloned.
It is written for someone new to “agent frameworks” and focuses on:

- **What Clawdbot is** (plain English)
- **What it can do** (capabilities + boundaries)
- **How it works** (technical overview tied to this repo)
- **How to install + configure safely** (high privacy / least privilege)
- Two practical setups:
  - **Standalone Mac mini** (local-first, safest default)
  - **Isolated VPS** (remote gateway with tight access controls)

> Authoring note: this guide cites source/docs paths in this repository and points to the official docs site for deeper reading.

## Start here

1) **What is Clawdbot?** (plain English)
- [Plain-English overview](./01-plain-english/what-is-clawdbot.md)
- [Key concepts glossary](./01-plain-english/glossary.md)

2) **How it works** (technical)
- [Architecture overview](./02-technical/architecture.md)
- [Repo map (where to look in code)](./02-technical/repo-map.md)

3) **Install + first chat**
- [Install and onboarding (fast path)](./03-install/install-and-onboard.md)
- [Running from source (dev)](./03-install/from-source.md)

4) **Privacy + safety (high priority)**
- [Threat model for beginners](./04-privacy-safety/threat-model.md)
- [Hardening checklist (recommended defaults)](./04-privacy-safety/hardening-checklist.md)
- [Example “high privacy” config](./04-privacy-safety/high-privacy-config.example.json5.md)

5) **Usage cases**
- [Standalone Mac mini (local-first)](./05-use-cases/mac-mini-standalone.md)
- [Isolated VPS gateway (remote)](./05-use-cases/vps-isolated.md)

6) **Reference**
- [Useful commands (copy/paste)](./99-reference/commands.md)
- [Where Clawdbot stores state on disk](./99-reference/state-on-disk.md)

## Security note (Issue #1796)

The automated security report in **GitHub Issue #1796** is a mix of real risks, “true but by design” tradeoffs, and some overstated items.
This guide’s practical takeaway is: treat your **state dir** as sensitive, keep the gateway **least-privilege / loopback-first**, and use the built-in security tooling.

- Issue: https://github.com/clawdbot/clawdbot/issues/1796
- **Accurate (risk depends on threat model):** some credentials/tokens are stored on disk as JSON with restrictive permissions (e.g. `0o600`) but **without encryption at rest** (see e.g. `src/infra/device-auth-store.ts`, `src/agents/auth-profiles/*`). If your machine or backups are compromised, those tokens can be exfiltrated.
- **Mostly mitigated / overstated:** OAuth `state` handling is validated in the local callback path for Gemini CLI (state mismatch rejects the callback), and Qwen uses a device + PKCE flow rather than a browser redirect callback.
- **Config-footgun (but off by default):** the voice-call extension can skip webhook signature verification only when explicitly enabled in config (`skipSignatureVerification`, default `false`); docs also label this as dev-only.
- **“Hardcoded client secret” context:** `extensions/google-antigravity-auth` includes an OAuth client secret encoded in source; for public/native OAuth clients this is commonly treated as **non-secret** (still: rotate if you suspect it was meant to be private).

If you’re hardening a deployment, start with the official security docs and run `clawdbot security audit` / `clawdbot security fix`.

## Official docs (recommended)

- Getting started: https://docs.clawd.bot/start/getting-started
- Wizard (onboarding): https://docs.clawd.bot/start/wizard
- Security: https://docs.clawd.bot/gateway/security
- Remote access: https://docs.clawd.bot/gateway/remote
- Tailscale: https://docs.clawd.bot/gateway/tailscale
