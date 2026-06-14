# context-notes.md

## Working decisions

- The current workspace is a legacy PHP application with many flat root-level scripts.
- New work should move toward a cleaner modular backend without breaking the current app too early.
- The preferred direction is backend-first, then frontend.
- Configuration should be centralized.
- SQLite is the default development database, with a later MySQL migration path.
- The project should stay shallow: no more than `2` folder levels from the root when practical.
- The codebase should avoid oversized files and split responsibilities early.
- The first migration phase is a hybrid structure cleanup that preserves legacy behavior while extracting shared boundaries.

## Documentation rule

- Any meaningful architecture, DB, or workflow decision should be written here and in the checklist.

