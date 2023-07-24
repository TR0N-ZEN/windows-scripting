# Resources are:
# + https://www.tenforums.com/tutorials/4689-uninstall-apps-windows-10-a.html
# + https://www.howtogeek.com/224798/how-to-uninstall-windows-10s-built-in-apps-and-how-to-reinstall-them/

# Remove bloat programs with Remove-AppXPackage and winget

filter NameIn {
  $b = $false;
  foreach ($item in $args[0]) {
    if ($_.Name -match $item) { $b = $true; break; }
  }
  # if $b is true then $_ (the object) is passed on through the filter 
  if ($b) { $_ }
}
filter NameNotIn {
  $b = $true;
  foreach ($item in $args[0]) {
    if ($_.Name -match $item) { $b = $false; break; }
  }
  # if $b is true then $_ (the object) is passed on through the filter 
  if ($b) { $_ }
}

$blacklist = 'advert',
  'bing',
  'candy',
  'cooking',
  'fitbit',
  'getstarted',
  'oneconnect',
  'people',
  'solitaire',
  'skypeapp',
  'sticky',
  'windowsmaps',
  'windowsphone',
  'yourphone',
  'xing',
  'zune',
  'OneNote';
$whitelist =
  'Whatsapp',
  'Spotify',
  'Canon',
  'Synaptic',
  'Debian',
  'Norton',
  'Symantec',
  'Xbox';

# safe
Get-AppXPackage -allusers | NameIn $blacklist | Remove-AppXPackage;
# Get-AppXPackage -allusers | -in $blacklist | Remove-AppXPackage;

# bit radical
# Get-AppXPackage -allusers | 
# where-object Publisher -NotMatch 'Microsoft' |
# NameNotIn $whitelist |
# Remove-AppXPackage;

# radical
# Get-AppXPackage -allusers | NameNotIn $whitelist | Remove-AppXPackage;

# Alles altes Zeug wieder installieren:
# Get-AppxPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}


##################################################################################################################################

$winget_blacklist = @(
  '3D Viewer',
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
  'Windows Alarms & Clock',
  'Windows Camera',
  'Windows Maps'
)

foreach ($item in $winget_blacklist) { winget uninstall $item }
