# eRespawn Theme — Current State

Last updated: 2026-09-01

## Repository state
- Premium foundation through the 0.8.0 activity/static phase is merged to `main`.
- Current merged `main`: `664f077c83602464b55280f90bae40097d5ae4ec` (PR #10, premium activity/static surfaces).
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-moderation-workflows-v10`.
- Current development theme version: `0.9.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 0.9.0 phase
1. Premiumize the native moderation review queue without replacing review routes, templates or reviewable models.
2. Keep review filters, claiming/unclaiming, moderation actions, post collapse/expand, blurred-image behavior and score scrolling core-owned.
3. Use current `.reviewable-*` selectors and semantic `--er-*` tokens only; no theme JavaScript or template override.
4. Load one shared moderation module from both desktop and mobile targets.
5. Preserve mobile review-filter geometry and touch-first interaction behavior from current core.
6. Add focused current-Discourse system smoke coverage for `/review` using a native flagged-post reviewable fixture.
7. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/moderation-workflows.scss` around current `.reviewable-container`, `.reviewable-filters`, `.reviewable-item`, metadata, post preview, score/history and action surfaces.
- Review cards use existing eRespawn semantic surfaces, borders, radii and restrained elevation in Light/Dark modes.
- Small-screen rules reduce padding/elevation without replacing the core review filter flex/grid layout or score-table overflow behavior.
- Added the module to `desktop/desktop.scss` and `mobile/mobile.scss`.
- Bumped `about.json` to `0.9.0`.
- Added `spec/system/premium_moderation_workflows_spec.rb` for the native review queue.

## Compatibility boundaries
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce overflow, mask, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- Review filter layout, reviewable claiming, action dropdowns, dialogs/modals, post collapse/toggle mechanics, image blurring and score-table scrolling remain core-owned.
- User activity, notifications, About/static routes, DModal and composer geometry remain core-owned from previous phases.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- 0.7.0 community-utilities exact-head run #37 (`33439243034`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- 0.7.0 squash merge: `49479b42f86f2bc0b1819b4ff10bccce25687644`.
- 0.8.0 activity/static exact-head run #44 (`33446305401`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- 0.8.0 squash merge: `664f077c83602464b55280f90bae40097d5ae4ec`.

## 0.9.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Focused moderation review-queue smoke coverage must pass on current Discourse.
- Changed paths must remain limited to moderation styling, desktop/mobile loading, version metadata, focused system coverage and project state/documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
