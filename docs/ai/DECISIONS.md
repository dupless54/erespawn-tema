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

## D-013 — Topic reading surfaces remain native
Premium topic title, topic map, post stream, timeline and footer styling must target current core structure without replacing the topic/post templates or changing routing, moderation, post-action or timeline mechanics.

## D-014 — Composer geometry belongs to Discourse
The theme may style composer surfaces, borders, toolbar controls, preview backgrounds and focus accents. It must not own `reply-area`, editor or preview heights, hide the grippie, or interfere with current/upcoming composer focus/resize geometry.

## D-015 — Upcoming composer redesign gets scoped overrides
Redesign-specific composer surface/border overrides must live under the native `uc-enable-composer-redesign` scope so the theme remains compatible before and after the core redesign becomes default.

## D-016 — Shared reading CSS is a `stylesheets/` module
Topic-reading rules shared by desktop and mobile live in `stylesheets/topic-reading.scss` and are loaded by both device targets. Device-only geometry remains in `desktop/desktop.scss` and `mobile/mobile.scss`.

## D-017 — User-card overflow is a compatibility boundary
Current Discourse explicitly keeps the `fk-d-menu[data-identifier="usercard"]` inner content overflow visible. The theme must preserve this behavior and must not introduce clipping around user-card/avatar/profile cosmetic anchoring layers.

## D-018 — Identity surfaces must accept arbitrary plugin metadata
User/group cards and profile pages may style generic metadata, badge, status and public-field containers, but must not depend on a fixed child order or assume optional plugin connectors exist.

## D-019 — Search and user-menu semantics remain native
Premium search/menu styling must retain native search links, user-menu tabs, unread/pending notification classes, focus-within behavior and mobile slide-in mechanics. Visual refinement is not a reason to replace current Glimmer structures.

## D-020 — Shared identity/search CSS is a `stylesheets/` module
Profile, user-card, search and user-menu rules shared across device targets live in `stylesheets/profile-search.scss`, loaded by both desktop and mobile stylesheets. Device-specific geometry stays in the device entrypoints.
