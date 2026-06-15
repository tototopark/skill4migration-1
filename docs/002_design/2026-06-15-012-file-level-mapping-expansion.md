# File-Level Mapping Expansion

Date: 2026-06-15

## Purpose

This document expands Gate 1 from family-level indexing into file-level mapping for the largest and most important legacy clusters.

Where behavior was not inspected in detail, the mapping is explicitly marked as provisional and based on file-family inference.

## Mapping Legend

- `wrapper` - keep as a compatibility entrypoint for now
- `boundary` - candidate for extraction into `src/`
- `mirror` - mirrored legacy copy that should stay in the legacy surface until equivalence is proven
- `library` - support dependency, not a migrated business endpoint

## Root File-Level Mapping

### Authentication and shell

| Files | Target | Notes |
|---|---|---|
| `index.php` | `wrapper` | shared auth shell |
| `connect.php`, `connect-save20210126.php`, `connect-save20230322.php` | `boundary` / `mirror` | authentication and redirect control |
| `register.php` | `wrapper` | account creation and upload |
| `disconnect.php` | `wrapper` | logout/session teardown |
| `destroysession.php` | `boundary` | session utility |
| `info.php` | `wrapper` | legacy info/about entrypoint |

### Jobs and updates

| Files | Target | Notes |
|---|---|---|
| `create_update_job.php`, `create_update_job-Save20200302.php`, `create_update_job-save20200414.php`, `create_update_job-save20200427.php`, `create_update_job-save20200815.php`, `create_update_job-save20200817.php`, `create_update_job-save20201125.php`, `create_update_job-save20210204.php`, `create_update_job-save20210329.php` | `boundary` / `mirror` | jobs create/update family |
| `update_jobsdetails.php`, `update_jobsdetails-Save2021-10-13.php`, `update_jobsdetails-save20200328.php`, `update_jobsdetails-save20200329.php`, `update_jobsdetails-save20200427.php`, `update_jobsdetails-save20210730.php`, `update_jobsdetails-save20210816.php`, `update_jobsdetails-save20210906.php`, `update_jobsdetails-save20210922.php` | `boundary` / `mirror` | jobs detail updates |
| `update_dateinstalljobs.php`, `update_dateinstalljobs-save20210816.php`, `update_dateinstalljobs-save20210906.php` | `boundary` / `mirror` | install-date updates |

### Punch and WIP

| Files | Target | Notes |
|---|---|---|
| `PunchSheetAction.php`, `PunchSheetAction-Save20191128.php`, `PunchSheetAction-save20200427.php`, `PunchSheetAction-save20210222.php`, `PunchSheetAction-save20210322.php` | `boundary` / `mirror` | punch-sheet family |
| `9.php`, `9-Save20191128.php`, `9-Save20191206.php`, `9-Save20200327.php`, `9-save20200406.php`, `9-save20200427.php`, `9-save20200806.php`, `9-save20200904.php`, `9-save20200929.php`, `9-save20201126.php`, `9-save20210202.php`, `9-save20210202-B.php`, `9-save20210209.php`, `9-save20210222.php`, `9-save20210311.php`, `9-save20210319.php`, `9-save20210618.php`, `9-save20210802.php`, `9-save20210805.php`, `9-save20220111.php` | `boundary` | WIP / punch trace / job detail family |
| `7.php`, `7-Save20191128.php`, `7-Save20191216.php`, `7-Save20200325.php`, `7-Save20200326.php`, `7-save20200328.php`, `7-save20200329.php`, `7-save20200401.php`, `7-save20200414.php`, `7-save20200427.php`, `7-save20200428.php`, `7-save20200717.php`, `7-save20200821.php`, `7-save20200904.php`, `7-save20201125.php`, `7-save20201126.2.php`, `7-save20201126.php`, `7-save20210126.php`, `7-save20210311.php`, `7-save20210326.php`, `7-save20210730.php`, `7-save20210813.php` | `boundary` | punch / todo / role queue family |
| `3.php`, `3-save20200406.php`, `3-save20200410.php`, `3-save20200428a.php`, `3-save20200428b.php`, `3-save20200821.php`, `3-save20200903.php`, `3-save20201202.php`, `3-save20210219.php`, `3-save20210311.php`, `3-save20210802.php`, `3-save20210802bis.php`, `3-save20230322.php` | `boundary` | operational activity family |
| `6.php`, `6-20210326.php`, `6-save20200401.php`, `6-save20200409.php`, `6-save20200413.php`, `6-save20200420.php`, `6-save20201012.php`, `6-save20210217.php`, `6-save20210225.php`, `6-save20210326.php`, `6-save20210813.php` | `boundary` | admin/ops family |
| `2.php`, `2-20200806.php`, `2-save20200821.php`, `2-save20200904.php`, `2-save20201123.php`, `2-save20210121.php`, `2-save20210805.php`, `2-save20210923.php`, `2-save20210930.php` | `boundary` | board / workflow family |
| `8.php`, `8-20200806.php`, `8-Save20200302.php`, `8-save20200401.php`, `8-save20200406.php`, `8-save20200414.php`, `8-save20200415.php`, `8-save20200815.php`, `8-save20200817.php`, `8-save20201125.php`, `8-save20201127.php`, `8-save20210329.php` | `boundary` | staff-facing operational family |

