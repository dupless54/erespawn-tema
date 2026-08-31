# Theme Workflow

1. Build a minimum-token task packet and lock exact allowed paths.
2. Read `CURRENT_STATE.md`, nearest scoped rules, targeted source/tests.
3. Verify current official Discourse guidance/core when the choice is version-sensitive.
4. Implement the smallest coherent change.
5. Run targeted checks first.
6. Verify exact changed paths and update state/decisions when needed.
7. Open/update PR.
8. Treat required Discourse-owned CI on the latest exact PR head as the merge gate.
9. If CI fails, repair the first actionable root cause only; maximum three rounds.
10. Squash merge with `expected_head_sha` when GREEN and no unresolved blocker remains.

Never use force pushes, destructive rewrites, test weakening, or architecture broadening merely to obtain a green check.
