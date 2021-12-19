$wd = Get-Location

Set-Location -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Video\{2DE2F821-51F6-11EC-B3A5-A20783786F75}\0000"

Set-ItemProperty -Path . -Name 'EnableUlps' -Value 0

Set-Location $wd

