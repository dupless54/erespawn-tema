# Platform Adapters

Canonical project policy belongs in `AGENTS.md`, not runtime-specific agent config.

- `CLAUDE.md` and `.claude/agents/*` are thin Claude adapters.
- `GEMINI.md` points Gemini back to canonical rules.
- `.codex/agents/*` contains model placeholders/tier hints only.
- If a runtime does not support a field/model identifier, change only that adapter field; do not duplicate or weaken project invariants.
- Theme/product facts belong in `CURRENT_STATE.md` / `DECISIONS.md`, never in model-specific adapters.
