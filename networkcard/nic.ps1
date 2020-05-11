$networkadapters = Get-NetAdapter
foreach ($Networkadapter in $Networkadapters) {
	if ($Networkadapter.Name == "Ethernet") {
		Set-NetAdapterAdvancedProperty $Networkadaptern.Name -DisplayName "Flow Control"-DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Interrupt Moderation" -DisplayValue "Disabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "IPv4 Checksum Offload V2 (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "IPsec Offload" -DisplayValue "Auth Header & ESP Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Jumbo Packet" -DisplayValue "Disabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Large Send Offload V2 (IPv4)" -DisplayValue "Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Large Send Offload V2 (IPv6)" -DisplayValue "Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Max number of RSS Processors" -DisplayValue "8" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Preferred NUMA node" -DisplayValue "System Default" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Maximum Number of RSS Queues" -DisplayValue "2 Queues" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Priority & VLAN" -DisplayValue "Priority & VLAN Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Receive Buffers" -DisplayValue "2048" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Receive Side Scaling" -DisplayValue "Disabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Speed & Duplex" -DisplayValue "Auto Negotiation" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "SR-IOV" -DisplayValue "Disabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "TCP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "TCP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Transmit Buffers" -DisplayValue "2048" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "UDP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "UDP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Virtual Machine Queues" -DisplayValue "Disabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Interrupt Moderation Rate" -DisplayValue "Adaptive" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Log Link State Event" -DisplayValue "Enabled" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Gigabit Master Slave Mode" -DisplayValue "Auto Detect" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Locally Administered Address" -DisplayValue "" -NoRestart
		Set-NetAdapaterAdvancedProperty $Networkadaptern.Name -DisplayName "Wait for Link" -DisplayValue "Auto Detect" -NoRestart
		Restart-NetAdapter ($Networkadapter.Name)
	}
}

Set-ExecutionPolicy Restricted