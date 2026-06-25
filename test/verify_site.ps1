# Vernatun static site verification (ASCII-safe patterns)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$html = Get-Content -Raw -Encoding UTF8 -Path (Join-Path $root 'index.html')

$checks = @(
    'format-04.jpg',
    'carousel-nav-btn',
    'clubCalendar',
    '20:00',
    '15:00',
    'prevMonth',
    'nextMonth',
    'goToday'
)

$failed = 0
foreach ($pattern in $checks) {
    if ($html -notmatch [regex]::Escape($pattern)) {
        Write-Host "FAIL: missing $pattern" -ForegroundColor Red
        $failed++
    } else {
        Write-Host "OK: $pattern" -ForegroundColor Green
    }
}

$format04 = Join-Path $root 'images\format-04.jpg'
if (-not (Test-Path $format04)) {
    Write-Host 'FAIL: images/format-04.jpg missing on disk' -ForegroundColor Red
    $failed++
} else {
    Write-Host 'OK: images/format-04.jpg exists' -ForegroundColor Green
}

if ($failed -gt 0) {
    throw "Verification failed: $failed check(s)"
}
Write-Host 'All site verification checks passed.' -ForegroundColor Green
