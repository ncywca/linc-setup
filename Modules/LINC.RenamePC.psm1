Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Rename-LincPC {
    $NewName = (Get-Content -Path ".\ComputerName.txt").Trim()
    Rename-Computer -NewName $NewName -Force -Restart
}

Export-ModuleMember -Function Rename-LincPC