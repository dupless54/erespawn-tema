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
Use current Discourse responsive guidance and viewport helpers where responsive behavior belongs in the shared layer; keep `desktop/desktop.scss` and `mobile/mobile.scss` limited to device-specific refinement.

## D-006 — Exact-head CI is the merge gate
Required official Discourse Theme CI on the latest exact PR head is authoritative. A new commit invalidates old CI evidence.

## D-007 — Palette metadata is the only static color source
Light/dark HEX values belong in `about.json` color schemes. Runtime SCSS must consume native Discourse CSS variables or eRespawn semantic aliases derived from those variables; do not duplicate palette HEX values in stylesheets.

## D-008 — Color definitions are a special Discourse target
Use `common/color_definitions.scss` for theme CSS custom-property declarations that must follow the active color scheme. Do not import it as a generic helper from `common/common.scss`; Discourse compiles it as the color-definitions target. General reusable SCSS helpers, when needed, belong under `stylesheets/`.

## D-009 — Social-feed hierarchy without row replacement
The premium topic/discovery experience should be achieved with stable core classes, CSS, supported modifiers/transformers/outlets when needed, and native Glimmer markup. Do not replace `topic-list-item` merely to obtain a card aesthetic.

## D-010 — Hover is progressive enhancement
Use `.discourse-no-touch` for lift/shadow hover effects. Touch devices must expose the complete navigation, state and metadata model without hover.

## D-011 — Core state semantics remain visible
Unread/unseen, pinned, closed, visited, selected and bulk-selected topic states may receive stronger visual hierarchy, but the theme must not suppress the core badges, status components, links or keyboard focus behavior that communicate those states.

## D-012 — Prefer explicit cross-browser tokens over typed arithmetic
Avoid CSS typed-arithmetic multiplication/division for theme sizing when browser support is uneven. Use explicit semantic tokens, subtraction where safe, or `clamp()` to preserve predictable Firefox/Chromium/WebKit behavior.
