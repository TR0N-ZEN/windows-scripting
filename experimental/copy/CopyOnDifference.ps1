$start_path = Get-Location 

$source_path = Read-Host "Enter source path: "
$destination_path = Read-Host "Enter destination path: "

Set-Location $destination_path
$destination_files = Get-ChildItem

Set-Location $source_path
$source_files = Get-ChildItem

#Copy-Item $source_path -Destination $destination_path -Recurse

foreach ($source_file in $source_files) {
    Write-Host $source_file.length.ToString()
	Write-Host $destination_file.length.ToString()
	Copy-Item $source_file.FullName -Destination $destination_path -Force
    }

Set-Location $start_path