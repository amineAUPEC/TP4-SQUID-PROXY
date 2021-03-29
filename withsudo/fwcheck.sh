#!/bin/bash


list_ip="192.0.2.2  203.0.113.10 203.0.113.11 192.0.2.1 172.16.111.149"

for ip in $list_ip

do


ping -c 1 -w 2 $ip &> /dev/null

if [ $? -eq 0 ]
then
	echo " "
        
	echo "Testing ping $ip OK"
else
        echo -e "Testing ping $ip NO"
fi

 nc $ip 22 -q 0 -w 2 < /dev/null &> /dev/null

if [ $? -eq 0 ]
then
        echo  "Testing ssh $ip OK"
else
        echo "Testing ssh $ip NO"

fi

curl --max-time 2 -f http://$ip &> /dev/null

if [ $? -eq 0 ]

then
        echo  "Testing web $ip OK"
else
        echo  "Testing web $ip NO"

fi
done
