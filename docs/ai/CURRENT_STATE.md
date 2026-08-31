# eRespawn Theme — Current State

Last updated: 2026-08-31

## Repository state
- Premium foundation and premium discovery/topic-list v2 are merged to `main`.
- Canonical minimum-token agent rules live in root `AGENTS.md`.
- Active development branch: `feat/premium-topic-reading-v3`.
- Target: current/latest Discourse theme APIs and official theme skeleton.

## Active premium reading phase
1. Treat the topic reading page as a premium product surface without replacing native Discourse topic/post templates.
2. Upgrade `#topic-title` into a strong reading hero while preserving status/category/tag/edit semantics.
3. Upgrade `.topic-map` into a compact reading-summary dashboard with native users, stats, controls and estimated read time intact.
4. Deepen post-card hierarchy: author metadata, avatar framing, post content, post controls, quotes, oneboxes, tables and media.
5. Style the sticky topic timeline/progress and footer controls without changing navigation logic or click targets.
6. Support both current composer styling and the upcoming `uc-enable-composer-redesign` path without owning editor/reply-area geometry.
7. Keep Light/Dark parity and derive all runtime color from Discourse CSS variables and eRespawn semantic aliases.
8. Keep avatar decorations/nameplates/flairs composable; no clipping, masks, forced z-index resets or wrapper replacement.

## Design direction
- Topic title reads like a compact SaaS page header rather than a loose heading above a forum stream.
- Topic map reads like a small analytics/status strip, not a legacy summary table.
- Posts remain clearly individual conversation units with restrained elevation and strong author/content/action hierarchy.
- Quotes, embeds, code, tables and images share the same surface/radius/border language as the rest of the product.
- Timeline/progress feels integrated with the theme while staying mechanically native.
- Composer looks premium but remains controlled by Discourse for resize, focus slide, preview and save-area layout.

## Compatibility invariants
- Avatar decorations/nameplates/cosmetic pseudo-elements must remain visible and correctly layered.
- Optional plugin markup may be enhanced but never required.
- Avoid broad `overflow: hidden`, masks, transforms, pseudo-element replacement, or z-index resets on user/avatar/name wrappers.
- Avoid template overrides when stable native selectors and theme APIs are sufficient.
- Do not force composer/editor/reply-area heights or hide the grippie; Discourse owns composer resize and save-area geometry.
- The upcoming composer-redesign styles must be scoped under the native `uc-enable-composer-redesign` class when overriding redesign-specific borders/surfaces.
- Hover remains progressive enhancement only; touch interaction must remain complete without it.

## Next validation gate
- Commit the v3 reading layer and open a PR from `feat/premium-topic-reading-v3` to `main`.
- Required official Discourse Theme GitHub Action must be GREEN on the exact PR head.
- Verify Ember Build and the shared core-feature system test, especially topic reply/composer flow.
- Review changed paths against task scope before merge.
