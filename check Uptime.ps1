$a = Get-ComputerInfo
$b = $a.OsUptime;
if ($b.Hours -eq 1 -and $b.Minutes -ge 30 -or $b.Hours -ge 2) {
    shutdown -s -t 360
}