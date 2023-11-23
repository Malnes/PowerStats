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

clear
write-host "`n`n"
write-host "------- Counts -------" -ForegroundColor Green  
write-host "Environments      : $(($evironments | Measure-Object).Count)"
write-host "Flows             : $(($flows | Measure-Object).Count)"
write-host "Flow users        : $(($flows.createdBy.userId | select -Unique).count)"
write-host "PowerApps         : $(($apps | Measure-Object).Count)"
write-host "PowerApps users   : $(($apps.owner.id | select -Unique).count)"
write-host "VirtualAgents     : $(($agents | Measure-Object).Count)"
write-host "PLP policies      : $(($dlps | Measure-Object).Count)"
write-host "Custom COnnectors : $(($customConnectors | Measure-Object).Count)"
write-host "-----------------------" -ForegroundColor Green  
write-host "---- Some settings ----" -ForegroundColor Green  
write-host "Disable Environment Creation By Non Admin Users             : $($settings.disableEnvironmentCreationByNonAdminUsers)"
write-host "Disable Portals Creation By Non Admin Users                 : $($settings.disablePortalsCreationByNonAdminUsers)"
write-host "Disable Trial Environment Creation By Non Admin Users       : $($settings.disableTrialEnvironmentCreationByNonAdminUsers)"
write-host "Disable Capacity Allocation By Environment Admins           : $($settings.disableCapacityAllocationByEnvironmentAdmins)"
write-host "Disable Connection Sharing With Everyone                    : $($settings.disableConnectionSharingWithEveryone)"
write-host "Disable Developer Environment Creation By Non Admin Users   : $($settings.powerPlatform.governance.disableDeveloperEnvironmentCreationByNonAdminUsers)"
write-host "Disable Copilot                                             : $($settings.powerPlatform.intelligence.disableCopilot)"
write-host "-----------------------" -ForegroundColor Green  
write-host "`n`nDone!`n" -ForegroundColor Green 



