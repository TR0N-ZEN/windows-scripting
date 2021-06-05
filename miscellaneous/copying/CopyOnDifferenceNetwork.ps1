$ComputerName = Read-Host "remote computer name"
$Credential = Read-Host "credential"

$start_path = Get-Location 

$source_path = Read-Host "Enter source path: "
$destination_path = Read-Host "Enter destination path: "

Set-Location $destination_path
$destination_files = Get-ChildItem

Set-Location $source_path
$source_files = Get-ChildItem

$Session = New-PSSession -ComputerName $ComputerName -Credential $Credential

#Copy-Item $Source -Destination $Destination -FromSession $Session

Set-Location $destination_path
$destination_files = Get-ChildItem

Set-Location $source_path
$source_files = Get-ChildItem

#Copy-Item $source_path -Destination $destination_path -Recurse

foreach ($source_file in $source_files) {
    foreach ($destination_file in $destination_files) {
        $Name_equal = $source_file.Name -eq $destination_file.Name
        Write-Output "Name equal: $Name_equal"
        if ($Name_equal) {
            $Length_Equal = $source_file.length -eq $destination_file.length
            if (-not($Length_Equal)) {
                Write-Host $source_file.length.ToString()
                Write-Host $destination_file.length.ToString()
                Copy-Item $source_file -Destination $destination_path -FromSession $Session -Force
            }
        }
    }
}