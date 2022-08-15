Get-WindowsCapability -Online | Where-Object  { $_.State -eq "Installed" -and $_.Name -match "Media" }

