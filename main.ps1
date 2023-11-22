<#
.DESCRIPTION
Retrieves number of active power platform resources

How to use:
- Run the entire script
#>


$module = get-module "Microsoft.PowerApps.Administration.PowerShell"
if(-not $module) {
    Install-Module -Name Microsoft.PowerApps.Administration.PowerShell
}

Add-PowerAppsAccount

$evironments = Get-AdminPowerAppEnvironment
$flows = Get-AdminFlow
$apps = Get-AdminPowerApp
$agents = Get-AdminVirtualConnectors
$dlps = Get-AdminDlpPolicy
$customConnectors = Get-AdminPowerAppConnector
$settings = Get-TenantSettings


Write-Output "`n`n`n`n`n`n`n"
Write-Output "------- Counts -------"

Write-Output "Environments      : $(($evironments | Measure-Object).Count)"
Write-Output "Flows             : $(($flows | Measure-Object).Count)"
Write-Output "PowerApps         : $(($apps | Measure-Object).Count)"
Write-Output "VirtualAgents     : $(($agents | Measure-Object).Count)"
Write-Output "PLP policies      : $(($dlps | Measure-Object).Count)"
Write-Output "Custom COnnectors : $(($customConnectors | Measure-Object).Count)"
Write-Output "`n`n"
Write-Output "------- Settings -------"
write-output $settings
