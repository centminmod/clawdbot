# Glossary (plain English)

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

This glossary is intentionally biased toward the words you’ll see in the CLI output and docs.

## ACP (Agent Communication Protocol)
A protocol for spawning and managing sub-agent sessions within channels. Allows binding an ACP session to the current conversation (e.g., `/acp spawn codex --bind here`) so a Codex-backed or Claude-backed workspace runs directly in the active Discord thread, iMessage chat, BlueBubbles DM, or Feishu topic — without creating a child thread. Distinguishes between chat surface, ACP session, and runtime workspace.

Docs: https://docs.openclaw.ai/concepts/acp

## Agent
The “brain” that turns an incoming message + context into a response. In practice it’s:
- your chosen model (provider + model name)
- a system prompt + templates
- tool availability rules
- session/memory behavior

Docs: https://docs.openclaw.ai/concepts/agent

## Allowlist
A list of identities allowed to trigger the bot (DMs) or allowed to interact in groups.

Security note: allowlists are often the *real* security boundary in messaging bots.

Docs: https://docs.openclaw.ai/gateway/security

## Bind (gateway.bind)
Where the Gateway listens:
- `loopback` = localhost only (safest default)
- `lan` = your LAN interfaces (requires auth)
- `tailnet` = bind only to Tailscale IP, 100.x.y.z range (requires Tailscale)
- `auto` = automatically choose the best bind mode based on environment
- `custom` = bind to a specific IP address (set via `gateway.customBindHost`); if unavailable, falls back to 0.0.0.0

Docs: https://docs.openclaw.ai/gateway/remote and https://docs.openclaw.ai/gateway/tailscale

## Bundle
A packaged collection of skills, MCP servers, and configuration defaults from compatible AI coding tools (Codex, Claude, Cursor). OpenClaw can discover, install, and map bundle skills into its own skill surface, and bundle MCP servers expose runnable tools in embedded Pi.

## Channel
A connector for a messaging surface: WhatsApp/Telegram/Discord/iMessage/etc.

Docs: https://docs.openclaw.ai/channels

## ClawHub
The official OpenClaw marketplace for skills and plugins. Since v2026.3.22, `openclaw plugins install <package>` prefers ClawHub before npm by default. Native commands: `openclaw skills search|install|update`. Also accessible via `openclaw plugins install clawhub:<package>` for explicit source targeting.

Docs: https://docs.openclaw.ai/tools/clawhub

## Control UI / Dashboard
The web interface served by the Gateway (on the same port as the WebSocket). Dashboard-v2 (v2026.3.12) added modular overview, chat, config, agent, and session views, a command palette, mobile bottom tabs, and richer chat tools (slash commands, search, export, pinned messages).

Docs: https://docs.openclaw.ai/web/dashboard

## Fast mode
A per-session toggle (`/fast`) that requests faster output from supported providers (Anthropic `service_tier`, OpenAI fast tier). Configurable via TUI, Control UI, ACP, and per-model config defaults.

## SecretRef
A reference-based credential system that resolves secrets at runtime from environment variables, files, or exec commands — instead of storing plaintext values in config. Supports 64 credential targets across providers, channels, webhooks, and gateway auth.

## Gateway
The long-running process that owns:
- channel connections
- routing
- sessions
- plugins
- tool execution policy
- node/device pairing

Docs: https://docs.openclaw.ai/gateway

## Hook
A webhook endpoint on the Gateway that runs automation on inbound HTTP requests. Configure via `hooks.mappings` to route external events (CI alerts, calendar triggers, IoT) into the agent.

Docs: https://docs.openclaw.ai/gateway/hooks

## Model
A specific AI model identified by `provider/model-id` (e.g., `anthropic/claude-sonnet-4-20250514`). Set the default via `agents.defaults.model.primary`, or pass `--model` per invocation.

Docs: https://docs.openclaw.ai/concepts/model

## Pairing
Explicit owner approval.

Used for:
- DM pairing (who may DM the bot)
- device pairing (which nodes may connect)

Docs: https://docs.openclaw.ai/start/pairing

## Plugin / extension
Extra code that runs **in-process** with the Gateway to add channels/tools/features.

Treat it like installing code into your assistant.

