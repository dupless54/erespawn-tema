# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation is merged to `main`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-topic-discovery-v2`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active premium discovery phase
1. Preserve the two native color schemes: `eRespawn Light` and `eRespawn Dark`.
2. Keep runtime colors derived from Discourse CSS custom properties; palette HEX values remain only in `about.json` metadata.
3. Upgrade semantic tokens with raised/active/stat surfaces, stronger elevation tokens and cross-browser-safe radius/gap calculations.
4. Push classic Glimmer topic rows and `latest-topic-list-item` toward a social/SaaS content-card hierarchy without replacing native templates.
5. Make unread/unseen, pinned, visited, closed, selected and bulk-selected states visually distinct while preserving core behavior.
6. Upgrade header/search, sidebar, navigation/filter pills and category discovery tables/cards as one coherent shell.
7. Keep hover as enhancement only; touch/mobile receives complete persistent states without relying on hover.
8. Preserve native accessibility, routing, moderation controls, composer geometry and plugin-provided avatar/name cosmetics.

## Design direction
- Modern SaaS/community product aesthetic with restrained elevation, soft state surfaces and deliberate density.
- Topic titles carry the strongest hierarchy; category/tag metadata and reply/view/activity stats are compact secondary chips.
- Category discovery should feel like a curated product directory instead of an unstyled forum table.
- Light and dark mode retain identical hierarchy and interaction semantics.
- Desktop, tablet, mobile and very small widths must feel intentionally designed rather than simply scaled down.

## Compatibility invariants
- Avatar decorations/nameplates/cosmetic pseudo-elements must remain visible and correctly layered.
- Optional plugin markup may be enhanced but never required.
- Avoid broad `overflow: hidden`, masks, transforms, pseudo-element replacement, or z-index resets on user/avatar/name wrappers.
- Avoid template overrides when stable native selectors and theme APIs are sufficient.
- Do not force composer/editor heights; Discourse owns composer resize and save-area geometry.
- Avoid CSS typed arithmetic that has uneven browser support when an explicit token or `clamp()` can express the same result.

## Next validation gate
- Open PR from `feat/premium-topic-discovery-v2` to `main`.
- Required official Discourse Theme GitHub Action must be GREEN on the exact PR head.
- Verify Ember Build and the shared core-feature system test, including topic reply/composer flow.
- Review changed paths against task scope before merge.
