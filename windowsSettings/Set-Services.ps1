# Set-WindowsSearchSetting -EnableWebResultsSetting $false -EnableMeteredWebResultsSetting $false -SearchExperienceSetting NotPersonalized -SafeSearchSetting Off
Stop-Service -Name WSearch
# Stop-Service -Name WSearch
Set-Service -Name WSearch -StartupType Disabled -Status Stopped
Set-Service XblAuthManager -StartupType Disabled
Set-Service XblGameSave -StartupType Disabled
Set-Service XboxGipSvc -StartupType Disabled
Set-Service XboxNetApiSvc -StartupType Disabled
Set-Service XblGameSave -StartupType Disabled
Set-Service SEMgrSvc -StartupType Disabled