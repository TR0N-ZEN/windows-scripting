$programs = 
# 'Norton Security Protection'
# 'Norton Security Protection' from msstore
9NKK9HHB8HHF, 
'GnuPG.Gpg4win',
'Git.Git',
'Microsoft.VC++2015-2022Redist-x64',
'7zip.7zip',
#Mozilla.Firefox,
#firefox from msstore,
9NZVDKPMR9RD, 
#BraveSoftware.BraveBrowser,
'Mozilla.Thunderbird',
'Mega.MEGASync',
#Spotify.Spotify,
# spotify from msstore
9NCBCSZSJRSB,
'GoLang.Go',
#'OBSProject.OBSStudio',
#'OBSProject.obs-amd-encoder',
# 'Discord.Discord',
# discord from msstore
XPDC2RH70K22MN, 
# 'VideoLAN.VLC',
'Microsoft.VisualStudioCode',
# 'OpenJS.NodeJS.LTS',
'Python.Python.3',
'OpenVPNTechnologies.OpenVPN',
# 'Microsoft.VisualStudio.2019.Community',
# 'BellSoft.LibericaJDK.17',
# 'JetBrains.IntelliJIDEA.Community',
# 'TimKosse.FileZilla.Client',
# 'Win32DiskImager',
'xournalplusplus',
'Valve.Steam',
'Ubisoft.Connect',
'EpicGames.EpicGamesLauncher',
'ElectronicArts.EADesktop',
# Canon Inkjet Smart Connect
'9PMK584KQVC2'


foreach ($program in $programs) {
  winget install $program
}
