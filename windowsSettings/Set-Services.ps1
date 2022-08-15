# Set-WindowsSearchSetting -EnableWebResultsSetting $false -EnableMeteredWebResultsSetting $false -SearchExperienceSetting NotPersonalized -SafeSearchSetting Off
# Stop-Service -Name WSearch
Set-Service -Name WSearch  -StartupType Disabled -Status Stopped
Set-Service XboxGipSvc     -StartupType Disabled
Set-Service XboxNetApiSvc  -StartupType Disabled
Set-Service SEMgrSvc       -StartupType Disabled
#cool piping syntax
#Get-Service -Name 'SEMMgrSvc' | Stop-Service

Set-Service AxInstSV -StartupType Disabled
Set-Service tzautoupdate -StartupType Disabled
Set-Service bthserv -StartupType Disabled
Set-Service dmwappushservice -StartupType Disabled
Set-Service MapsBroker -StartupType Disabled
Set-Service lfsvc -StartupType Disabled
Set-Service SharedAccess -StartupType Disabled
Set-Service lltdsvc -StartupType Disabled
Set-Service AppVClient -StartupType Disabled
Set-Service NetTcpPortSharing -StartupType Disabled
Set-Service CscService -StartupType Disabled
Set-Service PhoneSvc -StartupType Disabled
Set-Service Spooler -StartupType Disabled
Set-Service PrintNotify -StartupType Disabled
Set-Service QWAVE -StartupType Disabled
Set-Service RmSvc -StartupType Disabled
Set-Service RemoteAccess -StartupType Disabled
Set-Service SensorDataService -StartupType Disabled
Set-Service SensrSvc -StartupType Disabled
Set-Service SensorService -StartupType Disabled
Set-Service ShellHWDetection -StartupType Disabled
Set-Service SCardSvr -StartupType Disabled
Set-Service ScDeviceEnum -StartupType Disabled
Set-Service SSDPSRV -StartupType Disabled
Set-Service WiaRpc -StartupType Disabled
Set-Service TabletInputService -StartupType Disabled
Set-Service upnphost -StartupType Disabled
Set-Service UserDataSvc -StartupType Disabled
Set-Service UevAgentService -StartupType Disabled
Set-Service WalletService -StartupType Disabled
Set-Service FrameServer -StartupType Disabled
Set-Service stisvc -StartupType Disabled
Set-Service wisvc -StartupType Disabled
Set-Service icssvc -StartupType Disabled
Set-Service XblAuthManager -StartupType Disabled
Set-Service XblGameSave -StartupType Disabled