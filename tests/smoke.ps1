$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot

$requiredPaths = @(
    'README.md',
    'AGENTS.md',
    'docs\001_meta\README_INDEX.md',
    'docs\001_meta\checklist.md',
    'docs\001_meta\context-notes.md',
    'docs\001_meta\project_structure_guide.md',
    'docs\002_design\2026-06-15-code-migration-quality-gate.md',
    'docs\002_design\2026-06-15-legacy-surface-inventory.md',
    'docs\002_design\2026-06-15-gate1-mapping-table.md',
    'docs\002_design\2026-06-15-edge-cases-and-compatibility-rules.md',
    'docs\002_design\2026-06-15-first-backend-boundary.md',
    'docs\002_design\2026-06-15-first-sqlite-schema.md',
    'docs\002_design\2026-06-15-first-api-contract.md',
    'docs\002_design\2026-06-15-compatibility-wrapper-list.md',
    'docs\002_design\2026-06-15-smoke-test-plan.md',
    'docs\003_logs\README.md'
)

foreach ($path in $requiredPaths) {
    $full = Join-Path $root $path
    if (-not (Test-Path $full)) {
        throw "Missing required path: $path"
    }
}

$checklist = Get-Content (Join-Path $root 'docs\001_meta\checklist.md')
$open = ($checklist | Select-String '^- \[ \]' ).Count
if ($open -ne 0) {
    throw "Checklist still has open items: $open"
}

Write-Output 'smoke ok'
