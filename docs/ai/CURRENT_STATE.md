# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation, discovery/topic-list, topic-reading/composer, profile/search/user-menu and auxiliary surfaces are merged to `main`.
- Current `main`: V5 auxiliary merge `586cdab5357842a3ab2ffd7783b892ccabc46f28`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `chore/release-hardening-v6`.
- Target: current/latest Discourse theme APIs, current official Discourse Theme CI and current official theme lint conventions.

## Active release-hardening phase
1. Keep the official reusable `discourse/.github/.github/workflows/discourse-theme.yml@v1` job unchanged as the core compatibility/browser gate.
2. Add a separate read-only `static-lint` job inside the same workflow so SCSS and formatting are actually checked even while the repository has no Node lockfile.
3. Pin the static toolchain to the versions used by the current official theme skeleton: `@discourse/lint-configs` 3.2.0, Stylelint 17.5.0 and Prettier 3.8.1.
4. Use the official Discourse Stylelint and Prettier configs rather than a theme-local relaxed ruleset.
5. Fail CI if JavaScript/TypeScript theme sources appear before the repository gains the current official ESLint/TypeScript dependency lock and configuration.
6. Keep existing system regression coverage for core features, identity/search and auxiliary routes.
7. Treat exact-head official CI plus exact-head static lint as the merge gate.
8. Fix lint findings in the smallest possible patches; do not silence rules merely to obtain GREEN.

## Release posture
- Current user-facing theme version remains `0.6.0` during hardening; this phase changes validation/release quality rather than product behavior.
- Avatar decorations, nameplates, flairs and plugin cosmetic layers remain compatibility boundaries.
- DModal, composer, directory container-query and current Discourse routing/DOM mechanics remain core-owned.
- No template override is introduced for hardening.

## Validation gate
- Static Stylelint must run against `javascripts`, `desktop`, `mobile`, `common`, `scss` and `stylesheets` SCSS paths with the official Discourse rules.
- Static Prettier must run against the same SCSS surface with the official Discourse config.
- Official Discourse Theme CI must remain GREEN, including Ember Build and all Theme System Tests.
- A new commit invalidates previous exact-head evidence.
- After all gates are GREEN, squash merge the hardening PR and begin release-candidate review rather than adding another broad visual phase.
