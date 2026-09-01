# Changelog

## 1.2.0 — 2026-09-01

Topic-list redesign pass built on the merged 1.1.0 native Chat release.

### Topic discovery redesign
- Replaced the heavy nested-dashboard look with a cleaner social-feed-inspired single-surface hierarchy.
- Removed boxed topic excerpts and changed them into restrained two-line supporting copy below the title.
- Removed replies/views/activity pill chrome so stats read as secondary metadata instead of controls.
- Strengthened topic-title hierarchy while reducing category/tag visual weight.
- Reworked classic native topic-table rows and current Glimmer `.latest-topic-list-item` surfaces to share the same restrained visual language.

### States and responsive behavior
- Preserved unread/unseen accent edges, pinned tint, visited hierarchy, focus state and selected/bulk-selected visibility.
- Removed elevated hover shadows and translate motion from topic discovery; desktop hover now uses subtle surface/border feedback only.
- Added narrow-screen metadata/stat separation without introducing nested cards or hover dependency.
- Kept native avatar/poster markup and cosmetic-owned wrappers unclipped.

### Compatibility and quality
- Introduced no theme JavaScript, topic-list template replacement or route override.
- Kept native topic navigation, unread tracking, topic statuses, bulk selection and moderation behavior core-owned.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI, including Ember Build and Theme System Tests.

## 1.1.0 — 2026-09-01

Premium native Discourse Chat pass built on the merged 1.0.0 bulk-topic management release.

### Chat discovery and navigation
- Added premium presentation for full-page channel lists, channel dividers, current `.chat-channel-row` active/focused/unread states and the native Chat navbar.
- Added restrained Light/Dark surfaces for channel cards, preview cards and empty states without replacing Chat routes or components.
- Preserved native long-press, swipe, leave-channel, unread tracking and keyboard-focus behavior.

### Messages, reactions and composer
- Added premium message-state treatment for active, bookmarked, highlighted, deleted and errored messages while retaining Chat-owned interaction state.
- Refined message typography, quotes, code, reactions, action controls and thread/reply indicators using semantic eRespawn tokens.
- Added premium Chat composer surface/focus treatment while leaving textarea growth, uploads, send shortcuts, safe-area padding and composer mechanics core-owned.
- Added presentation-only drawer and side-panel surfaces without changing Chat sizing, scrolling or z-index mechanics.

### Compatibility and quality
- Introduced no theme JavaScript, Chat route replacement or template override.
- Kept avatar/nameplate/flair/cosmetic-owned wrapper geometry untouched.
- Added focused current-Discourse system smoke coverage that visits a native Chat channel and sends a real message through the native composer.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI.

## 1.0.0 — 2026-09-01

Premium bulk-topic management pass built on the merged 0.9.0 moderation release.

### Topic bulk selection
- Added premium framing for the native bulk-selection toolbar, action dropdown and selected-topic count.
- Added explicit premium `.bulk-selected` cell treatment so topic-card backgrounds never hide the current selected-row state.
- Refined native bulk checkboxes and focus/touch targets without replacing checkbox semantics or row-selection behavior.
- Added responsive narrow-screen treatment using current `lib/viewport` helpers and hover enhancement only for `discourse-no-touch` devices.

### Bulk action modal
- Added restrained description and error surfaces inside the native `.topic-bulk-actions-modal`.
- Kept DMenu, DModal, available-action permissions and topic bulk operations entirely core-owned.

### Compatibility and quality
- Introduced no theme JavaScript, topic-list template replacement or bulk-operation override.
- Preserved native row-click/shift-click selection, checkbox state, plugin outlets and topic navigation outside bulk mode.
- Kept avatar, flair, nameplate and cosmetic-owned wrapper geometry untouched.
- Added focused current-Discourse system smoke coverage for the native `/latest` bulk-selection workflow.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI.

## 0.9.0 — 2026-09-01

Premium moderation-workflow pass built on the merged 0.8.0 activity/static release.

### Review queue
- Added premium framing for the current `.reviewable-container`, filters, reviewable cards and moderation action areas.
- Refined review type/status metadata, topic context, post-preview surfaces, histories, scores and conversation/editable-field chrome.
- Added responsive small-screen treatment without replacing current review filter layout or action mechanics.

### Compatibility and quality
- Preserved native review filtering, claiming/unclaiming, action dropdowns, post collapse/expand behavior, image blurring, score-table scrolling and moderator workflows.
- Introduced no theme JavaScript, review route replacement or template override.
- Kept avatar, flair, nameplate and cosmetic-owned wrapper geometry untouched.
- Added focused current-Discourse system smoke coverage for the native `/review` queue.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI.

## 0.8.0 — 2026-09-01

Premium activity, notification and public/static information pass built on the merged 0.7.0 community-utilities release.

### User activity
- Added premium card treatment for current `.user-stream` / `.user-stream-item` activity surfaces.
- Refined titles, metadata, excerpts, moderator/deleted states and draft/action chrome while preserving native stream loading and navigation.
- Kept avatar and cosmetic-owned wrapper geometry untouched; only the avatar image receives the existing eRespawn ring treatment.

### Full notifications
- Added premium framing for current `user-notifications-filter` and `user-notifications-list` structures.
- Added clearer unread state, label/description hierarchy and responsive notification cards while preserving native filtering, infinite scrolling and plugin outlets.

