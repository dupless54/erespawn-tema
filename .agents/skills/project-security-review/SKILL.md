---
name: project-security-review
description: Expand only around security- or privacy-sensitive theme boundaries.
---
# Theme Security Review
Review as applicable: untrusted URLs/content, DOM/XSS risks, external requests, privacy/non-enumeration, unsafe HTML, plugin-provided data, destructive admin interactions, and accidental exposure of private/moderation-only information.

A theme must not implement authorization. When security depends on server behavior, verify the exact core/plugin contract instead of simulating it in client code.
