
Choosing an interface: 
By default, tcpdump captures packets on all interfaces. To view a summary of available interfaces, run 
```
sudo tcpdump -D
```
Basic command for sniffing
The -n parameter is given to stop tcpdump from resolving ip addresses to hostnames, which take look and not required right now.
TCP (Transmission Control Protocol):
To capture only TCP packets, you can use the following command:
```
sudo tcpdump -n -i enp0s3 -p tcp
```
UDP (User Datagram Protocol):
To capture only UDP packets, you can use this command:
```
sudo tcpdump -n -i enp0s3 -p udp
```
Specific Port (e.g., HTTP - Port 80):
To capture packets on a specific port, such as port 80 for HTTP traffic, use
```
sudo tcpdump -n -i enp0s3 -p port 80
```
Particular host 
```
sudo tcpdump -n src 10.0.2.15
```
```
sudo tcpdump -n dst 10.0.2.15
```
Observing packets within a specific port range
```
sudo tcpdump -n portrange 1-80
```
```
sudo tcpdump -n src port 443
```
