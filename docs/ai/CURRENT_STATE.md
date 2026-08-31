# eRespawn Theme — Current State

Last updated: 2026-09-01

## Repository state
- Premium foundation, discovery/topic-list, topic-reading/composer, profile/search/user-menu, auxiliary surfaces, release hardening, release-candidate audit, 0.6.0 release notes and 0.7.0 community utilities are merged to `main`.
- Current `main`: 0.7.0 community-utilities squash merge `49479b42f86f2bc0b1819b4ff10bccce25687644`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-activity-static-v9`.
- Current development theme version: `0.8.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 0.8.0 phase
1. Premiumize native user activity streams without replacing `UserStream`, `PostList`, infinite loading or activity routing.
2. Premiumize the full notifications page without replacing current notification filtering, item models, infinite scrolling or plugin outlets.
3. Premiumize the native About page around current `AboutPage` markup, stats, staff lists and site activity components.
4. Premiumize FAQ, guidelines, terms and privacy static body pages while leaving their content and routes core-owned.
5. Refine error/not-found presentation without replacing exception routing, buttons or plugin outlets.
6. Keep the implementation SCSS-only; no theme JavaScript, template override or route replacement is introduced.
7. Load the shared module from both desktop and mobile targets and retain touch-first responsive behavior.
8. Add focused current-Discourse system smoke coverage for activity, notifications, About and FAQ.
9. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/activity-static.scss` using current Discourse selectors and semantic `--er-*` tokens.
- Activity styling targets `.user-stream`, `.user-stream-item`, current post-list metadata/excerpts and native activity states.
- Full notifications styling targets `.user-notifications-filter`, `.user-notifications-list`, current `.notification` items and native label/description/date hierarchy.
- About styling targets `.about-page`, `.about__header`, `.about__stats`, `.about-page-users-list`, `.about__activities` and current two-column content.
- Static information styling targets the native `static-faq`, `static-guidelines`, `static-tos`, `static-privacy` body classes and `.body-page` content.
- Error styling targets current `.error-page` and `.not-found` structures only.
- `about.json` is bumped to `0.8.0` for this user-facing visual phase.
- Added `spec/system/premium_activity_static_spec.rb` to smoke-test the native activity, notifications, About and FAQ routes.

## Compatibility boundaries
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce `overflow`, `mask`, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- User activity stream data loading, navigation and `PostList` behavior remain core-owned.
- Notification filtering, unread state data, item routing, infinite scrolling and plugin outlets remain core-owned.
- About/static content and public-page routes remain core-owned.
- DModal and composer geometry remain core-owned.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- Release-hardening exact-head run #29: static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- Release-candidate audit exact-head run #31 (`33394829060`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- Release-notes exact-head run #33 (`33395530904`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- 0.7.0 community-utilities exact-head run #37 (`33439243034`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.
- 0.7.0 squash merge: `49479b42f86f2bc0b1819b4ff10bccce25687644`.

## 0.8.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Focused activity/notifications/About/FAQ smoke tests must pass on current Discourse.
- Changed paths must remain limited to shared activity/static styling, desktop/mobile loading, version metadata, focused system coverage and project state/documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
