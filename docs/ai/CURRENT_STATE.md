# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list, topic-reading/composer, profile/search/user-menu, auxiliary surfaces, release hardening and release-candidate audit are merged to `main`.
- Current `main`: release-candidate audit merge `f2c1ce43419f14fff1567c11fa515df69cf99309`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active repository-prep branch: `chore/release-notes-v0.6.0`.
- User-facing theme version: `0.6.0`.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Release posture
- `0.6.0` has completed release hardening and release-candidate audit with no runtime blocker found.
- `about.json` matches the current official theme skeleton metadata structure.
- Public README now reflects the actual merged product, installation path, settings, compatibility boundaries and CI gates.
- Repository search found no TODO/FIXME/HACK/deprecated markers requiring release cleanup.
- Runtime theme code is unchanged by the release-candidate audit and release-notes phase.
- `CHANGELOG.md` records the 0.6.0 feature set, quality gates and merged development phases.

## Regression coverage
- Official shared Discourse core-feature theme system coverage.
- Focused premium core coverage for topic discovery → topic reading, signed-in composer reachability and category discovery.
- Focused identity/search coverage for user-card, revamped user-menu and full-search surfaces.
- Focused auxiliary coverage for login, users directory, preferences and badges.

## Compatibility boundaries
- Avatar decorations, nameplates, flairs, badges and plugin cosmetic layers must remain composable and unclipped.
- DModal owns positioning, width, keyboard/safe-area behavior and mobile bottom-sheet geometry.
- Discourse owns composer resize/focus geometry and directory container-query behavior.
- Native routing, templates, accessibility semantics and plugin outlets remain preferred over replacement markup.

## Validation evidence
- Release-hardening exact-head run #29: static Stylelint/Prettier, official linting, Ember Build and Theme System Tests GREEN.
- Release-candidate audit exact-head run #31 (`33394829060`): static Stylelint/Prettier, official linting, Ember Build and all Theme System Tests GREEN.

## Final repository gate
- `CHANGELOG.md` and this state update are documentation-only release preparation.
- Exact-head static lint and official Discourse Theme CI must still be GREEN before this final documentation PR is merged.
- A new commit invalidates previous exact-head evidence.
- After merge, repository contents are ready for a `v0.6.0` GitHub tag/release. The currently connected GitHub toolset does not expose release/tag creation, so do not claim that external release object exists until it is actually created through a capable GitHub interface.