### Boards, history, and dashboards

| Files | Target | Notes |
|---|---|---|
| `10.php`, `10-save20200327.php` | `boundary` | whiteboard/activity summary |
| `15.php`, `15-Save20191208.php`, `15-save20200328.php`, `15-save20200410.php`, `15-save20200411.php`, `15-save20200817.php`, `15-save20201120.php` | `boundary` | job history and year filters |
| `16.php`, `16-save20200406.php`, `16-save20200409.php` | `boundary` | job staffing / assignment |
| `17.php`, `17-save20200414.php` | `boundary` | job progress / analysis |
| `19.php`, `19-save20200406.php`, `19-save2020326.php` | `boundary` | WIP history |
| `20.php`, `20-save20210126.php`, `20-save20210311.php` | `boundary` | account/task admin |
| `39.php`, `39-Save20210126.php`, `39-save20210906.php`, `39-save20210922.php`, `39-save20211013.php` | `boundary` | admin/account family |
| `42.php`, `42-save20200329.php`, `42-save20200420.php`, `42-save20200420V2.php` | `wrapper` / `boundary` | must be source-reviewed before final state |
| `43.php`, `43-save20200328.php`, `43-save20200406.php`, `43-save20210127.php`, `43-save20210805.php` | `wrapper` / `boundary` | provisional until inspected |
| `50.php`, `50-20201120.php`, `50-save20200328.php`, `50-save20200401.php`, `50-save20200410.php`, `50-save20200427.php`, `50-save20200815.php`, `50-save20200817.php`, `50-save20210304.php` | `boundary` | board/history family |
| `51.php`, `51-save20200401.php`, `51-save20200606.php`, `51-save20210122.php` | `boundary` | board/history family |
| `52.php`, `52-save20210209.php` | `boundary` | board/history family |
| `53.php`, `53-save20200413.php` | `boundary` | board/history family |
| `55.php`, `55-save20230322.php` | `boundary` | board/history family |
| `56.php`, `56-save20200420V2.php` | `boundary` | board/history family |
| `60.php`, `60-save20210121.php`, `60-save20210922.php`, `60-save20210923.php`, `60-save20210930.php` | `wrapper` / `boundary` | provisional review needed |
| `61.php`, `61-save20210218.php`, `61-save20210311.php` | `wrapper` / `boundary` | provisional review needed |
| `62.php`, `62-save20210311.php` | `wrapper` / `boundary` | provisional review needed |
| `63.php`, `63-save20210311.php` | `wrapper` / `boundary` | provisional review needed |
| `64.php`, `64-save20210323.php` | `wrapper` / `boundary` | provisional review needed |
| `66.php`, `66-save2021-03-25.php`, `66-save20210326.php` | `wrapper` / `boundary` | provisional review needed |

### Admin and account maintenance

| Files | Target | Notes |
|---|---|---|
| `11.php`, `11-Save20200327.php`, `11-save20200413.php` | `boundary` | user admin |
| `12.php`, `12-Save20200327.php`, `12-save20230322.php` | `boundary` | login/account admin |
| `13.php` | `boundary` | user admin action |
| `14.php` | `boundary` | user admin action |
| `31.php`, `31-save20200409.php` | `wrapper` / `boundary` | provisional |
| `32.php`, `32-save20200401.php`, `32-save2020326.php` | `wrapper` / `boundary` | provisional |
| `33.php` | `wrapper` | provisional |
| `34.php`, `34-save20200413.php` | `wrapper` / `boundary` | provisional |
| `35.php` | `wrapper` | provisional |
| `36.php` | `wrapper` | provisional |
| `37.php` | `wrapper` | provisional |
| `40.php` | `wrapper` | provisional |
| `41.php` | `wrapper` | provisional |
| `44.php` | `wrapper` | provisional |
| `45.php`, `45-save20210127.php` | `wrapper` / `boundary` | provisional |
| `46.php` | `wrapper` | provisional |
| `47.php` | `wrapper` | provisional |
| `48.php` | `wrapper` | provisional |
| `49.php` | `wrapper` | provisional |

