# Project Review

Review the exact diff, not the intended design.

Check in this order:
1. changed paths are inside locked scope;
2. supported/current Discourse APIs and stable selectors are used;
3. core routing/moderation/composer/search behavior remains intact;
4. keyboard/focus/contrast/responsive behavior remains usable;
5. avatar decorations, nameplates, badges and plugin cosmetics are not clipped or overwritten;
6. dark/light schemes use core CSS variables;
7. tests cover behavior that styling inspection cannot prove.

Report only actionable findings with file/path evidence. Do not demand stylistic churn without a product or maintenance benefit.
