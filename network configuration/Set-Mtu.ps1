$number = 1500
$transmissionFailed = true

netsh interface ipv4 show interfaces

while ($transmissionFailed) {
    ping www.dslreports.com -f -l $number > $transmissionStatus
    echo $transmissionStatus
    if (false) {
      echo "next Test"  
    } else {
        netsh interface ipv4 set subinterface $idx mtu=$number store=persistent
        echo "end"
    }
}
