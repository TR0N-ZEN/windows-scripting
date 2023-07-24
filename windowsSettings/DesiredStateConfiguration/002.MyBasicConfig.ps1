Configuration MyBasicConfig {

    # https://learn.microsoft.com/de-de/powershell/dsc/concepts/import-dscresource?view=dsc-2.0
    Import-DscResource -ModuleName PSDscResources -Name Registry, WindowsFeature

    $mysid = (New-Object System.Security.Principal.NTAccount([Environment]::Getenvironmentvariable('USERNAME'))).Translate([System.Security.Principal.SecurityIdentifier]).value

    # The Node statement specifies which targets this configuration will be applied to.

    Node "localhost" {
        WindowsFeature MyFeatureInstance {
            Ensure = 'Present'
            Name = 'RSAT'
        }
        Registry DisableOnlineSpeechPrivacyandRecognition {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy"
            ValueName   = "HasAccepted"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableCortanaTaskbar {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "CortanaEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableCortanaBingWebSearch {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "BingSearchEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DoNotGiveCortanaConsent {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "CortanaConsent"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableCortanaSearch {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
            ValueName   = "AllowCortana"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableCortanaWebSearch {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
            ValueName   = "DisableWebSearch"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableAdvertisingInfo {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
            ValueName   = "Enabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableInfoByLanguageList {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Control Panel\International\User Profile"
            ValueName   = "HttpAcceptLanguageOptOut"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableAppLaunchTracking {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            ValueName   = "Start_TrackProgs"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableSuggestedContent1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338393Enabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableSuggestedContent2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338394Enabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableSuggestedContent3 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338396Enabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry ShowFileExtensions {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            ValueName   = "HideFileExt"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableNarrator1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows NT\CurrentVersion\AccessibilityTemp"
            ValueName   = "narrator"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableNarrator2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Narrator\NoRoam"
            ValueName   = "RunningState"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableAutoCorrect {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableAutocorrection"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableSpellChecking {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableSpellchecking"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableTypePrediction {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableTextPrediction"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableSpaceInsertPrediction {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnablePredictionSpaceInsertion"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableDoubleTapSpace {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableDoubleTapSpace"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableTypingInsights1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Input\Settings"
            ValueName   = "InsightsEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableTypingInsights2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Input\Settings"
            ValueName   = "Insights"
            ValueData   = "01000000071de8c131cc8360a3d6d9c1330a686b165aba2e235f5a5c"
            ValueType = "Binary
            Force = $true"
        }
        Registry DisableSwiftKeySuggestionsLangEnglishUS {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableInkingWithTouch"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableAutoPlay {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers"
            ValueName   = "DisableAutoplay"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingAudioCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "AudioCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingHistoricalCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "HistoricalCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingCursorCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "CursorCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingBroadcasting1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "AudioCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingBroadcasting2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "MicrophoneCaptureEnabledByDefault"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingBroadcasting3 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "CursorCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableGamingBroadcasting4 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "CameraCaptureEnabledByDefault"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableLoginBackgroundImageonLockScreen {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SystemProtectedUserData\${mysid}\AnyoneRead\LockScreen\"
            ValueName   = "HideLogonBackgroundImage"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableOneDriveStartUp {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run"
            ValueName   = "OneDrive"
            ValueData   = "0100000004077640378fd401"
            ValueType = "Binary
            Force = $true"
        }
        Registry DisableShowPeopleOnTaskbar {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
            ValueName   = "PeopleBand"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableBackgroundApps1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "BackgroundAppGlobalToggle"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableBackgroundApps2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications"
            ValueName   = "GlobalUserDisabled"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableFastBoot {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Power"
            ValueName   = "HiberbootEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableShowSleep {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings"
            ValueName   = "ShowSleepOption"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableShowHibernate {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings"
            ValueName   = "ShowHibernateOption"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableCloudSearch {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
            ValueName   = "AllowCloudSearch"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableDeliveryOptDownloadOtherPCs1 {
            Ensure = "Present"
            Key = "HKEY_USERS\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings"
            ValueName   = "DownloadMode"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableDeliveryOptDownloadOtherPCs2 {
            Ensure = "Present"
            Key = "HKEY_USERS\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings"
            ValueName   = "DownloadModeProvider"
            ValueData   = "8"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableFindMyDevice {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Settings\FindMyDevice"
            ValueName   = "LocationSyncEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic1 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
            ValueName   = "AllowTelemetry"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic2 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
            ValueName   = "MaxTelemetryAllowed"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic3 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack"
            ValueName   = "UploadPermissionReceived"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic4 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack"
            ValueName   = "DiagTrackAuthorization"
            ValueData   = "775"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic5 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack"
            ValueName   = "DiagTrackStatus"
            ValueData   = "2"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic6 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager"
            ValueName   = "miniTraceSlotEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DiagnosticsBasic7 {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\TraceManager"
            ValueName   = "miniTraceSlotContentPermitted"
            ValueData   = "1"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableActivityPublishing {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System"
            ValueName   = "PublishUserActivities"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableActivityUpload {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System"
            ValueName   = "UploadUserActivities"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisablePersonalizationTransparencyEffect {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
            ValueName   = "EnableTransparency"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableTailoredExperiences {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Privacy"
            ValueName   = "TailoredExperiencesWithDiagnosticDataEnabled"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
        Registry DisableFeedbackFrequency {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Siuf\Rules"
            ValueName   = "NumberOfSIUFInPeriod"
            ValueData   = "0"
            ValueType = "Dword"
            Force = $true
        }
    }
}

MyBasicConfig

# Set-ExecutionPolicy Restricted