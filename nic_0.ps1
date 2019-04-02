<# Get-NetAdapterAdvancedProperty * | ft DisplayName, DisplayValue, ValidDisplayValues #>
$names = Get-NetAdapterAdvancedProperty * | ft DisplayName
$values = Get-NetAdapterAdvancedProperty * | ft DisplayValue

for ($name in $names -and $value in $values) {
Set-NetAdapterAdvancedProperty * -DisplayName $name -DisplayValue $value -NoRestart
}

Restart-NetAdapter (NIC Name)