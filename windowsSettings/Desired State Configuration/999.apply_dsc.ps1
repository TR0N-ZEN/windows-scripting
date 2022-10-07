
Import-Module -Name PsDesiredStateConfiguration
Start-DscConfiguration -Path .\GamingMinimal\ -wait -verbose -force
#Start-DscConfiguration -Path .\MyDscConfiguration\ -wait -verbose -force
Set-Service -Name WinRM -Status Stopped
Set-Service -Name WinRM -StartupType Disabled
