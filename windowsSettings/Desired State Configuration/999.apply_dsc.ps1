
Import-Module -Name PsDesiredStateConfiguration
Start-DscConfiguration -Path .\GamingMinimal\ -wait -verbose -force

Stop-Service -Name WinRM
Set-Service -Name WinRM -StartupType Disabled
