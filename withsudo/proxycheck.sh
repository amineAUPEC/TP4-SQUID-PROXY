#!/bin/bash


address="www.kaceboof.fr www1.spachnat.com www2.spachnat.com tendir.com www.lorieforever.fr www.gogleo.fr www.delichoc.fr delichoc-my.shorepaint.com 198.51.100.42"

for ip in $address

do




curl --max-time 2 -f http://$ip &> /dev/null

if [ $? -eq 0 ]

then
        echo  "connecting to $ip OK"
else
        echo  "connecting to $ip FAIL"

fi
done


wget 198.51.100.42/kikoulol.exe &> /dev/null
if [ $? -eq 0 ]
then
        echo  "Testing DL kikoulol.exe OK"
else
        echo "Testing DL kikoulol FAIL"

fi

acl fichier_exe urlpath_regex \.exe(\?.*)?$ 
http_access access fichier_exe
