$start_path = Get-Location 

$source_path = Read-Host "Enter source path: "
$destination_path = Read-Host "Enter destination path: "

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
                Copy-Item $source_file.FullName -Destination $destination_path -Force
            }
            <# Hash comaprison is forensic so tests for absolute indifference, meaning equivalency in metadatas like copy date 
            Write-Output $source_file.GetHashCode()
            Write-Output $destination_file.GetHashCode()
            $HashCode_equal = $source_file.GetHashCode() -eq $destination_file.GetHashCode()
            Write-Output "Hash equal: $HashCode_equal"
            if (-not($HashCode_equal)) {
                Copy-Item $source_file.FullName -Destination $destination_path -Force
            #>
            }
        }
    }

Set-Location $start_path