#R4
acl pausemidi time 12:00-14:00
acl acces_spachnat dstdomain www1.spachnat.com 
http_access access acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access access acces_spachnat2
acl acces_fakebooc dstdomain www.fakebooc.com 
http_access access acces_fakebooc
acl acces_tendir dstdomain tendir.com 
http_access access acces_tendir
acl acces_lorie dstdomain www.lorieforever.fr
http_access access acces_lorie

#R5
acl my_reseaux src 192.0.2.50
:
acl acces_spachnat dstdomain www1.spachnat.com 
http_access access acces_spachnat
acl acces_spachnat2 dstdomain www2.spachnat.com
http_access access acces_spachnat2
acl acces_fakebooc dstdomain www.fakebooc.com 
http_access access acces_fakebooc
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


systemctl restart squid.service 
systemctl status squid.service 