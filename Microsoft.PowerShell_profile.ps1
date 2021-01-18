#Windows Powershell 5.1 - AllUsersCurrentHost 
#C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1

$requiredModules = @{
 'Posh-Git' = $null
 #Module
 #RequiredVersion 
 #PreReleaseRequired?
}


if ( -not [bool](Get-Module posh-git)) {
    Install-Module Posh-Git -Confirm:$true -scope AllUsers -AllowPrerelease 
} else { 
    Write-Verbose "Module Posh-Git already found"
}

Import-Module posh-git
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '$(if([bool](Get-GitStatus)){"`n"})'
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory  = $true

