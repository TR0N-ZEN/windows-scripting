# Set-ExecutionPolicy Unrestricted # Enter that line manualll if execution of scripts isn't permitted

$values = @{
	'Advanced EEE'='Disabled';
	'ARP Offload'='Disabled';
	'Auto Disable Gigabit'='Disabled';
	'Enable PME'='Disabled';
  'Energy-Efficient Ethernet'='Disabled';
  'Flow Control'='Disabled';
	'Green Ethernet'='Disabled';
  'Interrupt Moderation'='Disabled';
  'Interrupt Moderation Rate'='Disabled';
  'IPv4 Checksum Offload'='Disabled';
  'Jumbo Packet'='Disabled';
  'Large Send Offload V2 (IPv4)'='Disabled';
  'Large Send Offload V2 (IPv6)'='Disabled';
  'Maximum Number of RSS Queues'='2 Queues';
  'NS Offload'='Disabled';
  'Packet Priority & VLAN'='Packet Priority & VLAN Disabled';
	'Power Saving Mode'='Disabled';
  'PTP Hardware Timestamp'='Enabled';
  'Receive Buffers'='2048';
  'Receive Side Scaling'='Enabled';
	'Shutdown Wake-On-Lan'='Disabled';
  'Software Timestamp'='Disabled';
  'Speed & Duplex'='Auto Negotiation';
  'TCP Checksum Offload (IPv4)'='Rx & Tx Enabled';
  'TCP Checksum Offload (IPv6)'='Rx & Tx Enabled';
  'Transmit Buffers'='1024';
  'UDP Checksum Offload (IPv4)'='Rx & Tx Enabled';
  'UDP Checksum Offload (IPv6)'='Rx & Tx Enabled';
  'Wake on Link Settings'='Disabled';
	'Wake on Magic Packet'='Disabled';
  'Wake on Pattern Match'='Disabled';
}

$name = 'Ethernet';
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