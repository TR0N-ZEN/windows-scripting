# execute in powershell of version 7.*.*
# from here following: https://learn.microsoft.com/de-de/powershell/dsc/how-tos/configurations/write-and-compile?view=dsc-2.0


# https://learn.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/?source=recommendations&view=dsc-2.0
# https://learn.microsoft.com/en-us/powershell/dsc/managing-nodes/apply-get-test?source=recommendations&view=dsc-1.1&viewFallbackFrom=dsc-2.0

# this module provides commands with the noun DscConfiguration
Import-Module -Name PSDesiredStateConfiguration -Force -RequiredVersion 2.0.7

Set-Service -Name WinRM -StartupType Manual
Start-Service -Name WinRM

#Start-DscConfiguration -Path .\GamingMinimalConfig\ -wait -verbose # -force
Start-DscConfiguration -Path .\MyBasicConfig\ -wait -verbose # -force

Stop-Service -Name WinRM
Set-Service -Name WinRM -StartupType Disabled
