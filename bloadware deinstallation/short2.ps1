<# Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online #>
$array = {people, solitairecollection, identityprovider, yourphone, advert, bing, cortana, office, oneconnect, xboxapp, xboxgameoverlay, xboxgamingoverlay, xboxspeech, xbox.TCUI}
$exceptions = @('*store*', '*netflix*'. '*whatsapp*', '*spotify*', '*twitter*')
Get-AppXPackage -allusers | where-object {$_.name -notlike $exceptions} | Remove-AppxPackage