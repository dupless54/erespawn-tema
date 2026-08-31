# Testing Scope

Applies to `spec/system/`, `test/acceptance/`, and CI-driven theme regression coverage.

- Use current Discourse theme test helpers and shared core-feature examples.
- Prefer a focused regression spec for any behavior that can break navigation, composer, search, menus, responsive layout or plugin integration.
- Cosmetic-only selectors still need runtime compilation coverage when SCSS uses current core helpers.
- Do not make screenshot/pixel-perfect tests the only proof of accessibility or interaction behavior.
- Required CI evidence must belong to the latest exact PR head.
- Never skip/relax a failing core-feature example merely to merge; identify the real incompatibility first.