The public plugin SDK surface is `openclaw/plugin-sdk/*` (since v2026.3.22). The legacy `openclaw/extension-api` import path has been removed — plugins must use narrow `openclaw/plugin-sdk/*` subpaths. Plugin hooks include `before_tool_call` (with async `requireApproval` for user confirmation), `before_dispatch` (with canonical inbound metadata), and standard lifecycle hooks.

Docs: https://docs.openclaw.ai/plugins/sdk-overview and https://docs.openclaw.ai/plugins/sdk-migration

## Profile
A named configuration variant selected via the `OPENCLAW_PROFILE=<name>` environment variable. Each profile stores its config alongside the default, so you can switch between (for example) a local-model profile and a cloud-model profile without editing files.

## Provider
An AI service configured under `models.providers.<name>` (e.g., Anthropic, OpenAI, Ollama, Docker Model Runner). Each provider entry sets `baseUrl`, `apiKey`, and the model list it exposes. As of v2026.3.22, several providers are implemented as bundled plugins: OpenRouter, GitHub Copilot, OpenAI Codex, Chutes, MiniMax, and DeepSeek. New providers added in v2026.3.22+: Anthropic Vertex (Claude via Google Vertex AI), Chutes, Xiaomi MiMo V2. Web search providers added as bundled plugins: Exa, Tavily, Firecrawl.

## Sandbox
An isolated execution environment for tool runs and subagents with tighter capability limits. Configure via `tools.sandbox` to give sandboxed sessions a different (usually more restrictive) tool policy than main sessions.

Since v2026.3.22, sandbox backends are pluggable:
- **Docker** — the original container-based backend (still supported)
- **OpenShell** — newer backend with `mirror` (sync workspace into sandbox) and `remote` (use an existing remote shell) workspace modes
- **SSH** — core SSH backend with secret-backed key, certificate, and known_hosts inputs for remote sandbox execution

`openclaw sandbox list/recreate/prune` commands are now backend-aware, not Docker-only.

Docs: https://docs.openclaw.ai/gateway/sandboxing

## Session
A stored conversation thread (history + metadata). By default sessions are stored on disk as JSONL.

Docs: https://docs.openclaw.ai/concepts/session

## Tool
A capability the model can invoke (web fetch/search, browser automation, cron, exec, node calls).

Docs: https://docs.openclaw.ai/tools

## Webchat
A browser-based channel that connects to the Gateway's WebSocket endpoint directly. Unlike external messaging platforms, webchat runs in the Control UI and supports toggles for hiding tool calls and thinking blocks.

## Extended thinking / reasoning
When a model supports "extended thinking" (e.g., Claude with `thinking` or providers with reasoning tokens), OpenClaw can stream intermediate reasoning steps before the final answer. Configured via thinking level settings (`--thinking` flag or `agents.defaults.thinking`).

## Skill
A packaged AI routine (commands + optional tools) that extends the agent's capabilities. Install from ClawHub or load locally; configured via `skills.load.*`. The built-in skill scanner checks for dangerous code patterns at install time.

Docs: https://docs.openclaw.ai/skills

## Node / device
A companion device connected to the Gateway (iOS/Android/macOS/headless nodes). Android nodes gained `callLog.search` (call history), `sms.search` (text messages), and gateway-backed `talk.speak` (TTS synthesis) in v2026.3.22.

Docs: https://docs.openclaw.ai/nodes

## Context engine (plugin)
A plugin that owns how conversation context is assembled before model calls. Plugins can implement `delegateCompactionToRuntime(...)` for runtime-managed compaction, transcript maintenance rewrites, and model-aware `assemble()` that receives the `modelId` to adapt formatting per model.

## Health monitor
Per-channel and per-account health monitoring with configurable stale-event thresholds, restart limits, and `healthMonitor.enabled` overrides. Global disable: `gateway.channelHealthCheckMinutes=0`.

## Image generation
Standardized on the core `image_generate` tool. Configure via `agents.defaults.imageGenerationModel.primary`. MiniMax added `image-01` model with generate and image-to-image editing. The legacy `nano-banana-pro` bundled skill was removed in v2026.3.22.

## Memory plugin
The memory subsystem is plugin-driven. The active memory plugin (`memory-core` by default, or `memory-lancedb` for vector search) owns flush prompts, target-path policy, system-prompt sections, and embedding provider registrations. Configure via `plugins.slots.memory`.
