$ErrorActionPreference = "Stop"
$Source = Join-Path $PSScriptRoot "pets\gugu"
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
$Target = Join-Path $CodexHome "pets\gugu"

New-Item -ItemType Directory -Force -Path $Target | Out-Null
Copy-Item (Join-Path $Source "pet.json") $Target -Force
Copy-Item (Join-Path $Source "spritesheet.webp") $Target -Force

Write-Host "Gugu installed to: $Target"
Write-Host "Open/restart Codex, then select 咕咕 Gugu from the Pets settings."
