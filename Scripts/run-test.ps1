#  & .\Scripts\run-test.ps1 -Path .\Solved\ -TestParams "--reporter compact"

param(
   [string] $Path,
   [string] $TestParams
)

Write-Host $Path;
Write-Host $TestParams;

Push-Location -Path $Path;

foreach ($program in Get-ChildItem ./*.exe) { 
    Write-Host $program ; 
    & $program $TestParams;
}

Pop-Location;
