# Set-ExecutionPolicy Unrestricted # Enter that line manualll if execution of scripts isn't permitted

$values = @{
  "Energy Efficient Ethernet"="Off";
  "Enable PME"="Disabled";
  "Flow Control"="Disabled";
  "Interrupt Moderation"="Disabled";
  "Interrupt Moderation Rate"="Off";
  "IPv4 Checksum Offload"="Disabled";
  "Jumbo Packet"="Disabled";
  "Large Send Offload V2 (IPv4)"="Disabled";
  "Large Send Offload V2 (IPv6)"="Disabled";
  "Maximum Number of RSS Queues"="2 Queues";
  "ARP Offload"="Disabled";
  "NS Offload"="Disabled";
  "Packet Priority & VLAN"="Packet Priority & VLAN Disabled";
  "PTP Hardware Timestamp"="Enabled";
  "Receive Buffers"="2048";
  "Receive Side Scaling"="Enabled";
  "Software Timestamp"="Disabled";
  "Speed & Duplex"="Auto Negotiation";
  "TCP Checksum Offload (IPv4)"="Rx & Tx Enabled";
  "TCP Checksum Offload (IPv6)"="Rx & Tx Enabled";
  "Transmit Buffers"="2048";
  "UDP Checksum Offload (IPv4)"="Rx & Tx Enabled";
  "UDP Checksum Offload (IPv6)"="Rx & Tx Enabled";
  "Wake on Magic Packet"="Disabled";
  "Wake on Pattern Match"="Disabled";
  "Wake on Link Settings"="Disabled";
}

$name = "Ethernet";
<# foreach ($name in $names) { #>
  Disable-NetAdapterPowerManagement -Name $name -NoRestart
	Disable-NetAdapterQos -Name $name -NoRestart
  $settings = (Get-NetAdapterAdvancedProperty -Name $name).DisplayName;
  foreach ($setting in $settings) {
    Set-NetAdapterAdvancedProperty -Name $name -DisplayName $setting -DisplayValue $values[$setting] -NoRestart
    Get-NetAdapterAdvancedProperty -Name $name -DisplayName $setting
    # Write-Host $setting; #$values[$setting];
  }
  
<#}#>


Restart-NetAdapter -Name $name
# Set-ExecutionPolicy Restricted