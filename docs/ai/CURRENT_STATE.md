# eRespawn Theme — Current State

Last updated: 2026-09-01

## Repository state
- Premium foundation through the 0.9.0 moderation phase is merged to `main`.
- Current merged `main`: `d8d9847f3da0c3d9680ba5de3d5ac34b4779b212` (PR #11, premium moderation workflows).
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-bulk-topic-management-v11`.
- Current development theme version: `1.0.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 1.0.0 phase
1. Premiumize native topic bulk-selection and bulk-action chrome without replacing topic-list markup, DMenu, DModal or bulk-operation behavior.
2. Preserve row-click and shift-click selection, checkbox semantics, available-action permissions, menu autofocus and modal mechanics as core-owned behavior.
3. Use current `button.bulk-select`, `.bulk-selecting`, `.bulk-selected`, `.bulk-select-topics-dropdown` and `.topic-bulk-actions-modal` selectors only.
4. Ensure eRespawn topic-card cell backgrounds do not hide the native selected-row state.
5. Keep touch interaction complete without hover and use current `lib/viewport` responsive helpers.
6. Add focused current-Discourse system smoke coverage for native bulk topic selection on `/latest`.
7. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/bulk-topic-management.scss` as a presentation-only module loaded by both desktop and mobile targets.
- Added premium bulk toolbar/dropdown/count surfaces using existing semantic `--er-*` tokens.
- Added explicit `.bulk-selected > .topic-list-data` treatment so selected topics remain visible with topic cards enabled.
- Refined native checkbox focus/touch targets without changing checkbox semantics or selection events.
- Added restrained hover enhancement only under `html.discourse-no-touch`; touch users receive persistent selection/focus states without hover dependence.
- Added premium description/error chrome inside the native `.topic-bulk-actions-modal` while leaving DModal geometry and actions untouched.
- Bumped `about.json` to `1.0.0`.
- Added `spec/system/premium_bulk_topic_management_spec.rb` for the native `/latest` bulk-selection flow.

## Compatibility boundaries
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce overflow, mask, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- Topic row navigation outside bulk mode, bulk-selection state, shift-click behavior, available actions, DMenu behavior and bulk DModal operations remain core-owned.
- Review filters/actions, user activity, notifications, About/static routes, DModal and composer geometry remain core-owned from previous phases.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- 0.8.0 activity/static exact-head run #44 (`33446305401`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- 0.8.0 squash merge: `664f077c83602464b55280f90bae40097d5ae4ec`.
- 0.9.0 moderation exact-head run #49 (`33448099434`): static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- 0.9.0 squash merge: `d8d9847f3da0c3d9680ba5de3d5ac34b4779b212`.

## 1.0.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Focused bulk topic selection smoke coverage must pass on current Discourse.
- Changed paths must remain limited to bulk-topic styling, desktop/mobile loading, version metadata, focused system coverage and project state/documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
