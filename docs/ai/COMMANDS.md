# Validation Commands

Use the current package scripts from the official Discourse theme skeleton.

Targeted/local when dependencies are available:
- `pnpm lint:css`
- `pnpm lint:js`
- `pnpm lint:prettier`
- `pnpm lint:types`
- `pnpm lint`

Theme/runtime validation:
- Discourse Theme GitHub Action is authoritative for the latest exact PR head.
- Add focused system/acceptance tests for behavior that CSS/lint cannot prove.

Rules:
- Run the smallest relevant check first.
- Do not mark missing/skipped/pending/cancelled CI as GREEN.
- A new commit invalidates previous exact-head CI evidence.
