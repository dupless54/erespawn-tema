# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list, topic-reading/composer, profile/search/user-menu, auxiliary surfaces and release hardening are merged to `main`.
- Current `main`: release-hardening merge `f9968176ee3b4c0c2f4bdca42148c78e8ddc2c97`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `chore/release-candidate-audit-v7`.
- User-facing theme version remains `0.6.0` during release-candidate audit.
- Target: current/latest Discourse theme APIs, official Discourse Theme CI and current official theme lint conventions.

## Release-candidate audit scope
1. Keep runtime behavior stable unless the audit finds a concrete blocker.
2. Refresh public installation, feature, settings, compatibility and validation documentation so it reflects the actual merged theme rather than the initial foundation phase.
3. Add focused high-level system coverage for the core discovery → topic-reading path, complementing the existing core, identity/search and auxiliary smoke specs.
4. Confirm `about.json` follows the current official theme skeleton metadata shape and retains version `0.6.0` until the RC gate closes.
5. Confirm no TODO/FIXME/HACK/deprecated markers remain in project code.
6. Keep avatar decorations, nameplates, flairs, badges and plugin cosmetic layers as compatibility boundaries.
7. Keep DModal, composer, directory container-query and routing/DOM mechanics core-owned.
8. Require exact-head static lint plus exact-head official Discourse Theme CI before merging the audit PR.

## Audit findings so far
- `about.json` matches the current official theme skeleton metadata structure and already declares `theme_version` `0.6.0`.
- Repository search found no TODO/FIXME/HACK/deprecated markers requiring release cleanup.
- README was stale and still described the project as being in its first development phase; it is being replaced with current installation, feature, settings, compatibility and validation documentation.
- Existing system specs cover core features, identity/search and auxiliary account surfaces, but the premium topic discovery → topic reading path lacked its own focused smoke spec.

## Validation gate
- New core-surface smoke coverage must pass on current Discourse.
- Static Stylelint and Prettier must be GREEN on the exact PR head.
- Official Discourse Theme CI must be GREEN on the exact PR head, including Ember Build and all Theme System Tests.
- Changed paths must remain limited to release documentation, audit decisions and focused system coverage unless a concrete runtime blocker is discovered.
- A new commit invalidates previous exact-head evidence.
- If all gates are GREEN with no runtime blocker, squash merge the RC audit and then decide whether `0.6.0` is ready for a GitHub release/tag or needs one final bounded visual/device QA pass.
