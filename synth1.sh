ifdown eth0
ifup eth0
./fwcheck.sh
rm /var/www/html/index.html && echo superman > /var/www/html/kikoulol.exe
gedit /etc/hosts 
www.kaceboof.com 198.51.100.42
www1.spachnat.com 198.51.100.42
www2.spachnat.com 198.51.100.42
tendir.com 198.51.100.42
www.lorieforever.fr 198.51.100.42
www.gogleo.fr 198.51.100.42
www.delichoc.fr 198.51.100.42
delichoc-my.shorepaint.com 198.51.100.42
 
 cp /etc/squid/squid.conf /home/etudiant/
echo http_port 3128 >> /etc/squid/squid.conf
systemctl restart squid  && gedit /etc/squid/squid.conf
navig : 192.0.2.2 3128
#R1
acl mes_reseaux src 192.0.2.0/24
#R2
acl acces_spachnat dstdomain www1.spachnat.com 
http_access deny acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access deny acces_spachnat2
acl acces_kaceboof dstdomain www.kaceboof.fr 
http_access deny acces_kaceboof
acl acces_tendir dstdomain tendir.com 
http_access deny acces_tendir
acl acces_lorie dstdomain www.lorieforever.fr
http_access deny acces_lorie

#R3
acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access deny fichier_exe

systemctl status squid.service && gedit /var/log/squid/access.log && gedit /var/log/squid/cache.log
chmod u+x *.sh && ./proxycheck.sh
