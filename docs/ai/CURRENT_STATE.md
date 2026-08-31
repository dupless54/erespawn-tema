# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list, topic-reading/composer, profile/search/user-menu, auxiliary surfaces, release hardening, release-candidate audit and 0.6.0 release notes are merged to `main`.
- Current `main`: release-notes merge `0169a55ac5c34269ce19b74e7aadde78825807d9`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-community-utilities-v8`.
- Current development theme version: `0.7.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 0.7.0 phase
1. Premiumize native bookmarks without replacing `BookmarkList`, bulk selection, bookmark actions, reminder metadata or plugin outlets.
2. Premiumize private-message navigation and list framing without replacing current message routes, `DHorizontalOverflowNav`, inbox selectors or topic-list behavior.
3. Premiumize group directory/cards and group detail chrome while preserving flair rendering, group membership/actions and directory/container-query member mechanics.
4. Premiumize tags index controls/lists while preserving `TagList`, tag links, admin controls and plugin outlets.
5. Keep the implementation SCSS-only; no theme JavaScript, template override or route replacement is introduced.
6. Load the shared utility module from both desktop and mobile targets and retain touch-first responsive behavior.
7. Add focused current-Discourse system smoke coverage for bookmarks, private messages, group detail and tags index.
8. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/community-utilities.scss` using only native/current Discourse selectors and semantic `--er-*` tokens.
- Bookmarks use `.user-activity-bookmarks-page`, `.bookmark-list-wrapper`, `.bookmark-list-item` and native bookmark metadata/actions.
- Private messages use `.user-messages-page`, `.user-navigation-secondary`, `.messages-nav` and native navigation controls.
- Groups use current `.groups-page`, `.groups-index`, `.group-box`, `.container.group` and `.group-details-container` structures.
- Tags use current `.tags-index`, `.tags-controls`, `.tag-sort-options`, `.tags-list` and `.tag-box` structures.
- `about.json` is bumped to `0.7.0` for this user-facing visual phase.
- Added `spec/system/premium_community_utilities_spec.rb` to smoke-test the four native routes.

## Compatibility boundaries
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce `overflow`, `mask`, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- Bookmark bulk selection/actions and PM topic-list mechanics remain core-owned.
- Group member directory/container-query behavior remains core-owned.
- Tag admin controls, tag links and plugin outlets remain core-owned.
- DModal and composer geometry remain core-owned.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- Release-hardening exact-head run #29: static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- Release-candidate audit exact-head run #31 (`33394829060`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- Release-notes exact-head run #33 (`33395530904`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.

## 0.7.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Focused bookmarks/messages/group/tags smoke tests must pass on current Discourse.
- Changed paths must remain limited to the shared community utility styling, desktop/mobile loading, version metadata, focused system coverage and project state/documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
