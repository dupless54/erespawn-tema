# eRespawn Premium Discourse Theme

eRespawn Premium is a full Discourse theme for current Discourse releases. It keeps native routing, templates, accessibility semantics, plugin outlets and interaction mechanics intact while applying a cohesive premium visual system across the forum.

Current theme version: **0.7.0**.

## Highlights
- Premium native topic lists and category discovery without replacing core topic-row markup.
- Refined topic-reading surfaces, topic map, post stream, timeline and composer chrome.
- Premium profile, user-card, search, user-menu and notification surfaces.
- Refined login, signup, invite, password-reset, preferences, directory, badges and modal chrome.
- Premium bookmarks, private-message navigation, groups and tag discovery while retaining current Discourse-owned interactions and extension points.
- Responsive desktop, tablet, mobile and small-screen treatment using current Discourse viewport conventions.
- Light and dark palettes driven by Discourse CSS custom properties.
- Accessibility-conscious focus states and reduced-motion support.
- Compatibility boundaries for avatar decorations, nameplates, flairs, badges and optional cosmetic plugins.
- Native composer, DModal, bookmark actions, private-message topic lists and directory/container-query geometry remain owned by Discourse.

## Install
In Discourse Admin, open **Customize → Themes → Install** and install from Git using:

`https://github.com/dupless54/erespawn-tema.git`

For an existing installation, use Discourse's normal theme update action to pull the latest `main` revision.

## Theme settings
| Setting | Default | Purpose |
| --- | --- | --- |
| `topic_cards` | `true` | Gives native topic lists premium card surfaces without replacing their markup. |
| `card_radius` | `16` | Controls the shared radius used by premium cards and controls. |
| `content_max_width` | `1240` | Sets the maximum main-content width in pixels. |
| `topic_density` | `comfortable` | Switches topic-list density between `comfortable` and `compact`. |
| `header_blur` | `true` | Enables the lightweight translucent header treatment. |

## Compatibility principles
- Native Discourse templates and routes are preferred over template takeovers.
- Runtime colors derive from core Discourse CSS variables through eRespawn semantic tokens.
- Avatar, nameplate and group-flair cosmetic layers must not be clipped, masked or replaced by the theme.
- Bookmark bulk selection, reminders and action menus remain native Discourse behavior.
- Private-message routes, inbox selectors, navigation and topic-list behavior remain native Discourse behavior.
- Group membership/actions and member directory container-query behavior remain core-owned.
- Tag admin controls, tag links and plugin outlets remain core-owned.
- DModal owns modal positioning, width, keyboard/safe-area behavior and mobile bottom-sheet geometry.
- Discourse owns composer resize/focus geometry and directory container-query behavior.
- Hover effects are progressive enhancement; touch devices retain the complete interaction model without hover.

## Validation
Every pull request is gated by:
- the official reusable Discourse Theme CI;
- Ember Build;
- Discourse Theme System Tests;
- a separate read-only Stylelint gate using the current official `@discourse/lint-configs` rules;
- Prettier using the current official Discourse configuration.

The repository also carries focused system smoke coverage for core features, topic discovery/reading, identity/search, auxiliary account surfaces and community utility routes such as bookmarks, private messages, groups and tags.

## Development
Canonical AI/developer guidance lives in `AGENTS.md`. The `docs/ai/`, `.agents/skills/`, `.claude/` and `.codex/` files implement the project's minimum-token development workflow.

Release work follows an exact-head rule: any new commit invalidates older CI evidence, and merge is allowed only after the latest PR head is GREEN.

## License
See [LICENSE](LICENSE).
