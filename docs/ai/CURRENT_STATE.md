# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list v2, topic-reading/composer v3 and profile/search/user-menu v4 are merged to `main`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-auxiliary-surfaces-v5`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active premium auxiliary phase
1. Upgrade current full-page login, signup, invite, password-reset and activation flows without replacing auth templates or altering authentication behavior.
2. Upgrade user preferences navigation/forms while retaining native horizontal-overflow navigation, form semantics and plugin outlets.
3. Upgrade the responsive users directory while preserving current container-query table/card transformation and dropdown containment mechanics.
4. Upgrade badge catalog/detail cards without replacing `D-BadgeCard` links, favorite controls, granted-state semantics or badge type colors.
5. Upgrade current DModal visual chrome without changing desktop width constraints or mobile bottom-sheet fixed/full-width/keyboard/safe-area geometry.
6. Remove the legacy mobile theme override that incorrectly narrows current `.d-modal__container` to `calc(100vw - 1rem)`.
7. Keep Light/Dark parity and derive runtime colors from current Discourse CSS variables via eRespawn semantic tokens.
8. Load shared V5 rules from `stylesheets/auxiliary-surfaces.scss`; keep device entrypoints limited to device-specific geometry.

## Design direction
- Auth pages should feel like a focused premium onboarding surface rather than a raw two-column form.
- Preferences should read as an account/settings product with clear section boundaries and predictable focus states.
- Directory rows should share the topic/profile card language while retaining compact numeric scanning.
- Badge cards should feel collectible and polished without obscuring native badge status/type semantics.
- Desktop modals should feel elevated and composed; mobile modals remain native edge-to-edge bottom sheets with premium top corners only.

## Compatibility invariants
- Authentication routes, form ids/names, password helpers, social-login buttons and user-field behavior remain native.
- Directory `.directory-table-container` transform and container-query mechanics remain untouched; do not add overflow clipping that would break fixed dropdowns.
- Preference plugin outlets and route navigation stay native; do not replace the Glimmer template.
- Badge link/favorite overlays and gold/silver/bronze status colors remain native.
- DModal owns position, width, max-height, keyboard height, safe-area padding and animations; theme overrides are visual only.
- Mobile current `.d-modal__container` must not be globally narrowed or centered with side margins.
- Composer/editor geometry and avatar/nameplate cosmetic boundaries from earlier decisions remain unchanged.

## Next validation gate
- Commit V5 as a bounded feature commit and add focused system smoke coverage for auth, directory, preferences and badges.
- Open a PR from `feat/premium-auxiliary-surfaces-v5` to `main`.
- Required official Discourse Theme GitHub Action must be GREEN on the exact PR head.
- Verify Ember Build and all Theme System Tests, then review exact changed paths before merge.
