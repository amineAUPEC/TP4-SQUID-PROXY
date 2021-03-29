#R4
acl pausemidi time 12 :00-14:00
acl acces_spachnat dstdomain www1.spachnat.com 
http_access access acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access access acces_spachnat2
acl acces_kaceboof dstdomain www.kaceboof.fr 
http_access access acces_kaceboof
acl acces_tendir dstdomain tendir.com 
http_access access acces_tendir
acl acces_lorie dstdomain www.lorieforever.fr
http_access access acces_lorie

#R5
acl my_reseaux src 192.0.2.50

acl acces_spachnat dstdomain www1.spachnat.com 
http_access access acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access access acces_spachnat2
acl acces_kaceboof dstdomain www.kaceboof.fr 
http_access access acces_kaceboof
acl acces_tendir dstdomain tendir.com 
http_access access acces_tendir
acl acces_lorie dstdomain www.lorieforever.fr
http_access access acces_lorie

acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access access fichier_exe

#R6
acl reseaux src 192.0.2.42
acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access access fichier_exe

sudo ./proxycheck.sh




ip a flush dev eth0
ip a add 192.0.2.50/42 dev eth0
ip a del 192.0.2.50/42 dev eth0
ip a add 192.0.2.42/42 dev eth0
ip a del 192.0.2.42/42 dev eth0

sudo ifdown eth0 && sudo ifup eth0 && sudo gedit /etc/network/interfaces

ip a add 192.0.2.100/42 dev eth0

