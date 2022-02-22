# Get-ChildItem -Path HKCU:\ -Recurse
$wd = Get-Location

Set-Location -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Video\{2DE2F821-51F6-11EC-B3A5-A20783786F75}\0000"
$Names = 'DisableAllClockGating', 'DisableGfxCGPowerGating', 'DisableCpPowerGating', 'DisableStaticGfxMGPowerGating', 'DisableCailLoadUcode', 'DisableSAMUPowerGating', 'DisablePowerGating', 'DisablePCIConfigAsicReset', 'DisableDynamicGfxMGPowerGating', 'DisableRlcSmuPGHandshake', 'DisableSysClockGating', 'DisableGfxClockGating', 'SMU_DisableMmhubPowerGating', 'DisableFBCSupport'

foreach ($Name in $Names)
{
	Set-ItemProperty -Path . -Name $Name -Value 1
	echo $Name (Get-ItemProperty -Path . -Name $Name).$Name
}

Set-Location $wd

# (DWORD) DisableFBCSupport - Power Saving Feature, Frame Buffer Compression
# (DWORD) EnableUlps - Ultra Low Power State, Sleep Function Notebook Discrete GPU
# (DWORD) PP_ThermalAutoThrottlingEnable - As Mentioned in Name
# (DWORD) PP_SclkDeepSleepDisable - Fixes HDMI Dropout if enable this value
# (DWORD) PP_DriverEnableNBDPM - Windows based Power Saving Feature?
# (DWORD) PP_DisableVoltageIsland - Vega Voltage Control?
# (DWORD) PP_GPUPowerDownEnabled - Same as ULPS?
# (DWORD) EnableAspmL0s / EnableAspmL1 - Active State Power Management
# (DWORD) EnableLBPWSupport - Power Saving Feature Load Balancing Per Watt