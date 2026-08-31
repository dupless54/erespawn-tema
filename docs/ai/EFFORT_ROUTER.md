# Effort Router

Classify before broad reads.

## T0 — Mechanical
Use for typo/docs-only/obvious metadata edits with no runtime behavior change.
Read only the exact file plus root rules.

## T1 — Routine theme/frontend
Default for SCSS, theme settings, supported outlets/API usage, responsive polish, visual components, and focused tests.
Read root rules + current state + nearest scope + targeted source/tests.
Open only the exact official Discourse guide needed for version-sensitive choices.

## T2 — High-impact compatibility
Use for cross-plugin cosmetics contracts, broad topic-list behavior changes, navigation/composer behavior, privacy, accessibility-sensitive interaction, or current-core API migrations.
Expand to decisions, call sites, current upstream core, and relevant tests.

## T3 — Exceptional
Use only when targeted T2 evidence is insufficient, behavior spans multiple unstable integration boundaries, or a migration affects most theme architecture.
Document why T2 was insufficient before expanding context.

Token savings never override correctness, accessibility, security, or upgrade safety.
