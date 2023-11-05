# Set-WindowsSearchSetting -EnableWebResultsSetting $false -EnableMeteredWebResultsSetting $false -SearchExperienceSetting NotPersonalized -SafeSearchSetting Off

$service_to_be_disabled = @(
  'AppVClient',
  'AxInstSV',
  # 'bthserv',
  'CscService',
  'dmwappushservice',
  'DoSvc',
  'DusmSvc',
  'FrameServer',
  'IBMPMSVC',
  'icssvc',
  'lfsvc',
  'lltdsvc',
  'MapsBroker',
  'NetTcpPortSharing',
  'OneSyncSvc_8aed0',
  'PhoneSvc',
  'QWAVE',
  'RasAuto',
  'RasMan',
  'RemoteAccess',
  'RmSvc',
  'SCardSvr',
  'ScDeviceEnum',
  'SEMgrSvc',
  'SensorDataService',
  'SensorService',
  'SensrSvc',
  'SharedAccess',
  'SSDPSRV',
  'stisvc',
  'TabletInputService',
  # 'TokenBroker',
  'tzautoupdate',
  'UevAgentService',
  'upnphost',
  'UserDataSvc',
  'VaultSvc',
  'WalletService',
  'WbioSrvc',
  'WbioSrvc',
  'WiaRpc',
  'wisvc'
  'WSearch'
  # 'XblAuthManager',
  # 'XblGameSave',
  # 'XboxGipSvc',
  # 'XboxNetApiSvc'
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
