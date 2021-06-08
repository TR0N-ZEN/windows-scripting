Get-Printer | Select-Object -Property name
Rename-Printer "Canon TR4500 series" "DD USB"
Remove-Printer "Canon TR4500 series FAX"

Get-Service | Sort-Object status

<x> | Get-Member # lists the attributes and methods of an arbitrary object <x> or if <x> is a container-object like a list it lists attributes and methods of members

