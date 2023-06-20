# from here following: https://learn.microsoft.com/de-de/powershell/dsc/how-tos/configurations/write-and-compile?view=dsc-2.0


# https://learn.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/?source=recommendations&view=dsc-2.0
# https://learn.microsoft.com/en-us/powershell/dsc/managing-nodes/apply-get-test?source=recommendations&view=dsc-1.1&viewFallbackFrom=dsc-2.0

# this module provides commands with the noun DscConfiguration
Import-Module -Name PsDesiredStateConfiguration

Start-DscConfiguration -Path .\GamingMinimal\ -wait -verbose # -force


Stop-Service -Name WinRM
Set-Service -Name WinRM -StartupType Disabled
