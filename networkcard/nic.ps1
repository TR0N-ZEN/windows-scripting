Set-ExecutionPolicy Unrestricted
Set-NetAdapterAdvancedProperty * -DisplayName "Flow Control"-DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Interrupt Moderation" -DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "IPv4 Checksum Offload V2 (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "IPsec Offload" -DisplayValue "Auth Header & ESP Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Jumbo Packet" -DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Large Send Offload V2 (IPv4)" -DisplayValue "Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Large Send Offload V2 (IPv6)" -DisplayValue "Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Max number of RSS Processors" -DisplayValue "4" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Preferred NUMA node" -DisplayValue "System Default" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Maximum Number of RSS Queues" -DisplayValue "2 Queues" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Priority & VLAN" -DisplayValue "Priority & VLAN Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Receive Buffers" -DisplayValue "256" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Receive Side Scaling" -DisplayValue "Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Speed & Duplex" -DisplayValue "100 Mbps Half Duplex" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "SR-IOV" -DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "TCP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "TCP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Transmit Buffers" -DisplayValue "128" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "UDP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "UDP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Virtual Machine Queues" -DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Interrupt Moderation Rate" -DisplayValue "Disabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Log Link State Event" -DisplayValue "Enabled" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Gigabit Master Slave Mode" -DisplayValue "Auto Detect" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Locally Administered Address" -DisplayValue "" -NoRestart
Set-NetAdapaterAdvancedProperty * -DisplayName "Wait for Link" -DisplayValue "Auto Detect" -NoRestart
Restart-NetAdapter *
Set-ExecutionPolicy Restricted