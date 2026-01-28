# Deployment runbook: Isolated VPS (remote + locked down)

> **Note:** This guide is for Moltbot (formerly Clawdbot). The CLI command remains `clawdbot`.

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

Based on [VibeProof Security Guide](https://vibeproof.dev/blog/moltbot-security-setup-guide).

### Choose a Provider
- AWS EC2: t3.small, Ubuntu 24.04 LTS
- DigitalOcean: Basic $6/month Droplet, Ubuntu 24.04
- Linode: Nanode 1GB, Ubuntu 24.04
- Hetzner: CX11, Ubuntu 24.04

### Initial Setup

```bash
# Connect to your VPS
ssh -i your-key.pem ubuntu@YOUR_SERVER_IP

# Update system
sudo apt update && sudo apt upgrade -y

# Create dedicated user
sudo adduser moltbot
sudo usermod -aG sudo moltbot
```

### Firewall Configuration (Critical)

Only allow SSH from your IP. **Never allow `0.0.0.0/0` (anywhere) access.**

```bash
# Enable UFW
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

# Verify
sudo ufw status
```

**Cloud firewall**: Also configure your provider's firewall (Security Groups on AWS, etc.) to only allow SSH from your IP. Do **not** open 18789 to the public internet.

---

## 2) Install Moltbot

On the VPS:

```bash
curl -fsSL https://clawd.bot/install.sh | bash
```

Verify Node.js version (22.12.0+ recommended for security patches):

```bash
node --version  # Should be v22.12.0 or later
```

Then onboard:

```bash
clawdbot onboard --install-daemon
```

Set a gateway auth token for production:

```bash
export GATEWAY_AUTH_TOKEN="$(openssl rand -hex 32)"
echo "export GATEWAY_AUTH_TOKEN='$GATEWAY_AUTH_TOKEN'" >> ~/.profile
```

If you're headless and need OAuth-style auth, do the auth step on a trusted machine first and copy the required credential files as documented.

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
- Keep `~/.clawdbot/` permissions tight (`chmod 700 ~/.clawdbot`).

Protect shell history from credential leakage:

```bash
# Add to ~/.profile or ~/.bashrc
export HISTCONTROL=ignoreboth
export HISTFILESIZE=0
```

Docs: https://docs.clawd.bot/gateway/security

---

## 8) Automatic Security Updates

Keep your system patched automatically:

```bash
sudo apt install unattended-upgrades
sudo dpkg-reconfigure unattended-upgrades
```

This ensures critical security patches are applied without manual intervention.

---

## 9) SSH Hardening with Fail2ban

Protect against SSH brute force attacks:

```bash
sudo apt install fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```

Check status:

```bash
sudo fail2ban-client status sshd
```

---

## 10) Systemd Resource Limits

Add resource limits to your Moltbot service file (`/etc/systemd/system/moltbot.service`):

```ini
[Service]
MemoryMax=1G
CPUQuota=80%
```

Then reload:

```bash
sudo systemctl daemon-reload
sudo systemctl restart moltbot
```

This prevents runaway processes from consuming all system resources.

---

## Security Checklist (VPS)

Based on [VibeProof Security Guide](https://vibeproof.dev/blog/moltbot-security-setup-guide).

### Network
- [ ] Security group inbound is SSH only from your IP
- [ ] Gateway port 18789 is NOT public
- [ ] Host firewall (UFW) is enabled
- [ ] Fail2ban is active for SSH protection

### Authentication & Access
- [ ] Gateway auth token is set
- [ ] DM policy is `allowlist` or `pairing`
- [ ] Only approved user IDs can trigger actions

### Execution Safety
- [ ] Docker sandbox enabled for execution tools
- [ ] Sandbox has `network: none` or strict isolation
- [ ] Dangerous command patterns blocked (`rm -rf`, `curl | bash`, etc.)
- [ ] Tools restricted to minimum needed

### Secrets
- [ ] Secrets stored in env vars (not in shell history)
- [ ] Sensitive files set to `chmod 600`
- [ ] Shell history protected (`HISTCONTROL=ignoreboth`)

### System Maintenance
- [ ] Automatic security updates enabled
- [ ] Node.js 22.12.0+ installed
- [ ] Systemd resource limits configured

### Observability
- [ ] Session logging enabled
- [ ] Log rotation active (`/var/log/moltbot/`)
- [ ] Weekly review habit
