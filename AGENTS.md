# eRespawn Theme — Canonical Agent Instructions

## Context priority
Current source/tests > `docs/ai/CURRENT_STATE.md` > nearest applicable local `AGENTS.md` > stable docs > plans/history.

## Minimum-token fast path
For non-trivial work, read only what the task needs:
1. root `AGENTS.md`
2. `docs/ai/CURRENT_STATE.md`
3. nearest scoped `AGENTS.md`
4. targeted source/tests
5. on-demand docs/skills only when required

Prefer `symbol/search -> targeted range -> dependency`. Do not preload the repository or every upstream guide.

## Theme area router
- `about.json`, `settings.yml`, `locales/`, `migrations/settings/`, assets/metadata -> `docs/ai/scopes/theme-config/AGENTS.md`
- `common/`, `desktop/`, `mobile/`, `javascripts/`, `stylesheets/` -> `docs/ai/scopes/frontend/AGENTS.md`
- `spec/system/`, `test/acceptance/`, browser/regression validation -> `docs/ai/scopes/testing/AGENTS.md`
- Git/CI -> `docs/ai/WORKFLOW.md` + `docs/ai/COMMANDS.md`

## Project invariants
- This repository is a Discourse **theme**, not a backend plugin. Never put authorization, persistence, or server business logic here.
- Target the current stable/latest supported Discourse theme APIs and current official theme skeleton unless compatibility metadata explicitly says otherwise.
- Preserve native Discourse routing, semantics, keyboard access, focus visibility, light/dark behavior, responsive behavior, safe-area handling, and upgrade safety.
- Prefer official plugin outlets, theme APIs, transformers, theme settings, core CSS variables, viewport/container helpers, and Glimmer components over DOM monkey-patching.
- The visual goal is premium, cohesive, fast, and intentionally designed on desktop, tablet, mobile, and very small screens.
- Never hide or break core topic-reading, composer, search, notifications, user menu, admin links, moderation controls, or accessibility affordances for aesthetics.
- Treat topic lists, navigation, cards, menus, composer-adjacent surfaces, user/profile surfaces, search, category/tag pages, and modal/dialog surfaces as one coherent design system.
- Preserve compatibility with avatar decorations, nameplates, profile cosmetics, badges, user cards, and other cosmetic markup supplied by Discourse or installed plugins. Do not globally clip, mask, recolor, flatten z-index, or overwrite pseudo-elements on avatar/name containers unless the exact integration has been verified.
- Use progressive enhancement: optional plugin markup may receive styling, but the theme must not require that plugin to render or navigate.
- Keep AI context files outside runtime-compiled theme paths. Never place `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, or AI docs under `javascripts/`, `common/`, `desktop/`, `mobile/`, `stylesheets/`, or `assets/`.

## Design-system rules
- Build from semantic design tokens instead of scattering raw values.
- Favor restrained elevation, consistent radii, clear density, readable contrast, deliberate whitespace, and subtle motion.
- Respect `prefers-reduced-motion`.
- Mobile-first; use current Discourse viewport/container helpers instead of legacy hard-coded breakpoint assumptions.
- Avoid fragile selectors tied to transient Ember internals when a stable class/API/outlet exists.
- Keep specificity low; avoid `!important` unless required to bridge a verified core/plugin specificity edge.

## Adaptive context
Cross-plugin contracts, privacy, external requests, destructive operations, broad Discourse API migrations, or unclear current-core behavior require controlled context expansion. Correctness and safety beat token savings.

## CI-only Git/GitHub governance
- lock task scope and exact allowed paths
- verify exact changed paths
- run targeted checks first
- latest exact PR head required Discourse/theme CI is authoritative; new commits invalidate old CI evidence
- any additional required Discourse-owned check must also be GREEN
- `NO_CI`, missing, skipped, pending, cancelled, stale-head, or failed checks are not GREEN
- Claude/Gemini/Codex approvals are optional review signals, not merge gates
- when latest exact PR head required CI is GREEN and no unresolved security/product/architecture blocker remains, merge is authorized without another confirmation
- prefer squash + exact `expected_head_sha` when supported
- force/destructive Git actions still need separate explicit authorization

## CI remediation
Fail -> first actionable root cause -> classify -> smallest justified repair -> targeted validation -> new exact head -> new exact-head CI.
Maximum 3 remediation rounds, then `NEEDS_HUMAN`. Never weaken tests or broaden architecture only to make CI green.

## Effort routing
Before broad reads on non-trivial work, classify with `docs/ai/EFFORT_ROUTER.md`.
- T0 mechanical -> low effort
- T1 routine theme/frontend work -> medium effort
- T2 cross-plugin contract/privacy/high-impact compatibility -> high effort
- T3 exceptional only when targeted T2 evidence is insufficient

## Live Discourse developer source gate
Canonical live upstream index: https://meta.discourse.org/t/developer-guides-index/308036?tl=en
Project-owner supplied official index/reference collection: https://meta.discourse.org/t/developer-index/322723?u=erespawn

For any version-sensitive implementation, refactor, review, or compatibility decision:
- begin at the live Developer Guides Index and open only task-relevant official topics;
- for this theme prioritize Themes & Components, Code & Internals, responsive design, accessibility-adjacent UI guidance, and theme testing;
- verify version-sensitive APIs/deprecations against current `discourse/discourse` core or `discourse/discourse-theme-skeleton` when needed;
- current official docs/core beat remembered examples and copied local guidance unless a deliberate compatibility pin exists;
- do not preload the full upstream index.

### Default official theme references
- Developing Themes & Theme Components: https://meta.discourse.org/t/-/93648?silent=true
- Theme Developer Quick Reference: https://meta.discourse.org/t/-/110448?silent=true
- Designer's Guide: https://meta.discourse.org/t/-/152002?silent=true
- Theme structure: https://meta.discourse.org/t/-/60848?silent=true
- Split theme JavaScript: https://meta.discourse.org/t/-/119369?silent=true
- Split theme SCSS: https://meta.discourse.org/t/-/115126?silent=true
- Theme settings: https://meta.discourse.org/t/-/82557?silent=true
- Theme setting objects: https://meta.discourse.org/t/-/305009?silent=true
- Theme setting migrations: https://meta.discourse.org/t/-/287783?silent=true
- Core variables in themes: https://meta.discourse.org/t/-/77551?silent=true
- Localizable theme strings: https://meta.discourse.org/t/-/109867?silent=true
- Dark-mode support: https://meta.discourse.org/t/-/161595?silent=true
- Minimize theme maintenance: https://meta.discourse.org/t/-/261388?silent=true
- Discourse JS API: https://meta.discourse.org/t/-/41281?silent=true
- Plugin outlets: https://meta.discourse.org/t/-/32727?silent=true
- Transformers: https://meta.discourse.org/t/-/349954?silent=true
- Topic list customization: https://meta.discourse.org/t/-/350411?silent=true
- AppEvents: https://meta.discourse.org/t/-/338465?silent=true
- BEM CSS class guidelines: https://meta.discourse.org/t/-/361851?silent=true
- Designing for touch & hover: https://meta.discourse.org/t/-/367810?silent=true
- Responsive widths / viewport / containers: https://meta.discourse.org/t/-/409279?silent=true
- Theme system tests: https://meta.discourse.org/t/-/281579?silent=true
- Discourse UI system specs: https://meta.discourse.org/t/-/325937?silent=true
- QUnit suites: https://meta.discourse.org/t/-/66857?silent=true
- GitHub Actions CI: https://meta.discourse.org/t/-/240150?silent=true
- d-compat/version pinning: https://meta.discourse.org/t/-/272665?silent=true

## Source hygiene
- Treat guides marked outdated/deprecated/not recommended as historical-only unless explicitly required.
- Do not copy obsolete Ember/DOM patterns from old examples without verifying current core.
- Every version-sensitive change should be explainable by a current official guide and/or current Discourse core behavior.
