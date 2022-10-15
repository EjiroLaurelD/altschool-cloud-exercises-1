# Exercise 10
## Networking
### What is the Network IP, number of hosts, range of IP addresses, and broadcast IP from this subnet - 193.16.20.35/29?  
1. /29 => 11111111.11111111.11111111.11111000
2. The IP address in binary form is => 11000001.00010000.00010100.00100011  
3. To find the network IP, the bitwise & operator will be used to multiply the IP address and subnet mask in binary form.  
```bash
    11000001.00010000.00010100.00100011
   &
    11111111.11111111.11111111.11111000
    ______________________________________
    11000001. 00010000. 00010100. 00100000
```
4. Converting 11000001.00010000.00010100.00100000 from binary back to decimal equals `193.16.20.32`. Therefore `193.16.20.32` is the network IP.  
5. The formular to find the number of hosts is   
```bash
    2^n
```
where n = number of host bits(zero bits) in the subnet mask.  
```bash
    2^3 = 8
```
We have 8 hosts but not all the hosts are usable. This is because the first IP is reserved as the network IP and the last IP is the broadcast IP. To find the number of usable hosts  
```bash
    2^n - 2
    2^3 - 2 = 6
```
Therefore there are `6 hosts` in the subnet.  
6. The range of IP addresses:  
```bash
    193.16.20.33
    193.16.20.34
    193.16.20.35
    193.16.20.36
    193.16.20.37
    193.16.20.38
```
7. The broadcast IP is `193.16.20.39`