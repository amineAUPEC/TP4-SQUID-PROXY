#!/bin/bash
echo coucou delichoc > /var/www/delichoc-my.shorepaint.com
echo <VirtualHost *:80> delichoc-my.shorepaint.com.conf

echo  ServerName delichoc-my.shorepaint.com >> delichoc-my.shorepaint.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> delichoc-my.shorepaint.com.conf
echo </VirtualHost> >> delichoc-my.shorepaint.com.conf