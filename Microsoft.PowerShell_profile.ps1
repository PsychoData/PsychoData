#Windows Powershell 5.1 - AllUsersCurrentHost 
#C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1

Import-Module posh-git
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '$(if([bool](Get-GitStatus)){"`n"})'
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory  = $true
