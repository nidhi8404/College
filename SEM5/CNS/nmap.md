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
