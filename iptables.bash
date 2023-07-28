#!/bin/bash
iptables -t nat -F
iptables -F
iptables -t nat -A POSTROUTING -o wlan1 -j MASQUERADE
iptables -A FORWARD -i wlan0 -o wlan1 -j ACCEPT
echo '1'>/proc/sys/net/ipv4/ip_forward
