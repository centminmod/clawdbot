# Deployment runbook: Standalone Mac mini (local-first, high privacy)

## Table of contents (Explain Clawdbot)

- [Home (README)](../README.md)
- Plain English
  - [What is Clawdbot?](../01-plain-english/what-is-clawdbot.md)
  - [Glossary](../01-plain-english/glossary.md)
- Technical
  - [Architecture](../02-technical/architecture.md)
  - [Repo map](../02-technical/repo-map.md)
- Privacy + safety
  - [Threat model](../04-privacy-safety/threat-model.md)
  - [Hardening checklist](../04-privacy-safety/hardening-checklist.md)
- Deployment
  - [Standalone Mac mini](./standalone-mac-mini.md)
  - [Isolated VPS](./isolated-vps.md)
- Reference
  - [Commands + troubleshooting](../99-reference/commands-and-troubleshooting.md)

---

Goal: run Clawdbot on a dedicated Mac mini at home with **minimal network exposure**.

If you can, this is the safest default deployment: you control the hardware, disk encryption is easy, and “remote exposure” can be optional.

Related official docs:
- https://docs.clawd.bot/start/getting-started
- https://docs.clawd.bot/gateway/security
- https://docs.clawd.bot/gateway/remote
- https://docs.clawd.bot/gateway/tailscale

---

## Recommended posture (summary)

- `gateway.bind: "loopback"` (localhost only)
- DM policy: `pairing` or `allowlist`
- Only enable the channels you actually need
- Avoid exposing browser control remotely
- Run `clawdbot security audit --deep` after setup and after any config change

---

## Step-by-step setup

### 1) Create a dedicated user (optional but recommended)
If you treat this Mac mini as an “assistant appliance”, create a dedicated macOS user (e.g. `clawdbot`) and run the service under that user.

This reduces accidental data leakage into your main user’s home directory.

### 2) Install Clawdbot

```bash
curl -fsSL https://clawd.bot/install.sh | bash
```

Or:

```bash
npm install -g clawdbot@latest
```

### 3) Onboard and install the background service

```bash
clawdbot onboard --install-daemon
```

This typically sets up a per-user service (launchd) and writes config under `~/.clawdbot/`.

### 4) Verify basics

```bash
clawdbot gateway status
clawdbot status
clawdbot health
clawdbot security audit --deep
```

If the audit suggests fixes:

```bash
clawdbot security audit --fix
```

### 5) Open the dashboard (Control UI)

Local (same machine):
- http://127.0.0.1:18789/

If auth is enabled and you don’t have the token in the browser yet:

```bash
clawdbot dashboard
```

---

## Connecting messaging channels (high-level guidance)

Clawdbot supports many channels; two common ones:

### WhatsApp
- Uses WhatsApp Web / Baileys.
- Login flow typically uses QR code:

```bash
clawdbot channels login
```

Docs: https://docs.clawd.bot/channels/whatsapp

### Telegram
- Uses a bot token created via @BotFather.
- DM pairing is commonly enabled by default; approve yourself:

```bash
clawdbot pairing list telegram
clawdbot pairing approve telegram <CODE>
```

Docs: https://docs.clawd.bot/channels/telegram

---

## Optional: remote access (still private)

### Option A (universal): SSH tunnel
From your laptop:

```bash
ssh -N -L 18789:127.0.0.1:18789 user@mac-mini
```

Then open:
- http://127.0.0.1:18789/

### Option B (best UX): Tailscale Serve
Keep `gateway.bind: "loopback"` and use Tailscale Serve to publish the Control UI to your tailnet over HTTPS.

Docs: https://docs.clawd.bot/gateway/tailscale

---

## Host hardening checklist (Mac mini)

- Enable FileVault
- Keep the OS updated
- Avoid installing random global npm packages
- Treat `~/.clawdbot/` as secret material
- Don’t store tokens in shell history; prefer env vars or the wizard’s credential handling

---

## Backups (privacy-first)

If you back up anything, back up only what you understand, and encrypt it.

Consider backing up:
- your `clawdbot.json` config
- only the credentials you are comfortable restoring

Avoid backing up:
- session transcripts (unless you explicitly need them)

Docs: https://docs.clawd.bot/gateway/security
