#!/bin/bash
iptables -F
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

LANIF=eth1
EXTIF=eth2
LANNET=192.0.2.0/24
EXTNET=198.51.100.0/24
echo "Chaine INPUT"
echo "Chaine OUTPUT"
echo "Chaine FORWARD"
iptables -A FORWARD -s $LANNET -d $EXTNET -p tcp --dport 80 -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED -j ACCEPT
