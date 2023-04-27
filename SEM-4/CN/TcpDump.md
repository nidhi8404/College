## To install TcpDump
```
$ sudo apt-get install tcpdump
```

## Choosing an interface:
By default, tcpdump captures packets on all interfaces. To view a summary of 
available interfaces
```
tcpdump -D
```

## Basic command for sniffing
```
# tcpdump -n
```

## Capturing traffic from particular *HOST
```
# tcpdump -n src 172.16.92.1
```
```
# tcpdump -n dst 172.16.92.1
```

## Capturing traffic from particular *PORT*
```
# tcpdump -n port 80
```
## Writing Captures to a File
```
# tcpdump port 80 -w capture_file
```
