Alles altes Zeug wieder installieren:
Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

Links:
https://www.tenforums.com/tutorials/4689-uninstall-apps-windows-10-a.html
https://www.howtogeek.com/224798/how-to-uninstall-windows-10s-built-in-apps-and-how-to-reinstall-them/
