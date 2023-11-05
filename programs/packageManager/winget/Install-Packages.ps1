$basics = 
# 'Norton 360' from msstore
'XPFNZKWN35KD6Z', 
# BraveSoftware.BraveBrowser for mstore
'XP8C9QZMS2PC1T',
# firefox from msstore
#9NZVDKPMR9RD, 
'Microsoft.VC++2015-2022Redist-x64',
'GnuPG.Gpg4win',
'7zip.7zip',
'xournalplusplus',
# 'VideoLAN.VLC',
# Canon Inkjet Smart Connect
'9PMK584KQVC2',
'OpenVPNTechnologies.OpenVPN',
# spotify from msstore
'9NCBCSZSJRSB',
# web media extension
'9N5TDP8VCMHS',
# VP9 Video Extensions
'9N4D0MSMP0PT',
# HEIF Image Extensions
'9PMMSR1CGPWG'



$dev =
'Git.Git',
#'GoLang.Go',
#'OBSProject.OBSStudio',
#'OBSProject.obs-amd-encoder',
'Microsoft.VisualStudioCode'
# 'OpenJS.NodeJS.LTS',
# 'Python.Python.3',
# 'Microsoft.VisualStudio.2019.Community',
# 'BellSoft.LibericaJDK.17',
# 'JetBrains.IntelliJIDEA.Community',
# 'TimKosse.FileZilla.Client',
# 'Win32DiskImager'


$gaming =
'Valve.Steam',
'Ubisoft.Connect',
'EpicGames.EpicGamesLauncher',
'ElectronicArts.EADesktop',
# discord from msstore
'XPDC2RH70K22MN'

foreach ($program in $basics + $gaming) {
  winget install $program
  #Write-Host $program
}
