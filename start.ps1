param([switch]$Dev, [switch]$Autostart)
# Local Studio app lives on D:\AI — G: is output only.
$Target = "D:\AI\caleb-pc\sites\local-studio\start.ps1"
Write-Host "Local Studio moved to D:\AI\caleb-pc\sites\local-studio" -ForegroundColor Yellow
Write-Host "Outputs remain on G:\Generation\Local-Studio\output" -ForegroundColor DarkGray
if (-not (Test-Path $Target)) { throw "Missing $Target" }
$args = @()
if ($Dev) { $args += "-Dev" }
if ($Autostart) { $args += "-Autostart" }
& $Target @args
