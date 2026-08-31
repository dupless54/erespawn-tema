# Project CI Repair

When required CI fails:
1. confirm the failure belongs to the latest exact PR head;
2. read the first actionable failing job/step/log range;
3. classify: source, formatting/lint, dependency, test expectation, infrastructure/flaky;
4. make the smallest justified repair inside task scope;
5. run/rely on targeted validation;
6. push a new head and require fresh exact-head CI.

Never weaken tests, disable required checks, hide errors, or broaden architecture merely to get GREEN.
Maximum three remediation rounds, then `NEEDS_HUMAN` with evidence.
