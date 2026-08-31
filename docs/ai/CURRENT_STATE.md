# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- New Discourse theme repository bootstrapped from an empty repo.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Development branch: `feat/premium-theme-foundation`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active foundation phase
1. Install current official theme CI and lint-compatible project structure.
2. Establish semantic design tokens and premium surface hierarchy.
3. Build a premium topic-list treatment without replacing core templates.
4. Add responsive/mobile-first behavior using current Discourse viewport guidance.
5. Preserve native accessibility, routing, moderation controls, and plugin-provided avatar/name cosmetics.
6. Add regression/system coverage before merge.

## Design direction
- Premium, modern community product rather than a generic forum skin.
- Crisp information hierarchy, restrained glass/elevation effects, intentional spacing, strong hover/focus states.
- Topic lists should read like high-quality content cards while preserving native Discourse behavior and metadata.
- Desktop, tablet, mobile, and very small widths must feel deliberately designed rather than merely scaled down.
- Light/dark compatible through Discourse/core color variables; avoid a theme that only works in one scheme.

## Compatibility invariants
- Avatar decorations/nameplates/cosmetic pseudo-elements must remain visible and correctly layered.
- Optional plugin markup may be enhanced but never required.
- Avoid broad `overflow: hidden`, masks, transforms, pseudo-element replacement, or z-index resets on user/avatar/name wrappers.

## Next validation gate
- Required Discourse Theme GitHub Action on the exact PR head.
- Review changed paths against task scope.
- Fix only actionable CI failures; max three remediation rounds.
