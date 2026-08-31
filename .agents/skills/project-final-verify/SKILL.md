# Project Final Verify

Before merge:
- re-fetch PR metadata and exact head SHA;
- list every changed filename and verify scope;
- confirm no unresolved security/product/architecture blocker;
- confirm required Discourse-owned CI is GREEN for that exact head;
- confirm new commits have not invalidated prior CI evidence;
- confirm state/decision docs reflect material behavior changes;
- use squash merge with `expected_head_sha` when supported.

Missing, skipped, cancelled, stale, pending or failed required CI is not GREEN.
