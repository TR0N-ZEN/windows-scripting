Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage –online
Get-AppxPackage -AllUsers *advert* | Remove-AppxPackage
Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage
Get-AppxPackage -AllUsers *cortana* | Remove-AppxPackage
Get-AppxPackage -AllUsers *office* | Remove-AppxPackage
Get-AppxPackage -AllUsers *oneconnect* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xboxapp* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xboxgameoverlay* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xboxgamingoverlay* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xboxspeech* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xbox.TCUI* | Remove-AppxPackage
Get-AppxPackage -AllUsers *yourphone* | Remove-AppxPackage
Get-AppxPackage -AllUsers *identityprovider* | Remove-AppxPackage