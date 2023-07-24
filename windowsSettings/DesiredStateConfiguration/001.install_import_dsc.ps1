# execute in powershell of version 7.*.*

# from here following https://learn.microsoft.com/de-de/powershell/dsc/how-tos/installing-dsc-resources?view=dsc-2.0

Install-Module PowerShellGet -Force -AllowClobber

# for dsc resources like Registry, WindowsFeature used in 002.MyBasicConfig.ps1 and 003.GamingMinimalConfig.ps1
Install-Module PSDscResources
Import-Module PSDscResources

# https://learn.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/?source=recommendations&view=dsc-2.0
Install-Module -Name PSDesiredStateConfiguration -Repository PSGallery -MaximumVersion 2.99
Import-Module -Name PSDesiredStateConfiguration -RequiredVersion 2.0.7

# don't know why I should need this module
# Install-Module -Name ComputerManagementDsc -Repository PSGallery
# Import-Module -Name ComputerManagementDsc
