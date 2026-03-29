# What is OpenClaw? (plain English, beginner-first)

## Table of contents (Explain OpenClaw)

- [Home (README)](../README.md)
- Plain English
  - [What is OpenClaw?](./what-is-clawdbot.md)
  - [Glossary](./glossary.md)
  - [CLI commands](./cli-commands.md)
- Technical
  - [Architecture](../02-technical/architecture.md)
  - [Repo map](../02-technical/repo-map.md)
- Privacy + safety
  - [Threat model](../04-privacy-safety/threat-model.md)
  - [Hardening checklist](../04-privacy-safety/hardening-checklist.md)
- Deployment
  - [Standalone Mac mini](../03-deploy/standalone-mac-mini.md)
  - [Isolated VPS](../03-deploy/isolated-vps.md)
  - [Cloudflare Moltworker](../03-deploy/cloudflare-moltworker.md)
- Optimizations
  - [Cost + token optimization](../06-optimizations/cost-token-optimization.md)
- Reference
  - [Commands + troubleshooting](../99-reference/commands-and-troubleshooting.md)

---

OpenClaw is a framework for running a **personal AI assistant** on hardware you control.

If you've only used ChatGPT/Claude/Gemini in a browser:
- those products are *apps* hosted by someone else
- OpenClaw is the *platform* you run yourself, and you plug your chosen model/provider into it

OpenClaw's superpower is not "a smarter model." It's that it can:
- live **where you already talk** (WhatsApp, Telegram, Discord, iMessage, …)
- stay **always-on** (Gateway service — can run as a system daemon via `openclaw gateway install` on systemd/launchd/schtasks for automatic start on boot)
- keep **state** (sessions, memory, policies)
- optionally **take actions** (tools, device nodes)

Official overview (good high-level read): https://docs.openclaw.ai

---

## The one-sentence mental model

> **OpenClaw is a self-hosted Gateway that connects chat apps to an agent that can reason and (optionally) act.**

---

## The cast of characters (with analogies)

### 1) The Gateway = “your assistant’s home base”
The **Gateway** is a long-running process that you run on a machine you control.

It:
- receives inbound messages from chat platforms (channels)
- decides what should happen (routing + policy)
- runs the agent turn (calls your model provider)
- sends a response back to the same chat platform
- stores local state (config, credentials, session logs)

Think of it as:
- a router + scheduler + policy engine for your assistant

Docs: https://docs.openclaw.ai/gateway

### 2) Channels = "phone lines" into the assistant
A **channel** is how OpenClaw connects to a messaging platform.

Examples:
- WhatsApp (via WhatsApp Web / Baileys)
- Telegram (Bot API)
- Discord
- iMessage (macOS integration)
- Slack
- Signal
- Feishu (with streaming cards, reasoning stream, interactive approval/quick-action cards, ACP session binding)
- Microsoft Teams (v2026.3.24+: official SDK with streaming 1:1 replies, welcome cards, AI labeling, message edit/delete)
- Webchat (browser-based, built into the Control UI)
- plus plugins for many more (Matrix with official `matrix-js-sdk`, Zalo, IRC, Nostr, Twitch, etc.)

Channels normalize “incoming message events” into a common internal shape.

Docs: https://docs.openclaw.ai/channels

### 3) Sessions = “conversation memory (by default) on disk”
A **session** is a conversation thread with state:
- chat history (transcripts)
- metadata (who/where it came from)
- optional **semantic memory** (`MEMORY.md` + `memory/*.md` files indexed via embeddings for hybrid keyword + vector search — the agent can recall past context across sessions)

Sessions live on disk under your state directory (usually `~/.openclaw/`).

Docs: https://docs.openclaw.ai/concepts/session

### 4) The agent = "the brain (model + rules + tool policy)"
The agent is where your AI model (Claude/GPT/etc.) is actually called.

OpenClaw supplies:
- system prompt templates
- history/context
- safety wrappers
- tool availability rules

Docs: https://docs.openclaw.ai/concepts/agent

### 5) Tools = “hands” (powerful; risky)
Tools let the model do more than output text.

Depending on what you enable, tools can include:
- web fetch/search (including Brave, Exa, Tavily, Firecrawl as bundled web-search plugins; Brave LLM Context mode for grounding snippets)
- browser automation
- cron/automation
- exec or node/device invocations
- memory search (semantic search across indexed notes and past conversations; supports multimodal image/audio indexing with Gemini embeddings)
- canvas/drawing (interactive visual outputs)
- image processing (resize, optimize, convert)
- PDF analysis (native Anthropic/Google support, extraction fallback for other models)
- diffs (read-only diff rendering from before/after text or unified patches, with PNG/PDF output)
- text-to-speech (ElevenLabs, OpenAI, Edge TTS)
- session management (list, send, history across sessions, yield control to another session)
- gateway control (config, status, restart from within agent)
- `/btw` side questions (ephemeral one-shot queries against current session context, no transcript persistence)

