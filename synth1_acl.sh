#R1
acl mes_reseaux src 192.0.2.0/24
#R2
acl acces_spachnat dstdomain www1.spachnat.com 
http_access deny acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access deny acces_spachnat2
acl acces_fakebooc dstdomain www.fakebooc.com 
http_access deny acces_fakebooc
acl acces_tendir dstdomain tendir.com 
http_access deny acces_tendir
acl acces_lorie dstdomain www.lorieforever.fr
http_access deny acces_lorie

#R3
acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access deny fichier_exe

systemctl restart squid.service 
systemctl status squid.service 