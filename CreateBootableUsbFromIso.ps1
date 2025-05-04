$Results = get-disk |
where-object BusType -eq USB |
out-gridView -Title 'Select USB Drive to Format' -OutputMode Single |
clear-disk -RemoveData -RemoveOEM -Confirm:$false -PassThru |
new-partition -UseMaximumSize -IsActive -AssignDriveLetter |
format-volume -FileSystem FAT32

$Volumes = (get-volume).Where({$_.DriveLetter}).DriveLetter
mount-diskImage -ImagePath C:\Users\gaming\Downloads\Windows.iso
$ISO = (compare-object -ReferenceObject $Volumes -DifferenceObject (Get-Volume).Where({$_.DriveLetter}).DriveLetter).InputObject

set-location -Path "$($ISO):\boot"
bootsect.exe /nt60 "$($Results.DriveLetter):"
copy-item -Path "$($ISO):\*" -Destination "$($Results.DriveLetter):" -Recurse -Verbose
