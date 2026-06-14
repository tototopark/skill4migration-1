# Schema and Contract Log

Date: 2026-06-15

## What was decided

- The first SQLite schema centers on users, IP allowlists, trusted devices, and sessions.
- The first API contract models the authenticated shell.
- Compatibility wrappers stay around the core access path, job update path, and punch/WIP path.

## Why

- Authentication and access control are shared across the legacy site.
- A small, portable schema reduces migration risk.
- A stable shell contract makes later page migration easier.
