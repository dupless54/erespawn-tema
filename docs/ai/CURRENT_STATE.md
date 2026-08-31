# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list v2 and topic-reading/composer v3 are merged to `main`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-profile-search-v4`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active premium identity/discovery phase
1. Upgrade native user/group cards without replacing `user-card-contents` or changing the current `fk-d-menu[data-identifier="usercard"]` integration.
2. Preserve core `overflow: visible` behavior around user-card content so avatar decorations, flairs and plugin cosmetics remain composable.
3. Upgrade full user/group profile pages, navigation, stats and content surfaces while preserving responsive profile layout and controls.
4. Upgrade the Glimmer search menu and full search page using current native classes and result structure.
5. Upgrade the revamped user/notification menu and hamburger surfaces while retaining tab, notification, unread and focus semantics.
6. Keep Light/Dark parity and derive runtime color from Discourse CSS variables through the existing eRespawn semantic token layer.
7. Keep hover progressive only; touch/mobile must expose complete persistent state and controls.
8. Keep device-only geometry in `desktop/desktop.scss` and `mobile/mobile.scss`; shared V4 rules live in `stylesheets/profile-search.scss`.

## Design direction
- User cards should feel like premium identity cards rather than generic popovers while still supporting arbitrary plugin metadata.
- Full profiles should read as product account/community profiles with a strong hero, clean navigation and modular stat/content surfaces.
- Search should behave like a lightweight command palette in the header and a curated result feed on the full page.
- Notifications and user-menu tabs should use the same surface, state and density language as sidebar/topic navigation.
- No cosmetic layer should be clipped, masked, flattened or replaced for visual convenience.

## Compatibility invariants
- Avatar decorations/nameplates/cosmetic pseudo-elements must remain visible and correctly layered.
- Do not set overflow clipping on `fk-d-menu[data-identifier="usercard"]`, `.fk-d-menu__inner-content`, `.user-card-avatar`, `.user-profile-avatar` or plugin-owned cosmetic wrappers.
- Optional plugin user-card metadata/outlets may be enhanced but never assumed to exist.
- Avoid user-card/profile transforms and z-index resets that can create new stacking contexts around cosmetic layers.
- Search result links, user-menu tabs, unread notifications and keyboard focus must retain native semantics.
- Do not replace current user/search/menu Glimmer templates when stable core selectors are sufficient.
- Mobile slide-in menus keep native full-height geometry; premium radius/elevation is applied only where it does not break edge-to-edge interaction.

## Next validation gate
- Commit V4 as a bounded feature commit and open a PR from `feat/premium-profile-search-v4` to `main`.
- Required official Discourse Theme GitHub Action must be GREEN on the exact PR head.
- Verify Ember Build and shared Theme System Tests after the new shared stylesheet import.
- Review changed paths against task scope before merge.