Tools are where most real-world risk comes from.

Docs: https://docs.openclaw.ai/tools

### 6) Nodes/devices = “peripherals”
Nodes are devices (macOS/iOS/Android) that can connect to the Gateway and offer device-local capabilities.

Examples:
- camera (snap, clip, list cameras)
- screen recording
- location services
- notifications
- canvas/webviews
- (on macOS) remote execution with approvals
- (on Android, v2026.3.22+) call log search, SMS search, gateway-backed TTS

Docs: https://docs.openclaw.ai/nodes

---

## What OpenClaw is great for

### Personal / small-team assistant in chat
- “Summarize the last 200 messages in this group.”
- “Draft a reply in my tone.”
- “Keep track of ongoing tasks.”

### A private assistant with your own policies
Because you control the Gateway, you can enforce:
- who can talk to it
- what it can do
- where it can reach

### An always-on agent host
A VPS or home server can keep the Gateway running even if your laptop sleeps.

---

## What OpenClaw is *not*

### Not automatically safe for public bots
If you open inbound DMs/groups to the public *and* enable tools, you've basically built a remote-controlled automation engine.

OpenClaw ships safety features (pairing, allowlists, audits), but you must use them.

Docs: https://docs.openclaw.ai/gateway/security

### Not "privacy magic"
OpenClaw keeps state locally, but your chosen model provider still receives the prompts you send for inference unless you run a local model.

---

## Recent notable changes (v2026.3.22–3.28-beta.1)

### Breaking changes
- **Plugin SDK**: `openclaw/extension-api` removed; use `openclaw/plugin-sdk/*` subpaths. See migration guide: https://docs.openclaw.ai/plugins/sdk-migration
- **ClawHub-first installs**: `openclaw plugins install <name>` now prefers ClawHub over npm
- **Chrome MCP extension removed**: `driver: "extension"` and `browser.relayBindHost` gone. Run `openclaw doctor --fix` to migrate
- **Legacy env vars removed**: `CLAWDBOT_*` and `MOLTBOT_*` no longer work; use `OPENCLAW_*`
- **Legacy state dir removed**: `~/.moltbot` auto-detection removed; use `~/.openclaw` or set `OPENCLAW_STATE_DIR`
- **`nano-banana-pro` skill removed**: use `agents.defaults.imageGenerationModel` instead
- **Matrix plugin rewritten**: now backed by official `matrix-js-sdk` (migration guide: https://docs.openclaw.ai/install/migrating-matrix)

### New capabilities
- **ACP**: Spawn sub-agent workspaces in Discord, iMessage, BlueBubbles, Feishu with `/acp spawn --bind here`
- **Sandbox backends**: Pluggable (Docker, OpenShell with mirror/remote, SSH)
- **New providers**: Anthropic Vertex AI, Chutes, Xiaomi MiMo V2, gpt-5.4/mini/nano
- **Web search plugins**: Exa, Tavily, Firecrawl as bundled providers
- **Microsoft Teams**: Official SDK with streaming, welcome cards, AI labeling, edit/delete
- **Telegram**: Custom Bot API endpoints (`apiRoot`), auto topic labels, silent error replies, topic editing
- **Feishu**: Interactive approval cards, ACP binding, streaming reasoning tokens
- **Android**: Call log search, SMS search, gateway TTS, system dark theme
- **Control UI**: Skills management with status tabs, markdown preview, roundness slider, expand-to-canvas
- **MiniMax**: Image generation (`image-01`), M2.7 default model
- **Gateway**: OpenAI-compatible `/v1/models` and `/v1/embeddings` endpoints
- **CLI**: `--container` for Docker/Podman, `config schema`, expanded `config set`

---

## Beginner-safe starting posture (recommended)

If you want high privacy and low risk:

1) Keep the Gateway **loopback-only** (localhost only)
2) Use **pairing** and/or **allowlists** so only you can trigger it
3) Avoid enabling powerful tools until you are comfortable
4) Run `openclaw security audit --deep` and fix findings

See:
- https://docs.openclaw.ai/gateway/security
- https://docs.openclaw.ai/start/pairing

Next: [Glossary](./glossary.md) | [CLI commands](./cli-commands.md)
