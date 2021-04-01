## means deprecated code

$number = 1235
$transmissionFailed = $TRUE
##$networkadapters = netsh interface ipv4 show interfaces
$networkadapters = Get-NetAdapter
$ethernetadapters_IDX = @()

foreach ($networkadapter in $networkadapters.Name){
##foreach ($networkadapter in $networkadapters) {
    if ($networkadapter.Contains("Ethernet")) {
        ##$ethernetadapters_IDX += $networkadapter.Substring(1,2).Trim()
        $ethernetadapters_IDX += $networkadapter.ifIndex;
    }
}

foreach ($ethernetadapter_IDX in $ethernetadapters_IDX) {
    Write-Output "-----------------------"
    Write-Output "Ethernetadapter IDX: $ethernetadapter_IDX"
    Write-Output "-----------------------"
    do {
        $transmissionStatusping = ping www.dslreports.com -f -l $number
        $loss = $transmissionStatusping[9].Substring(5, $transmissionStatusping[9].IndexOf("V") - 6)
        Write-Output "MTU: $number -> $loss Paketverlust"
        if ($loss -eq "0%") {
            $mtu = $number + 28
            netsh interface ipv4 set subinterface $ethernetadapter_IDX mtu=$mtu store=persistent
            netsh interface ipv4 show subinterface $ethernetadapter_IDX
            $transmissionFailed = $FALSE
        }
        $number++
    } while($transmissionFailed)
    $number = 1235;
}