# Theme Config Scope

Applies to `about.json`, `settings.yml`, locale files, assets, and setting migrations.

- Keep metadata valid for a full theme (`component: false`).
- Use admin-configurable theme settings for meaningful visual choices; provide min/max bounds for numeric settings.
- When renaming/changing a setting type after release, add a supported theme-setting migration instead of silently losing user configuration.
- Keep setting descriptions localizable when locales are introduced.
- Do not force site settings unless they are officially themeable and the product behavior explicitly requires it.
- Avoid declaring plugin dependencies for optional cosmetic integrations; use progressive enhancement instead.
