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
        }
        Registry DisableCortanaTaskbar {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "CortanaEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableCortanaBingWebSearch {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "BingSearchEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DoNotGiveCortanaConsent {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
            ValueName   = "CortanaConsent"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableCortanaSearch {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
            ValueName   = "AllowCortana"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableCortanaWebSearch {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
            ValueName   = "DisableWebSearch"
            ValueData   = "1"
            ValueType = "Dword"
        }
        Registry DisableAdvertisingInfo {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
            ValueName   = "Enabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableInfoByLanguageList {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Control Panel\International\User Profile"
            ValueName   = "HttpAcceptLanguageOptOut"
            ValueData   = "1"
            ValueType = "Dword"
        }
        Registry DisableAppLaunchTracking {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            ValueName   = "Start_TrackProgs"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableSuggestedContent1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338393Enabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableSuggestedContent2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338394Enabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableSuggestedContent3 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
            ValueName   = "SubscribedContent-338396Enabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry ShowFileExtensions {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            ValueName   = "HideFileExt"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableNarrator1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows NT\CurrentVersion\AccessibilityTemp"
            ValueName   = "narrator"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableNarrator2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Narrator\NoRoam"
            ValueName   = "RunningState"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableAutoCorrect {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableAutocorrection"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableSpellChecking {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableSpellchecking"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableTypePrediction {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableTextPrediction"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableSpaceInsertPrediction {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnablePredictionSpaceInsertion"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableDoubleTapSpace {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableDoubleTapSpace"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableTypingInsights1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Input\Settings"
            ValueName   = "InsightsEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableTypingInsights2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Input\Settings"
            ValueName   = "Insights"
            ValueData   = "01000000071de8c131cc8360a3d6d9c1330a686b165aba2e235f5a5c"
            ValueType = "Binary"
        }
        Registry DisableSwiftKeySuggestionsLangEnglishUS {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\TabletTip\1.7"
            ValueName   = "EnableInkingWithTouch"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableAutoPlay {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers"
            ValueName   = "DisableAutoplay"
            ValueData   = "1"
            ValueType = "Dword"
        }
        Registry DisableGameBar {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\System\GameConfigStore"
            ValueName   = "GameDVR_Enabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGameBarControllerShortcut {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\GameBar"
            ValueName   = "UseNexusForGameBarEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingAudioCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "AudioCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingHistoricalCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "HistoricalCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingCursorCaptures {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\GameDVR"
            ValueName   = "CursorCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingBroadcasting1 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "AudioCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingBroadcasting2 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "MicrophoneCaptureEnabledByDefault"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingBroadcasting3 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "CursorCaptureEnabled"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableGamingBroadcasting4 {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\AppBroadcast\GlobalSettings"
            ValueName   = "CameraCaptureEnabledByDefault"
            ValueData   = "0"
            ValueType = "Dword"
        }
        Registry DisableLoginBackgroundImageonLockScreen {
            Ensure = "Present"
            Key = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\SystemProtectedUserData\${mysid}\AnyoneRead\LockScreen\"
            ValueName   = "HideLogonBackgroundImage"
            ValueData   = "1"
            ValueType = "Dword"
        }
        Registry DisableOneDriveStartUp {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run"
            ValueName   = "OneDrive"
            ValueData   = "0100000004077640378fd401"
            ValueType = "Binary"
        }
        Registry DisableShowPeopleOnTaskbar {
            Ensure = "Present"
            Key = "HKEY_USERS\${mysid}\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
            ValueName   = "PeopleBand"
            ValueData   = "0"
            ValueType = "Dword"
        }
    }
}

MyBasicConfig

# Set-ExecutionPolicy Restricted