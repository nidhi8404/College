set ns [new Simulator]

set nf [open out.nam w]
$ns namtrace-all $nf

proc finish {} {
	global ns nf
	$ns flush-trace
	close $nf
	exec nam out.nam &
	exit 0
}

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

$ns duplex-link $n0 $n1 2Mb 10ms DropTail
$ns duplex-link $n1 $n2 2Mb 10ms DropTail
$ns duplex-link $n2 $n3 2Mb 10ms DropTail
$ns duplex-link $n3 $n0 2Mb 10ms DropTail

set tcp [new Agent/TCP]
$ns attach-agent $n0 $tcp

set udp [new Agent/UDP]
$ns attach-agent $n2 $udp

set sink [new Agent/TCPSink]
$ns attach-agent $n1 $sink

set null [new Agent/Null]
$ns attach-agent $n3 $null

set ftp [new Application/FTP]
$ftp attach-agent $tcp

set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp

$ns connect $tcp $sink
$ns connect $udp $null

$ns at 0.1 "$ftp start"
$ns at 0.2 "$cbr start"
$ns at 0.8 "$ftp stop"
$ns at 0.9 "$cbr stop"
$ns at 1.0 "finish"

$ns run
