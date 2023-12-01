## Lab 11

- Name: John Gantner
- Email: gantner.6@wright.edu

## Part 1 Answers

1. Hostname of the device: `LAPTOP-FUJOMH5E`
2. MAC address of the NIC connected to the network: `9C-29-76-BF-0B-D0`
3. IP address: `192.168.4.33`
4. Subnet mask: `255.255.252.0`
5. Gateway address: `192.168.4.1`
6. DHCP server address: `192.168.4.1`
7. DNS server address: `206.225.75.225 and 206.225.75.226`
8. Public IP used for communications outside subnet: `208.38.225.50`

## Part 2 Answers

1. `tcpdump` command: `sudo tcpdump -i any -c 100 -w capture_output.pcap`

   - How many packets were captured?`60 packets were captured.`
   - Looking through the output, what traffic are you seeing? `When I run my tcpdump command I see that the data link type is LINUX_SLL2. It's listening on any meaning its capturing traffic on all available interfaces. The snapshot length is 262144 bytes while the number of packets dropped by kernel was 0 and there were 61 packets recieved by filter.`

2. Fancy `tcpdump` command: `sudo tcpdump -i eth0 -n host www.google.com -A`

3. Capturing `google.com` traffic: `sudo tcpdump -i eth0 -w http_capture.pcap 'host www.google.com', sudo tcpdump -i eth0 -w https_capture.pcap 'host www.google.com'`
   - Was there a difference in output from `curl` when using `http` or `https`? `The difference is that there is encryption in https, The actual data exchanged in an https request is encrypted, while http communication is in plain text and can be viewed in the terminal.`
   - Was there a difference in packet content in `tcpdump` when using `http` or `https`? `Yes, there was a difference due to the encryption applied in HTTPS.`
   - What caused the difference? `The cause of the difference is the security implemented for HTTPS.`
4. Save capture to a file:
- `sudo tcpdump -i eth0 -w google_traffic_capture.pcap 'host 172.217.166.196'`
  
Read capture from a file:
- `tcpdump -r google_traffic_capture.pcap`

   Don't forget to `commit` and `push` your capture to your `Lab11` folder.

## Part 3 Answers

1. Command(s) to install `python3` and `pip3`: `sudo apt update, sudo apt install python3, sudo apt install python3-pip`
2. Run web server with `index.html` contents in your folder: python3 -m http.server 9000
3. Confirm content is being served:
   - Using `localhost`: `curl http://localhost:9000`
   - Using the system's private IP: `ip a`
   - Using the system's public IP: `curl ipinfo.io`
4. What's playing? `Never Gonna Give You Up - Rick Astley`
5. Command to show `LISTEN`ing processes: `sudo lsof -i -P -n | grep LISTEN`
6. Command to `kill`: `kill <PID>`
