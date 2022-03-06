# Set-ExecutionPolicy Unrestricted # Enter that line manualll if execution of scripts isn't permitted

$values = @{
  'Advanced EEE'='Disabled';
  'ARP Offload'='Enabled';
  'Auto Disable Gigabit'='Disabled';
  'Enable PME'='Disabled';
  'Energy-Efficient Ethernet'='Disabled';
  'Flow Control'='Rx & Tx Enabled';
  'Green Ethernet'='Disabled';
  'Gigabit Master Slave Mode'='Force Slave Mode';
  'Interrupt Moderation'='Enabled';
  'Interrupt Moderation Rate'='High';
  'IPv4 Checksum Offload'='Rx & Tx Enabled';
  'Jumbo Packet'='Disabled';
  'Large Send Offload V2 (IPv4)'='Enabled';
  'Large Send Offload V2 (IPv6)'='Enabled';
  'Locally Administered Address'='False';
  'Log Link State Event'='Disabled';
  'Maximum Number of RSS Queues'='2 Queues';
  'NS Offload'='Enabled';
  'Packet Priority & VLAN'='Packet Priority & VLAN Enabled';
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
  'Wait for Link'='Off';
  'Wake on Link Settings'='Disabled';
  'Wake on Magic Packet'='Disabled';
  'Wake on Pattern Match'='Disabled'
}

$name = 'Ethernet';
<# foreach ($name in $names) { #>
  Disable-NetAdapterPowerManagement -Name $name -NoRestart
  # Disable-NetAdapterQos -Name $name -NoRestart
  $settings = (Get-NetAdapterAdvancedProperty -Name $name).DisplayName;
  foreach ($setting in $settings)
  {
    Write-Host $setting; #$values[$setting];
    Set-NetAdapterAdvancedProperty -Name $name -DisplayName $setting -DisplayValue $values[$setting] -NoRestart
  }
  Restart-NetAdapter -Name $name
  foreach ($setting in $settings)
  {
    Get-NetAdapterAdvancedProperty -Name $name -DisplayName $setting
    # Write-Host $setting; #$values[$setting];
  }
<#}#>
# Set-ExecutionPolicy Restricted