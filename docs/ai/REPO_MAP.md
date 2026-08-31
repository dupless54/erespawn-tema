# Repository Map

## Runtime theme
- `about.json` — full-theme metadata.
- `settings.yml` — administrator-facing design controls.
- `common/common.scss` — runtime SCSS entrypoint.
- `scss/tokens.scss` — semantic eRespawn design tokens.
- `scss/base.scss` — global surfaces/focus/motion rules.
- `scss/navigation.scss` — header/sidebar/navigation treatment.
- `scss/topic-list.scss` — native classic + current Glimmer topic-list treatment.
- `scss/surfaces.scss` — categories, topic content, composer, menus/modals/search.
- `scss/responsive.scss` — current Discourse viewport-based responsive rules.

## Validation
- `.github/workflows/discourse-theme.yml` — official reusable Discourse Theme CI.
- `spec/system/core_features_spec.rb` — core-feature runtime regression suite.

## AI context
- `AGENTS.md` — canonical policy.
- `.agents/skills/` — on-demand task skills.
- `.claude/`, `.codex/` — thin runtime adapters.
- `docs/ai/` — current state, decisions, workflow and scoped guidance.
