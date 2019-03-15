Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"} # alles altes Zeug wiedr installieren

Links:

https://www.howtogeek.com/224798/how-to-uninstall-windows-10s-built-in-apps-and-how-to-reinstall-them/
https://www.tenforums.com/tutorials/4689-uninstall-apps-windows-10-a.html