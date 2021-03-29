#R7
acl the_reseaux src 198.51.100.0/24
cd /etc/squid/
htpasswd -m users.txt white < vitrygtr
/usr/lib/squid3/basic_ncsa_auth users.txt < white vitrygtr
htpasswd -m users.txt pinkman < vitrygtr
/usr/lib/squid3/basic_ncsa_auth users.txt < pinkman vitrygtr

auth_param basic program /usr/lib/squid3/basic_ncsa_auth /etc/squid/users.txt 
acl authentif_necessaire proxy_auth REQUIRED
#FW
./enable.sh
