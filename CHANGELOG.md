# Changelog

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
