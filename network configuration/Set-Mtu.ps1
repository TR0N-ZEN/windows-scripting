$number = 1235
$transmissionFailed = $TRUE
$networkadapters = netsh interface ipv4 show interfaces
$ethernetadapters = @()

foreach ($networkadapter in $networkadapters) {
    if ($networkadapter.Contains("Ethernet")) {
        $ethernetadapters += $networkadapter.Substring(1,2).Trim()
    }
}

foreach ($ethernetadapter in $ethernetadapters) {
    Write-Output "-----------------------"
    Write-Output "Ethernetadapter IDX: $ethernetadapter"
    Write-Output "-----------------------"
    do {
        $transmissionStatusping = ping www.dslreports.com -f -l $number
        $loss = $transmissionStatusping[9].Substring(5, $transmissionStatusping[9].IndexOf("V") - 6)
        Write-Output "MTU: $number -> $loss Paketverlust"
        if ($loss -eq "0%") {
            $mtu = $number + 28
            netsh interface ipv4 set subinterface $ethernetadapter mtu=$mtu store=persistent
            netsh interface ipv4 show subinterface $ethernetadapter
            $transmissionFailed = $FALSE
        }
        $number--
    } while($transmissionFailed)
    $number++
}