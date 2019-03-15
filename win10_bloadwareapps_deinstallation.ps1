Set-ExecutionPolicy Unrestricted
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
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage -AllUsers *people* | Remove-AppxPackage
Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage
Get-AppxPackage -AllUsers *sticky* | Remove-AppxPackage
Get-AppxPackage -AllUsers *getstarted* | Remove-AppxPackage
Get-AppxPackage -AllUsers *skypeapp* | Remove-AppxPackage
Get-AppxPackage -AllUsers *officehub* | Remove-AppxPackage
Get-AppxPackage -AllUsers *windowsmaps* | Remove-AppxPackage
Get-AppxPackage -AllUsers *zunevideo* | Remove-AppxPackage
Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage
Get-AppxPackage -AllUsers *bingnews* | Remove-AppxPackage
Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage
Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage
Get-AppxPackage -AllUsers *xing* | Remove-AppxPackage
Set-ExecutionPolicy Restricted