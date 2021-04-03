http_port 3128

#R5
acl ceo src 192.0.2.50
http_access allow ceo

#R6
acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
acl reseaux src 192.0.2.42
http_access access fichier_exe

#R3
acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access deny fichier_exe


#R4
acl pausemidi time 12:00-14:00
http_access allow bloque

#R2
acl bloque dstdomain www.fakebooc.com, www1.spachnat.com, www2.spachnat.com, tendir.com, www.lorieforever.fr
http_access deny bloque 

#R1
acl mes_reseaux src 192.0.2.0/24
http_access allow mes_reseaux

#R7
# acl the_reseaux src 198.51.100.0/24
acl the_reseaux src 172.16.110.0/24


auth_param basic program /usr/lib/squid3/basic_ncsa_auth /etc/squid/users.txt 
acl authentif_necessaire proxy_auth REQUIRED