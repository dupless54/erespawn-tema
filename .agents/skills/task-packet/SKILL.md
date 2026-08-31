# Task Packet

Use this for non-trivial work before broad reading.

Return a compact packet:
- **Goal**: one sentence.
- **Effort**: T0/T1/T2/T3 from `docs/ai/EFFORT_ROUTER.md`.
- **Scope**: exact allowed paths.
- **Read**: only root `AGENTS.md`, `CURRENT_STATE.md`, nearest scoped rules, then targeted source/tests.
- **Upstream**: only task-relevant current official Discourse guide/core source when version-sensitive.
- **Risks**: compatibility, accessibility, cosmetics/plugin integration, responsive behavior, destructive actions.
- **Checks**: smallest targeted validation first, then required theme CI.
- **Exit**: changed paths verified; state docs updated when behavior/architecture changes.

Never preload unrelated docs or the whole repository.
