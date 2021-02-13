Set-ExecutionPolicy Unrestricted
<# Get-NetAdapterAdvancedProperty * | ft DisplayName, DisplayValue, ValidDisplayValues #>
$names = Get-NetAdapter * | Format_Table Name <# Netadapternames #>
$settings = Get-Netadapter -Name $name -DisplayName * <# Settings #>
$values = @{"Flow Control"="Disabled"; "Interrupt Moderation"="Disabled";"Priority & VLAN"="Priority & VLAN Disabled"; "Receive Buffers"="256"; "Speed & Duplex"="Auto Negotiation"; "Transmit Buffers"="64"}

foreach ($name in $names) {
  $settings = Get-Netadapter -Name $name -DisplayValue *
  foreach ($setting in $settings) {
    Set-NetAdapterAdvancedProperty -Name $name -DisplayName $setting -DisplayValue $values[$setting] -NoRestart
  }
}

Restart-NetAdapter -Name $name
Set-ExecutionPolicy Restricted