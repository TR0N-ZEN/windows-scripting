Get-AppXPackage -allusers | where-object {$_.Publisher -NotMatch 'Microsoft' -and $_.Name -NotMatch 'Okular' -and $_.Name -NotMatch 'Whatsapp' -and $_.Name -NotMatch 'Spotify' -and $_.Name -notmatch 'Word' -and $_.Name -notmatch 'Excel' -and $_.Name -notmatch 'PowerPoint'} #| Remove-AppxPackage