Get-AppXPackage -allusers | where-object Publisher -NotMatch 'Microsoft';

$blacklist = 'advert','bing','candy','cooking','cortana','fitbit','getstarted','identityprovider','oneconnect','people','solitaire','skypeapp','sticky','windowsmaps','windowsphone','yourphone','xing','zune';

foreach ($item in $blacklist) {
	Get-AppXPackage -allusers | where-object Name -match $item;
}