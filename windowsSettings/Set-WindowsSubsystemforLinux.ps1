
$features_to_enable = 
    'VirtualMachinePlatform',
    'HypervisorPlatform',
    'Microsoft-Windows-Subsystem-Linux';

foreach ($feature in $features_to_enable) {
    Enable-WindowsOptionalFeature -Online -FeatureName $feature
}

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
$loc = Get-Location
Set-Location -Path $(Env:HOME).Value 
Invoke-WebRequest 'https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi' -O 'wsl_update_x64.msi'
. wsl_update_x64.msi
Set-Location $loc
wsl --set-default-version 2
winget install Debian.Debian
