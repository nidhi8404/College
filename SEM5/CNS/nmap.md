TCP Port Scan (Discover Open Ports):
To scan a host for open TCP ports (e.g., scan host at IP 192.168.1.100)
```
nmap -p 10.0.2.15
```
UDP Port Scan (Discover Open UDP Ports):
To scan a host for open UDP ports:
```
nmap -sU -p 10.0.2.15
sudo nmap -sU -p 1-65535 10.0.2.15
```
OS Fingerprinting:
To perform OS fingerprinting along with a port scan
```
nmap -A 10.0.2.15
```
Scan Multiple Hosts (Subnet Scan):
To scan multiple hosts within a subnet
```
nmap -sn 10.0.2.0/24
```
Save Output to a File:
To save the scan results to a file (e.g., in XML format):
```
nmap -oX scan_results.xml 192.168.1.100
```
TCP Sync
The Nmap command you ran is a TCP SYN scan (-sS) targeting the IP address 10.0.2.15 on ports 1 through 100 (-p 1-100). The output of the scan indicates the following information:

Nmap scan report for nidhi-VirtualBox (10.0.2.15): This line shows the hostname (if available) and the IP address of the target host.

Host is up (0.0000020s latency).: This line indicates that the target host (10.0.2.15) is online and responsive, as Nmap was able to detect it with a very low latency.

All 100 scanned ports on nidhi-VirtualBox (10.0.2.15) are closed: Nmap has completed the scan of the specified ports and determined that all 100 ports between 1 and 100 are closed on the target host. This means that no services are actively listening on these ports, and they are not accepting incoming connections. Closed ports do not respond to the initial SYN packets sent by Nmap.

"Nmap done": This part of the line indicates that the Nmap scan has been completed.

"1 IP address": It tells you that the scan was performed on 1 IP address.

"(1 host up)": This part informs you that Nmap found 1 host that was online and responsive during the scan. In this case, the target host at IP address 10.0.2.15 was detected as "up," meaning it was reachable on the network.

"scanned in 0.08 seconds": The line concludes by providing the total duration of the scan, which, in your case, took 0.08 seconds to complete.

```
sudo nmap -sS -p 1-100 10.0.2.15
```
```
sudo nmap -sS -p 1-100 10.0.2.15
[sudo] password for nidhishinde: 
Starting Nmap 7.80 ( https://nmap.org ) at 2023-10-29 23:09 IST
Nmap scan report for nidhi-VirtualBox (10.0.2.15)
Host is up (0.0000020s latency).
All 100 scanned ports on nidhi-VirtualBox (10.0.2.15) are closed

Nmap done: 1 IP address (1 host up) scanned in 0.08 seconds
```


Alternate :
sudo nmap -sU google.com(for udp)
