$blacklist = 'advert','bing','candy','cooking','cortana','fitbit','getstarted','identityprovider','oneconnect','people','solitaire','skypeapp','sticky','windowsmaps','windowsphone','yourphone','xing','zune';
foreach ($item in $blacklist)
{
	Get-AppXPackage -allusers | where-object Name -match $item | Remove-AppXPackage;
}

filter NameNotIn {
	$b = $true;
	foreach ($item in $args[0]) {
		if ($_.Name -match $item) { $b = $false; }
	}
	if ($b) { $_ }
}
$whitelist = 'Okular','Whatsapp', 'Spotify','Word','Excel','PowerPoint','Netflix', 'Canon', 'Synaptic','Debian','Kali';
Get-AppXPackage -allusers | where-object Publisher -NotMatch 'Microsoft' | NameNotIn $whitelist | select-object Name