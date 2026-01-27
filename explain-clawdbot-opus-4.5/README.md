# Clawdbot Beginner's Guide

A comprehensive guide for understanding, installing, and securely deploying Clawdbot - the self-hosted AI assistant platform.

## What is Clawdbot?

**Clawdbot** is a self-hosted AI assistant that connects to your favorite messaging apps. Think of it as a bridge between powerful AI models (like Claude, GPT, Gemini) and your everyday chat platforms (WhatsApp, Telegram, Discord, Slack, Signal, iMessage, and more).

**Key Benefits:**
- **Privacy First** - Your data stays on your hardware, not in someone else's cloud
- **Universal Access** - Talk to AI from any messaging app you already use
- **Full Control** - Choose your AI provider, configure who can access it, run it anywhere

---

## Documentation Index

| Document | Description |
|----------|-------------|
| [01 - What is Clawdbot?](./01-what-is-clawdbot.md) | Plain English explanation for complete beginners |
| [02 - Architecture Overview](./02-architecture-overview.md) | Technical architecture with diagrams |
| [03 - Messaging Channels](./03-messaging-channels.md) | Supported chat platforms and how they connect |
| [04 - AI Providers](./04-ai-providers.md) | AI models and provider integrations |
| [05 - Installation Guide](./05-installation-guide.md) | Step-by-step installation instructions |
| [06 - Configuration](./06-configuration.md) | Configuration system explained |
| [07 - Security & Privacy](./07-security-privacy.md) | Security features and privacy controls |
| [08 - Mac Mini Deployment](./08-mac-mini-deployment.md) | Standalone Mac Mini setup guide |
| [09 - VPS Deployment](./09-vps-deployment.md) | Isolated VPS server deployment |
| [10 - Commands Reference](./10-commands-reference.md) | Essential CLI commands |

---

## Quick Start

```bash
# Install Clawdbot
npm install -g clawdbot@latest

# Run the interactive setup wizard (recommended)
clawdbot onboard --install-daemon

# Or manual setup:
clawdbot doctor     # Check system health
clawdbot login      # Authenticate AI providers
clawdbot gateway run --port 18789
```

---

## Requirements

- **Node.js 22+** (required)
- Package manager: npm, pnpm, or bun
- Operating System: macOS, Linux, or Windows

---

## Official Resources

- **Documentation**: https://docs.clawd.bot
- **GitHub Repository**: https://github.com/clawdbot/clawdbot
- **Default Port**: 18789
- **Config File**: `~/.clawdbot/clawdbot.json`

---

## Use Cases Covered

This guide focuses on two privacy-conscious deployment scenarios:

1. **Mac Mini Standalone** - Personal AI assistant on dedicated home hardware with local-only access and optional Ollama for fully local AI processing

2. **Isolated VPS** - Cloud server deployment with strict isolation, firewall rules, and Tailscale for secure remote access

---

## Navigation

Start with [01 - What is Clawdbot?](./01-what-is-clawdbot.md) if you're completely new, or jump to [05 - Installation Guide](./05-installation-guide.md) if you want to get started immediately.

---

*Generated with Claude Opus 4.5 for the Clawdbot codebase*
