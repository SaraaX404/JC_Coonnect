---
name: figma-onboarding-validation
description: Validate and implement Flutter onboarding screens against a supplied Figma prototype. Use when a project needs Figma frame inventory, screenshot-based visual comparison, missing onboarding states, responsive spacing checks, and an independent end-to-end review.
---

# Figma onboarding validation

Use this workflow for onboarding UI changes backed by a Figma prototype.

1. Inspect the Flutter project, current routes, assets, fonts, and test entry points before editing.
2. Read the Figma prototype metadata and enumerate every onboarding frame, branch, error state, and completion state.
3. Retrieve design context and screenshots for representative frames and record the measurable tokens: canvas size, safe areas, header heights, colors, typography, spacing, field heights, button states, and icon assets.
4. Compare the implementation route-by-route. Track both visual gaps and behavior gaps; do not treat a static placeholder as a completed control.
5. Implement the missing states with real local state, validation, selections, accordions, upload affordances, and role-specific review data. Keep the flow navigable from welcome through submitted.
6. Run formatter and static analysis. Run widget or end-to-end tests when the Flutter toolchain is available; report toolchain limitations separately from code findings.
7. Ask an independent reviewer agent to inspect the original Figma frames and the changed code end to end. Address critical and high-priority findings, then request a second review.
8. Finish with a concise coverage report listing implemented frames, known approximations, verification results, and any remaining external blockers.

Prefer reusable components for repeated Figma primitives. Preserve provided assets and use them instead of substituting generic icons when the runtime supports the asset format. If a design detail cannot be verified, state the assumption explicitly and keep the UI behavior complete.
