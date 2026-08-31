# Frontend Scope

Applies to `common/`, `desktop/`, `mobile/`, `javascripts/`, `scss/`, and `stylesheets/`.

- Prefer supported current Discourse client APIs/outlets/transformers and stable semantic classes.
- Mobile-first; use `lib/viewport` / current container helpers for responsive behavior.
- Use core CSS custom properties for colors and automatic dark mode.
- Keep selector specificity low and avoid global `!important`.
- Do not replace core templates when styling or an official extension point can achieve the result.
- Preserve focus visibility, keyboard behavior, reduced motion, touch targets, readable contrast and native semantic states.
- Never globally clip/mask/reset z-index/pseudo-elements on avatar, username, nameplate, flair, badge or user-card wrappers; plugin cosmetics must remain composable.
- Topic-list styling must preserve bulk select, unread/new states, pinned/closed/archived states, category/tag metadata and plugin outlets.
