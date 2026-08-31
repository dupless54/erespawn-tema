# Durable Decisions

## D-001 — Native Discourse structure first
Use current official Discourse theme structure and supported extension points. Do not build the theme around template overrides or DOM mutation.

## D-002 — Core color variables
Use Discourse CSS custom properties (`--primary`, `--secondary`, `--tertiary`, etc.) as inputs to eRespawn semantic tokens so automatic light/dark schemes remain compatible.

## D-003 — Topic lists are enhanced, not replaced
Style native table topic lists and the current Glimmer `latest-topic-list-item` surface. Keep native links, metadata, states, bulk selection, moderation and plugin outlets intact.

## D-004 — Cosmetics are composable
Avatar decorations, nameplates, flairs, badges and user-card/profile cosmetics are integration boundaries. The theme may style surrounding surfaces but must not clip, mask, flatten or replace plugin-owned decoration layers without a targeted verified integration.

## D-005 — Mobile-first current breakpoints
Use current Discourse `lib/viewport` helpers and modern breakpoint model rather than legacy fixed-width assumptions.

## D-006 — Exact-head CI is the merge gate
Required official Discourse Theme CI on the latest exact PR head is authoritative. A new commit invalidates old CI evidence.
