
# experimental

$windpowspackage_to_remove = 
  'Microsoft-Windows-FodMetadata-Package~31bf3856ad364e35~amd64~~10.0.19041.1',
  'microsoft-windows-internetexplorer-optional-package-Wrapper~31bf3856ad364e35~amd64~~11.0.19041.1566',
  'microsoft-windows-mspaint-fod-package-Wrapper~31bf3856ad364e35~amd64~~10.0.19041.746',
  'Microsoft-Windows-UserExperience-Desktop-Package~31bf3856ad364e35~amd64~~10.0.19041.1741'

foreach ($package in $windpowspackage_to_remove) { Remove-WindowsPackage -Online -PackageName $package }
