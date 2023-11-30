## Lab 11

- Name: John Gantner
- Email: gantner.6@wright.edu

## Part 1 Answers

1. Hostname of the device: `LAPTOP-FUJOMH5E`
2. MAC address of the NIC connected to the network: `0A-00-27-00-00-07`
3. IP address: `192.168.4.33`
4. Subnet mask: `255.255.252.0`
5. Gateway address: `fe80::6697:14ff:fe25:d892%12, 192.168.4.1`
6. DHCP server address: `192.168.4.1`
7. DNS server address: `206.225.75.225, 206.225.75.226`
8. Public IP used for communications outside subnet: `208.38.225.50`

## Part 2 Answers

1. `tcpdump` command:

   - How many packets were captured?`37 packets were captured.`
   - Looking through the output, what traffic are you seeing? `I see different types of network traffic, including SSH communication, ARP requests and replies, NTP communication, attempted connections on different ports, and communication attempts with external IPs.`

2. Fancy `tcpdump` command: `sudo tcpdump -i eth0 -n host www.google.com -A`

3. Capturing `google.com` traffic: `sudo tcpdump -i eth0 -w http_capture.pcap 'port 80', sudo tcpdump -i eth0 -w https_capture.pcap 'port 443'`
   - Was there a difference in output from `curl` when using `http` or `https`? `The difference is that there is encryption in https, The actual data exchanged in an https request is encrypted, while http communication is in plain text and can be viewed in the terminal.`
   - Was there a difference in packet content in `tcpdump` when using `http` or `https`?
   - What caused the difference?
4. Save capture to a file:
`Saving HTTP capture to a file: sudo tcpdump -i eth0 -w http_capture.pcap 'port 80'`

`Saving HTTPS capture to a file: sudo tcpdump -i eth0 -w https_capture.pcap 'port 443'`

Read capture from a file:
`Reading HTTP capture from file: tcpdump -r http_capture.pcap`

`Reading HTTPS capture from file: tcpdump -r https_capture.pcap`

   Don't forget to `commit` and `push` your capture to your `Lab11` folder.

## Part 3 Answers

1. Command(s) to install `python3` and `pip3`: `sudo apt update, sudo apt install python3, sudo apt install python3-pip`
2. Run web server with `index.html` contents in your folder:
3. Confirm content is being served:
   - Using `localhost`:
   - Using the system's private IP:
   - Using the system's public IP:
4. What's playing?
5. Command to show `LISTEN`ing processes:
6. Command to `kill`:
