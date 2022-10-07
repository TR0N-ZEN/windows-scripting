# Set-WindowsSearchSetting -EnableWebResultsSetting $false -EnableMeteredWebResultsSetting $false -SearchExperienceSetting NotPersonalized -SafeSearchSetting Off

$service_to_be_disabled = @(
  'WSearch',
  'AxInstSV',
  'FrameServer',
  'tzautoupdate',
  'bthserv',
  'dmwappushservice',
  'MapsBroker',
  'lfsvc',
  'SharedAccess',
  'lltdsvc',
  'AppVClient',
  'NetTcpPortSharing',
  'CscService',
  'PhoneSvc',
  # 'Spooler',
  # 'PrintNotify',
  'QWAVE',
  'RmSvc',
  'RemoteAccess',
  'SensorDataService',
  'SensrSvc',
  'SensorService',
  # 'ShellHWDetection',
  'SCardSvr',
  'ScDeviceEnum',
  'SSDPSRV',
  'WiaRpc',
  'TabletInputService',
  'upnphost',
  'UserDataSvc',
  'UevAgentService',
  'WalletService',
  'SEMgrSvc',
  'stisvc',
  'wisvc',
  'icssvc',
  'XblAuthManager',
  'XblGameSave',
  'XboxGipSvc',
  'XboxNetApiSvc'
)

foreach ($service in $service_to_be_disabled) {
    # Set-Service -Name $service -Status Stopped
    Get-Service -Name $service | Stop-Service
    Set-Service $service -StartupType Disabled
}
