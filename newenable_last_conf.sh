#!/bin/bash
iptables -F
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

LANIF=eth1
# EXTIF=eth2
LANNET=192.0.2.0/24
EXTNET=198.51.100.0/24
EXTIF=eth0
LANNET=192.0.2.2
EXTNET=172.16.110.5


echo "Chaine INPUT"
echo "Chaine OUTPUT"
echo "Chaine FORWARD"


# rajouter les règles IPtables du TP1

iptables -A FORWARD -s $LAN -d $EXT -p tcp --sport 3128--dport 80 -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED -j ACCEPT




iptables -t nat -A POSTROUTING -o $EXTIF -s 192.0.2.100 -j MASQUERADE
iptables -t nat -A POSTROUTING -o $EXTIF -s 203.0.113.0/24 -j MASQUERADE