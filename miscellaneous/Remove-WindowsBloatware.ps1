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

$winget_list = @(
  '3D Viewer'
  'Cortana', 
  'Feedback Hub',
  'Groove Music',
  'Microsoft Pay',
  'Microsoft People',
  'Microsoft Solitaire Collection',
  'Mixed Reality Portal',
  'Movies & TV',
  'MSN Weather',
  'OneNote for Windows 10',
  'Paint 3D',
  'Phone Link',
  'Skype',
  'Windows Alarms & Clock'
  'Windows Camera,'
  'Windows Maps'
)

foreach ($item in $winget_list)
{
  winget uninstall $item
}