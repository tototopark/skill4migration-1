---
name: code-migration-quality-gate
description: Use when migrating legacy projects, rewriting codebases, porting applications, or mapping old menus/functions to a new stack. Use for file-by-file source review, 1:1 mapping, compatibility wrappers, regression gates, and migration documentation. Do not use for brand-new standalone apps or casual single-file refactors.
---

# Code Migration Quality Gate

Use this skill for legacy-to-modern migration work where behavior preservation matters more than speed.

## Core Principle

- Preserve behavior first.
- Treat every legacy file as evidence, not assumption.
- Do not mark a boundary complete until the legacy path and the migrated path are both explained and verified.

## Required Workflow

### 1. Inventory

- List legacy entrypoints, support files, shared helpers, mirrors, and versioned variants.
- Group files by actual behavior, not by directory alone.
- Record ownership of redirects, uploads, auth checks, and workflow handlers.

### 2. Gate 1 Mapping

- Map each legacy file or family to a target module, wrapper, or compatibility path.
- Mark anything unproven as legacy-compatible.
- Keep one-to-one mapping decisions explicit.

### 3. File-by-File Source Review

- Read the actual file body before naming the boundary.
- Compare root files with mirror copies separately.
- Record the real role of the file: auth, redirect, CRUD, upload, session, notification, or shell.
- Capture side effects such as DB writes, emails, redirects, and device/IP checks.
- Flag suspicious behavior immediately, even if the file still "works".

### 4. Edge-Case Preservation

- Record password rotation, empty/null handling, IP allowlists, device allowlists, admin validation, upload rules, and role-specific redirects.
- Treat unusual branches as requirements, not noise.

### 5. Documentation Discipline

- Keep design notes in `docs/002_design`.
- Keep execution notes in `docs/003_logs`.
- Use matching sequence numbers for the same work order.
- Update context notes and checklists when a meaningful migration decision changes.

### 6. Verification

- Run the smallest useful smoke test after doc or code changes.
- Verify the worktree is clean before claiming completion.
- Do not claim success without fresh evidence.

### 7. Commit Readiness

- Bundle the migration note, log entry, and navigation updates together when they belong to the same work item.
- Commit only after the review notes and verification pass are aligned.

## What to Capture

- root entrypoints
- `devwebsite` mirrors
- compatibility wrappers
- family-level and file-level mappings
- source review findings
- smoke test results
- follow-up risks and next review targets

## Output Standard

Every migration pass should leave behind:

- a complete inventory or a clearly scoped partial inventory
- a mapping table
- a source review note when files were read directly
- a log entry
- a verification result

## Stop Conditions

Pause and reassess when:

- a file body contradicts the filename or current mapping
- a mirror diverges from the root behavior
- a session, auth, or redirect path is suspicious
- a verification command fails
- a task would move work outside the fixed workspace

## Migration Addendum

Use this addendum when extending an existing migration record rather than starting a new one.

- Keep the original quality-gate workflow intact.
- Add source-review findings as a new step after Gate 1 mapping.
- Record `root` and `devwebsite` files separately when reading code.
- Treat numbered design docs and numbered logs as paired outputs for the same work order.
- Keep the numbering aligned with the sequence of actual work, not with the directory listing order.
- When a source review reveals a suspicious branch, record it before moving to the next family.
- When a log or design note already exists, append a new numbered entry instead of renumbering unrelated prior work.
- Use the fixed workspace only.
- Finish every pass with a smoke check and a clean-worktree check before calling it done.
