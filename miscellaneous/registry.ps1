# Get-ChildItem -Path HKCU:\ -Recurse
$wd = Get-Location

Set-Location -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Video\{2DE2F821-51F6-11EC-B3A5-A20783786F75}\0000"
$Names = 'DisableAllClockGating', 'DisableGfxCGPowerGating', 'DisableCpPowerGating', 'DisableStaticGfxMGPowerGating', 'DisableCailLoadUcode', 'DisableSAMUPowerGating', 'DisablePowerGating', 'DisablePCIConfigAsicReset', 'DisableDynamicGfxMGPowerGating', 'DisableRlcSmuPGHandshake', 'DisableSysClockGating', 'DisableGfxClockGating'

foreach ($Name in $Names)
{
	Set-ItemProperty -Path . -Name $Name -Value 1
	echo $Name (Get-ItemProperty -Path . -Name $Name).$Name
}

Set-Location $wd