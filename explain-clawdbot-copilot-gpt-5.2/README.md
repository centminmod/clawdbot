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

## Official docs (recommended)

- Getting started: https://docs.clawd.bot/start/getting-started
- Wizard (onboarding): https://docs.clawd.bot/start/wizard
- Security: https://docs.clawd.bot/gateway/security
- Remote access: https://docs.clawd.bot/gateway/remote
- Tailscale: https://docs.clawd.bot/gateway/tailscale
