$blacklist = 'advert','bing','candy','cooking','fitbit','getstarted','oneconnect','people','solitaire','skypeapp','sticky','windowsmaps','windowsphone','yourphone','xing','zune','OneNote';
# foreach ($item in $blacklist)
# {
#   Get-AppXPackage -allusers | where-object Name -match $item | Remove-AppXPackage;
# }

filter NameIn {
  $b = $false;
  foreach ($item in $args[0]) {
    if ($_.Name -match $item) { $b = $true; break; }
  }
  if ($b) { $_ }
}

Get-AppXPackage -allusers | NameIn $blacklist | Remove-AppXPackage;
# Get-AppXPackage -allusers | -in $blacklist | Remove-AppXPackage;

##################################################################################################################################

$whitelist = 'Okular', 'Whatsapp', 'Spotify', 'Word', 'Excel' ,'PowerPoint','Netflix', 'Canon', 'Synaptic' ,'Debian' ,'Kali' ,'Amazon', 'Norton', 'Symantec';
filter NameNotIn {
  $b = $true;
  foreach ($item in $args[0]) {
    if ($_.Name -match $item) { $b = $false; break; }
  }
  if ($b) { $_ }
}

# Get-AppXPackage -allusers | where-object Publisher -NotMatch 'Microsoft' | NameNotIn $whitelist | Remove-AppXPackage;

##################################################################################################################################

winget uninstall "Microsoft Pay"