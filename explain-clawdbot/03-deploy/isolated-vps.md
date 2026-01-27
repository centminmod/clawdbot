# Deployment runbook: Isolated VPS (remote + locked down)

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

Goal: run the Gateway on a Linux VPS while keeping access **private** and the host hardened.

This is a great setup when:
- you want the assistant always-on
- your laptop sleeps often
- you want predictable networking

But the security bar is higher: a VPS is an internet-connected machine.

Related official docs:
- https://docs.clawd.bot/gateway/remote
- https://docs.clawd.bot/gateway/security
- https://docs.clawd.bot/platforms/linux
- https://docs.clawd.bot/help/faq

---

## Recommended posture (summary)

- Keep Gateway **loopback-only** (`gateway.bind: "loopback"`).
- Access via **SSH tunnel** or **tailnet** (Tailscale).
- Use token/password auth.
- Run as a dedicated non-root user.
- Lock down file permissions.

---

## 1) Provision the VPS (baseline hardening)

- Create a VPS in a reputable region/provider.
- Enable automatic security updates if you can.
- Create a dedicated user (e.g. `clawdbot`) and disable password SSH login.
- Configure a firewall:
  - allow SSH (22 or your chosen port)
  - do **not** open 18789 to the public internet

---

## 2) Install Clawdbot

On the VPS:

```bash
curl -fsSL https://clawd.bot/install.sh | bash
```

Then onboard:

```bash
clawdbot onboard --install-daemon
```

If you’re headless and need OAuth-style auth, do the auth step on a trusted machine first and copy the required credential files as documented.

Docs: https://docs.clawd.bot/start/getting-started

---

## 3) Keep the Gateway loopback-only

This is the safest remote pattern:
- Gateway listens only on `127.0.0.1:18789`.
- You forward it when you need access.

---

## 4) Access it remotely (recommended)

### Option A: SSH tunnel (universal)

From your laptop:

```bash
ssh -N -L 18789:127.0.0.1:18789 user@gateway-host
```

Now your local browser can open:
- http://127.0.0.1:18789/

…and your local CLI can talk to the Gateway at the forwarded URL.

Docs: https://docs.clawd.bot/gateway/remote

### Option B: Tailnet (Tailscale)

If you use Tailscale:
- you can either bind directly to tailnet IP (`gateway.bind: "tailnet"`), or
- keep loopback-only and publish the dashboard via Serve (HTTPS)

Docs: https://docs.clawd.bot/gateway/tailscale

---

## 5) Verify and lock down

On the VPS:

```bash
clawdbot gateway status
clawdbot status
clawdbot health
clawdbot security audit --deep
```

If needed:

```bash
clawdbot security audit --fix
```

---

## 6) Logging + troubleshooting on a server

Common troubleshooting workflow:

```bash
clawdbot status --all
clawdbot logs --follow
```

If the service appears running but the probe fails:
- you may have a profile/config mismatch
- or the process is alive but not listening

Docs: https://docs.clawd.bot/help/faq

---

## 7) Operational advice for VPS safety

- Keep plugins to a minimum.
- Use separate messaging accounts for the bot.
- Treat browser control endpoints as admin APIs.
- Rotate tokens and API keys if you suspect exposure.
- Keep `~/.clawdbot/` permissions tight.

Docs: https://docs.clawd.bot/gateway/security
