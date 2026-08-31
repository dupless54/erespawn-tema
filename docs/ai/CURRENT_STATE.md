# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- New Discourse theme repository bootstrapped from an empty repo.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Development branch: `feat/premium-theme-foundation`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active foundation phase
1. Two native theme color schemes are defined: `eRespawn Light` and `eRespawn Dark`.
2. Runtime SCSS consumes Discourse CSS custom properties; palette HEX values live only in `about.json` color-scheme metadata.
3. Semantic color/settings aliases live in Discourse's special `common/color_definitions.scss` target; shared UI lives in `common/common.scss`; device refinements live in `desktop/desktop.scss` and `mobile/mobile.scss`.
4. Topic lists support native classic table markup and current Glimmer `latest-topic-list-item` markup without template replacement.
5. Header/search, navigation/filter pills, post stream, quotes/code, composer, menus and modals have the first SaaS-quality premium pass.
6. Theme settings provide functional topic cards, card radius, content width, topic density and header blur controls.
7. Preserve native accessibility, routing, moderation controls, and plugin-provided avatar/name cosmetics.

## Design direction
- Modern SaaS/community product aesthetic with restrained elevation and generous readable spacing.
- Slate-based neutral surfaces with indigo/sky accents; no pure black or pure white palette endpoints.
- Light and dark mode must retain the same hierarchy and interaction semantics.
- Desktop, tablet, mobile and very small widths must feel intentionally designed rather than simply scaled down.

## Compatibility invariants
- Avatar decorations/nameplates/cosmetic pseudo-elements must remain visible and correctly layered.
- Optional plugin markup may be enhanced but never required.
- Avoid broad `overflow: hidden`, masks, transforms, pseudo-element replacement, or z-index resets on user/avatar/name wrappers.
- Avoid template overrides when stable native selectors and theme APIs are sufficient.

## Next validation gate
- Required Discourse Theme GitHub Action on the exact PR head.
- Verify theme compilation for color definitions plus `common`, `desktop` and `mobile` targets.
- Review changed paths against task scope and inspect any lint/system-test failure before merge.
