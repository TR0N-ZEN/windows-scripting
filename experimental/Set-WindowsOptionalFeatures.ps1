Get-WindowsOptionalFeature -Online | Where-Object State -eq " Enabled"
# Get-WindowsOptionalFeature -Online | Where-Object State -eq "Disabled"

Enable-WindowsOptionalFeature -Online -FeatureName x
Disable-WindowsOptionalFeature -Online -FeatureName x
