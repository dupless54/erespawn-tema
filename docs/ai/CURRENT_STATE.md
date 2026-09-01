# eRespawn Theme — Current State

Last updated: 2026-09-01

## Repository state
- Premium foundation through the 1.1.0 native Chat phase is merged to `main`.
- Current merged `main`: `41d352a031c3777d496fba530d770d0cd2973947` (PR #13, premium native Discourse Chat).
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/topic-list-redesign-v13`.
- Current development theme version: `1.2.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 1.2.0 phase
1. Replace the visually heavy topic-list treatment with a cleaner social-feed-inspired hierarchy while preserving native Discourse topic-list markup and behavior.
2. Remove nested-card presentation: topic excerpts must not render as cards inside cards and replies/views/activity must not be individual pill controls.
3. Make the topic title the strongest element, keep category/tag metadata secondary and preserve native posters/avatars without clipping cosmetic layers.
4. Keep unread/unseen, pinned, visited, selected and bulk-selected states clear without excessive gradients, elevation or motion.
5. Keep hover restrained and progressive; touch users must receive the complete state model without hover dependency.
6. Apply the same visual language to classic native topic tables and current Glimmer `.latest-topic-list-item` surfaces.
7. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/topic-list-redesign.scss` as a presentation-only module loaded by desktop and mobile targets.
- Replaced boxed topic excerpts with plain two-line supporting copy below the title.
- Removed stat-pill chrome from replies/views/activity and restored compact text-weight hierarchy.
- Reworked classic topic rows into restrained single surfaces with thin borders, no elevation and subtle hover/focus treatment.
- Reworked current Glimmer latest-topic items to the same flat single-surface language.
- Reduced category/tag visual weight so metadata supports the title instead of competing with it.
- Preserved unread/unseen accent edges, pinned tint, visited hierarchy and selected/bulk-selected state visibility.
- Added narrow-screen refinements with a light metadata/stat divider instead of nested card chrome.
- Bumped `about.json` to `1.2.0`.

## Compatibility boundaries
- Native topic routes, table/Glimmer markup, title links, poster data, topic statuses, unread tracking and navigation remain Discourse-owned.
- Topic bulk selection, row-click/shift-click selection, checkboxes, action menus and DModal operations remain core-owned.
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce overflow, mask, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- Native Chat owns route state, channel membership, message interactions, composer growth, scrolling and drawer/thread geometry.
- Review filters/actions, user activity, notifications, About/static routes, DModal and topic composer geometry remain core-owned from previous phases.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- 1.0.0 bulk-topic exact-head run #53 (`33450400700`): static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- 1.0.0 squash merge: `29bb1b9a5e4a6f31f143c07d844606dd1b8d2b7f`.
- 1.1.0 native Chat exact-head run #56 (`33451912763`): static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- 1.1.0 squash merge: `41d352a031c3777d496fba530d770d0cd2973947`.

## 1.2.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Existing native topic discovery/reading and bulk-topic system coverage must remain GREEN on current Discourse.
- Changed paths must remain limited to topic-list presentation, desktop/mobile loading, version metadata and project documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
