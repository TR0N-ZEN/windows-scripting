Get-AppXPackage -allusers | where-object {$_.Publisher -NotMatch "Microsoft" -and $_.Name -NotMatch "Okular" -and $_.Name -NotMatch "Whatsapp" -and $_.Name -NotMatch "Spotify"} #| Remove-AppxPackage