### Public and static pages
- Added premium About hero, stats, staff lists, activity cards and responsive column treatment around current `AboutPage` markup.
- Added readable premium surfaces for current FAQ, guidelines, terms and privacy pages generated through Discourse static body pages.
- Added premium error/not-found surfaces without replacing exception routing or error actions.

### Compatibility and quality
- Added the shared `stylesheets/activity-static.scss` module to both desktop and mobile targets.
- Introduced no theme JavaScript, route replacement or template override.
- Preserved native activity/notification routes, plugin outlets, accessibility semantics and cosmetics boundaries.
- Added focused current-Discourse system smoke coverage for user activity, full notifications, About and FAQ.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI.

## 0.7.0 — 2026-08-31

Premium community-utility pass built on the release-ready 0.6.0 foundation.

### Bookmarks
- Added premium search, list-card, reminder metadata and excerpt presentation around the native `BookmarkList` structure.
- Preserved native bookmark actions, reminders, bulk selection, topic/category/tag links and plugin outlets.
- Added mobile-specific bookmark-card refinement without replacing current mobile bookmark markup.

### Private messages
- Added premium framing for current message inbox navigation, `DHorizontalOverflowNav`, inbox selector and navigation controls.
- Kept private-message routes, topic-list behavior, unread/new states and composer entry points core-owned.
- Added responsive navigation wrapping for narrow screens without replacing PM mechanics.

### Groups
- Added premium group-directory filters and `GroupCard` surfaces.
- Added premium group-detail hero/navigation treatment around current `.container.group` markup.
- Preserved group flair rendering, membership/actions, member directory grids and container-query behavior.

### Tags
- Added premium tags controls, sort options, `TagList` surfaces and tag pills.
- Preserved native tag links, counts, PM-only indicators, admin controls and plugin outlets.

### Compatibility and quality
- Added the shared `stylesheets/community-utilities.scss` module to both desktop and mobile targets.
- Introduced no theme JavaScript, route replacement or template override.
- Kept avatar decorations, nameplates, group flairs and plugin cosmetic wrappers free of clipping, masking and z-index resets.
- Added focused current-Discourse system smoke coverage for bookmarks, private messages, group detail and tags index.
- Merge remains gated by exact-head static Stylelint/Prettier and official Discourse Theme CI.

## 0.6.0 — 2026-08-31

First release-ready version of **eRespawn Premium**, a full theme for current Discourse releases.

### Premium foundation
- Added a current full-theme structure with native Discourse routing, templates and extension points.
- Added eRespawn Light and Dark palettes while keeping runtime colors on Discourse CSS custom properties and semantic `--er-*` aliases.
- Added configurable topic cards, card radius, content width, topic density and header blur.
- Added desktop, tablet, mobile and small-screen responsive treatment.
- Preserved avatar decoration, nameplate, flair, badge and plugin-cosmetic boundaries without clipping or wrapper replacement.

### Discovery and navigation
- Upgraded native topic tables and current Glimmer latest-topic items into premium card-like surfaces without replacing core topic-row markup.
- Added stronger title, metadata and stat hierarchy plus unread, unseen, pinned, closed, visited, selected and bulk-selected states.
- Refined header/search, sidebar, navigation pills, filters and category discovery surfaces.
- Kept hover as progressive enhancement for non-touch devices.

### Topic reading and composer
- Added premium topic-title, topic-map, post-stream, timeline, footer and rich-content styling.
- Refined post metadata, controls, headings, quotes, code, oneboxes, tables and media.
- Styled the composer shell while leaving editor height, reply-area geometry, grippie and resize/focus behavior to Discourse.
- Scoped upcoming composer-redesign refinements under the native redesign class.

### Profile, search and user menus
- Upgraded native user/group cards and full profile surfaces.
- Refined profile navigation, stats and content sections.
- Upgraded the Glimmer search menu and full search results page.
- Refined revamped user, notification and hamburger menus while preserving native tabs and unread/pending states.

### Auxiliary account surfaces
- Added premium login, signup, invite, password-reset and activation presentation without changing authentication behavior.
- Refined preferences navigation/forms, users directory and badge catalog/detail surfaces.
- Refined DModal chrome while keeping desktop sizing and mobile bottom-sheet, keyboard and safe-area geometry core-owned.
- Removed the legacy mobile modal override that incorrectly narrowed current `.d-modal__container`.

### Quality and compatibility
- Added official reusable Discourse Theme CI with Ember Build and Theme System Tests.
- Added focused browser smoke coverage for core features, topic discovery/reading, signed-in composer access, category discovery, identity/search and auxiliary account routes.
- Added a read-only static Stylelint/Prettier gate aligned with current official Discourse lint configuration.
- Added a CI guard preventing JavaScript/TypeScript theme sources from being merged before the repository gains the appropriate official JS lint/type toolchain.
- Cleaned all Stylelint and Prettier findings without disabling rules.
- Release-candidate audit found no TODO/FIXME/HACK/deprecated markers requiring cleanup.

### Validation evidence
- Release-hardening exact-head run #29: static lint, official linting, Ember Build and Theme System Tests all GREEN.
- Release-candidate audit exact-head run #31 (`33394829060`): static lint, official linting, Ember Build and all Theme System Tests GREEN.

### Merged development phases
- PR #1 — premium theme foundation.
- PR #2 — premium topic discovery and navigation.
- PR #3 — premium topic reading and composer experience.
- PR #4 — premium profile, search and user-menu surfaces.
- PR #5 — premium auxiliary account surfaces.
- PR #6 — release hardening and static lint.
- PR #7 — release-candidate audit and high-level core regression coverage.
