# set highPrecisionEventTimer for using hardware highPrecisionEventTimer and not windows' software highPrecisionEventTimer  
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformclock No
bcdedit /set disabledynamictick Yes
bcdedit /set useplatformtick Yes
