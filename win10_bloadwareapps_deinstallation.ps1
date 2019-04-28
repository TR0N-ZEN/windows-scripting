Set-ExecutionPolicy Unrestricted | a
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
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
Get-AppxPackage -AllUsers *solitairecollection* | Remove-AppxPackage
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
Get-AppxPackage -AllUsers *fitbit* | Remove-AppxPackage
Get-AppxPackage -AllUsers *cooking* | Remove-AppxPackage
Get-AppxPackage -AllUsers *candy* | Remove-AppxPackage
Set-ExecutionPolicy Restricted | a

<# Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online #>
<# $array = {people, solitairecollection, identityprovider, yourphone, advert, bing, cortana, office, oneconnect, xboxapp, xboxgameoverlay, xboxgamingoverlay, xboxspeech, xbox.TCUI} #>
<# $exceptions = @('*store*', '*netflix*'. '*whatsapp*', '*spotify*', '*twitter*')
Get-AppXPackage -allusers | where-object {$_.name -notlike $exceptions} | Remove-AppxPackage#>
Set-ExecutionPolicy Unrestricted | a
Get-AppXPackage -allusers | where-object {$_.name -notlike '*store*' -and '*netflix*' -and '*whatsapp*' -and '*spotify*' -and '*twitter*' -and '*gmx*' -and '*word*'} | Remove-AppxPackage
Set-ExecutionPolicy Restricted | a
