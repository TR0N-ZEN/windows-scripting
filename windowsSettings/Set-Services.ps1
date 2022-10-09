# Set-WindowsSearchSetting -EnableWebResultsSetting $false -EnableMeteredWebResultsSetting $false -SearchExperienceSetting NotPersonalized -SafeSearchSetting Off

$service_to_be_disabled = @(
  'AppVClient',
  'AxInstSV',
  'CscService',
  'DoSvc',
  'DusmSvc',
  'FrameServer',
  'IBMPMSVC',
  'MapsBroker',
  'NetTcpPortSharing',
  'OneSyncSvc_8aed0',
  'PhoneSvc',
  'QWAVE',
  'RemoteAccess',
  'RmSvc',
  'SCardSvr',
  'SEMgrSvc',
  'SSDPSRV',
  'ScDeviceEnum',
  'SensorDataService',
  'SensorService',
  'SensrSvc',
  'SharedAccess',
  'TabletInputService',
  'UevAgentService',
  'UserDataSvc',
  'WSearch',
  'WalletService',
  'WbioSrvc',
  'WiaRpc',
  'XblAuthManager',
  'XblGameSave',
  'XboxGipSvc',
  'XboxNetApiSvc'
  'bthserv',
  'dmwappushservice',
  'icssvc',
  'lfsvc',
  'lltdsvc',
  'RasAuto',
  'RasMan',
  'RemoteAccess',
  'stisvc',
  'TokenBroker',
  'tzautoupdate',
  'upnphost',
  'VaultSvc',
  'WbioSrvc',
  'wisvc'
)
  # 'Spooler',
  # 'PrintNotify',
  # 'ShellHWDetection',

foreach ($service in $service_to_be_disabled) {
    # Set-Service -Name $service -Status Stopped
    Get-Service -Name $service | Stop-Service
    Set-Service $service -StartupType Disabled
}

Get-Service | where-Object Name -match Razer | Set-Service -StartupType Disabled
Get-Service | where-Object Name -match Razer | Stop-Service

Get-Service | where-Object Name -match Logi | Set-Service -StartupType Disabled
Get-Process | Where-Object Name -match Logi | Stop-Process

Get-Service | where-Object Name -match Zoom | Set-Service -StartupType Disabled
Get-Process | Where-Object Name -match Zoom | Stop-Process
