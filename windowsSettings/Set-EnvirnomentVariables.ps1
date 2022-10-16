# Set-Item -Path Env:TMP -Value Z:\ego\tmp\
# Set-Item -Path Env:TEMP -Value Z:\ego\temp\
# Set-Item -Path Env:APPDATA -Value Z:\ego\AppData\

# Get-Item -Path Env:

# variable is only set for current shell session
$HOME2 = 'D:\home\ego\'

# variable is only set for current shell session
$STUDIES = 'D:\home\ego\Documents\MEGA\studies\'

# variable is only set for current shell session
[Environment]::SetEnvironmentVariable('HOME2', 'D:\home\ego\')

# permanent because it is saved to the 'User' space
[Environment]::SetEnvironmentVariable('HOME2', 'D:\home\ego\', 'User')