### Remaining numbered pages

| Files | Target | Notes |
|---|---|---|
| `1.php`, `1-save20210202.php`, `1-save20210311.php` | `wrapper` | public landing family |
| `4.php` | `boundary` | dashboard-family candidate |
| `4bis.php` | `boundary` | alternate dashboard candidate |
| `4bisSHOP.php`, `4bisSHOP-save20200903.php`, `4bisSHOP-save20200916.php`, `4bisSHOP-save-20200916.php` | `boundary` | shop dashboard |
| `5.php`, `5-save20210126.php` | `wrapper` / `boundary` | provisional |
| `18.php` | `wrapper` | provisional |
| `21.php` | `wrapper` | provisional |
| `22.php` | `wrapper` | provisional |
| `23.php` | `wrapper` | provisional |
| `24.php` | `wrapper` | provisional |
| `25.php` | `wrapper` | provisional |
| `26.php` | `wrapper` | provisional |
| `27.php` | `wrapper` | provisional |
| `28.php`, `28-save20200409.php` | `wrapper` | provisional |
| `29.php`, `29-save20200409.php` | `wrapper` | provisional |
| `30.php`, `30-save20200409.php` | `wrapper` | provisional |
| `57.php` | `wrapper` | provisional |
| `58.php` | `wrapper` | provisional |
| `59.php` | `wrapper` | provisional |
| `65.php` | `wrapper` | provisional |
| `67.php`, `67-save2021-03-25.php` | `wrapper` | provisional |
| `68.php` | `wrapper` | provisional |
| `69.php` | `wrapper` | provisional |
| `70.php` | `wrapper` | provisional |
| `71.php` | `wrapper` | provisional |
| `72.php` | `wrapper` | provisional |
| `73.php`, `73-save20210816.php` | `wrapper` | provisional |
| `74.php` | `wrapper` | provisional |
| `75.php` | `wrapper` | provisional |
| `76.php` | `wrapper` | provisional |

## Devwebsite Mirror Mapping

The `devwebsite` tree is a mirror surface and should not be collapsed into the main mapping until equivalence is proven.

| Files | Target |
|---|---|
| `index.php`, `connect.php`, `register.php`, `disconnect.php`, `destroysession.php`, `create_update_job.php`, `update_jobsdetails.php`, `update_dateinstalljobs.php`, `PunchSheetAction.php` | `mirror` |
| `1.php` family | `mirror` |
| `2.php` family | `mirror` |
| `3.php` family | `mirror` |
| `4.php` family | `mirror` |
| `4bisSHOP.php` family | `mirror` |
| `5.php` family | `mirror` |
| `6.php` family | `mirror` |
| `7.php` family | `mirror` |
| `8.php` family | `mirror` |
| `9.php` family | `mirror` |
| `10.php` through `20.php` mirror pages | `mirror` |
| `21.php` through `76.php` mirror pages | `mirror` |

## Support Libraries

| Files | Target |
|---|---|
| `functions.inc.php`, `functions.inc-save20210311.php` | `library` |
| `class.json.php`, `comments.tpl.php`, `ga.php`, `polyfill.php` | `library` |
| `phpmailer/*` | `library` |
| `phpseclib/*` | `library` |
| `src/*` | `library` until the backend boundary is reworked |
| `tests/*` | `verification` |

## Remaining Unknowns

The following groups still need source-level inspection before their final state can be locked:

- `31.php` family
- `32.php` family
- `33.php` family
- `34.php` family
- `35.php` family
- `36.php` family
- `37.php` family
- `40.php` family
- `41.php` family
- `44.php` family
- `46.php` family
- `47.php` family
- `48.php` family
- `49.php` family
- `50.php` family
- `51.php` family
- `52.php` family
- `53.php` family
- `54.php` family
- `55.php` family
- `56.php` family
- `57.php` family
- `58.php` family
- `59.php` family
- `65.php` family
- `74.php` family
- `75.php` family
- `76.php` family

## Next Gate

The next step is to inspect the remaining unknown families one by one and replace provisional `wrapper` or `boundary` labels with confirmed assignments.
