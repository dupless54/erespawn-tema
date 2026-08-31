---
name: project-schema-review
description: Review theme settings, migrations and metadata for integrity.
---
# Theme Schema Review
Check theme-setting type/default/range changes, migration safety, renamed settings, locale keys, `about.json` compatibility metadata, existing administrator configuration, idempotency, and upgrade/rollback behavior.

This is a theme: do not invent backend database schema work. Expand to core/plugin contracts only when the exact task actually crosses that boundary.
