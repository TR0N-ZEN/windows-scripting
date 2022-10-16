Set-Service -Name WinRM -StartupType Manual
Start-Service -Name WinRM

Install-Module -Name PSDesiredStateConfiguration -Repository PSGallery -MaximumVersion 2.99
Import-Module -Name PSDesiredStateConfiguration

Install-Module -Name ComputerManagementDsc -Repository PSGallery
Import-Module -Name ComputerManagementDsc
