# Test Prompts for code-migration-quality-gate

## 1. Should trigger

Legacy migration, file-by-file source review, numbered docs/logs, wrapper mapping, or regression-gate planning.

Example:

```text
PHP legacy site migration: map sitepro/11.php into React and FastAPI with 1:1 behavior preservation.
```

## 2. Should trigger

Reviewing a specific legacy handler and asking whether it is an auth boundary, CRUD boundary, wrapper, or mirror.

Example:

```text
Read sitepro/connect.php and tell me whether it is just login or a broader auth/redirect gateway.
```

## 3. Should trigger

Source review plus documentation work such as numbered design notes, log entries, or compatibility notes.

Example:

```text
I reviewed several legacy PHP files. Add the findings to the migration docs and keep the log numbering aligned.
```

## 4. Should not trigger

Small unrelated refactors, cosmetic edits, or new standalone apps.

Example:

```text
Tidy the spacing in one React component.
```

## 5. Should not trigger

Non-migration project management or generic note-taking.

Example:

```text
Write a weekly status update for my team.
```

## 6. Adversarial trigger

Migration requests that avoid saying "migration" but still ask for boundary mapping, legacy preservation, or compatibility analysis.

Example:

```text
Take this old PHP system and make sure every route still behaves the same after we reorganize it into a cleaner structure.
```

## 7. Edge trigger

Requests that focus on one dangerous legacy behavior such as auth, redirects, uploads, sessions, IP/device gating, or side-effect-heavy update handlers.

Example:

```text
Check the session teardown and login redirect flow before we move anything else.
```

## 8. Pressure scenarios

### Time pressure

```text
We only have time for one pass. Use the quality gate to map the highest-risk files first and record the source review findings.
```

### Boundary pressure

```text
Do not move outside the fixed workspace. Keep the docs, logs, and review notes in the existing migration repo only.
```

### Source-review pressure

```text
Read the legacy file bodies directly before updating the mapping. Do not infer roles from filenames alone.
```

### Verification pressure

```text
After the docs update, run the smoke test and only then say the pass is ready.
```

## 9. Addendum trigger

Use this when the user asks to extend the existing migration skill with additional steps from work already done.

Example:

```text
Keep the original skill intact, then add the file-by-file source review steps and the numbered doc/log rules from the latest migration pass.
```
