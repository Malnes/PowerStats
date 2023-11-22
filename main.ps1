<#
.DESCRIPTION
Retrieves number of active power platform resources

How to use:
- Run the entire script

NB!: You might be prompted to sign in multiple times, so look for a sign-in window on your taskbar

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


write-host "`n`n`n`n`n`n`n"
write-host "------- Counts -------" -ForegroundColor Green  
write-host "Environments      : $(($evironments | Measure-Object).Count)"
write-host "Flows             : $(($flows | Measure-Object).Count)"
write-host "Flow users        : $(($flows.createdBy.userId | select -Unique).count)"
write-host "PowerApps         : $(($apps | Measure-Object).Count)"
write-host "PowerApps users   : $(($apps.owner.id | select -Unique).count)"
write-host "VirtualAgents     : $(($agents | Measure-Object).Count)"
write-host "PLP policies      : $(($dlps | Measure-Object).Count)"
write-host "Custom COnnectors : $(($customConnectors | Measure-Object).Count)"
write-host "`n`n"
write-host "------- Settings -------" -ForegroundColor Green
write-host $settings