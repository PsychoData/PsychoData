
Import-Module posh-git
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = '$(if([bool](Get-GitStatus)){"`n"})'
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory  = $true