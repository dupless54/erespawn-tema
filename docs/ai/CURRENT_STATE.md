# eRespawn Theme — Current State

Last updated: 2026-09-01

## Repository state
- Premium foundation through the 1.0.0 bulk-topic management phase is merged to `main`.
- Current merged `main`: `29bb1b9a5e4a6f31f143c07d844606dd1b8d2b7f` (PR #12, premium bulk topic management).
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-native-chat-v12`.
- Current development theme version: `1.1.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Active 1.1.0 phase
1. Premiumize the bundled native Discourse Chat presentation without replacing Chat routes, templates, components or interaction logic.
2. Cover current full-page channel lists, `.chat-channel-row`, Chat navbar, message states, reactions, composer, drawer and thread side-panel surfaces.
3. Preserve Chat-owned channel/message routing, long-press/swipe behavior, unread tracking, message actions, reactions, scrolling and keyboard behavior.
4. Preserve composer growth, upload/send-shortcut behavior, safe-area padding, drawer/thread sizing and z-index mechanics.
5. Use semantic `--er-*` tokens, current `lib/viewport` helpers and hover only as progressive enhancement.
6. Add focused current-Discourse system smoke coverage that visits a native Chat channel and sends a real message.
7. Require exact-head static Stylelint/Prettier plus exact-head official Discourse Theme CI before merge.

## Current implementation
- Added `stylesheets/native-chat.scss` as a presentation-only module loaded by both desktop and mobile targets.
- Added premium full-page channel-list, divider, current channel-row active/focused/unread and Chat-navbar surfaces.
- Added semantic Light/Dark message treatment for active, bookmarked, highlighted, deleted and errored native Chat message states.
- Refined message typography, quotes/code, reactions, actions and reply/thread indicators without replacing message markup.
- Added premium Chat composer surface/focus styling while leaving textarea growth, safe areas, uploads and send mechanics untouched.
- Added presentation-only Chat drawer and side-panel surfaces without changing their sizing, scrolling or z-index behavior.
- Bumped `about.json` to `1.1.0`.
- Added `spec/system/premium_native_chat_spec.rb` for native channel rendering and a real composer-send interaction.

## Compatibility boundaries
- Avatar decorations, nameplates, group flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- Do not introduce overflow, mask, wrapper replacement or z-index resets on avatar/flair/cosmetic-owned wrappers.
- Native Chat owns route state, channel membership, long-press/swipe behavior, unread tracking, message actions/reactions, thread behavior and scrolling.
- Native Chat owns composer growth, uploads, send shortcuts, safe-area padding, drawer/thread sizing and z-index mechanics.
- Topic bulk selection, review filters/actions, user activity, notifications, About/static routes, DModal and topic composer geometry remain core-owned from previous phases.
- Native routing, templates and accessibility semantics remain preferred over replacement markup.

## Existing validation evidence
- 0.9.0 moderation exact-head run #49 (`33448099434`): static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- 0.9.0 squash merge: `d8d9847f3da0c3d9680ba5de3d5ac34b4779b212`.
- 1.0.0 bulk-topic exact-head run #53 (`33450400700`): static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- 1.0.0 squash merge: `29bb1b9a5e4a6f31f143c07d844606dd1b8d2b7f`.

## 1.1.0 validation gate
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Focused native Chat smoke coverage must pass on current Discourse and prove the composer can still send a message.
- Changed paths must remain limited to Chat styling, desktop/mobile loading, version metadata, focused system coverage and project state/documentation unless CI finds a concrete blocker.
- A new commit invalidates previous exact-head evidence.
