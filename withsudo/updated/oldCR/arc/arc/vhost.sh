#!/bin/bash


echo coucou kaceboof > /var/www/www.kaceboof.com
echo <VirtualHost *:80> www.kaceboof.com.conf

echo  ServerName www.kaceboof.com >> www.kaceboof.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> www.kaceboof.com.conf
echo </VirtualHost> >> www.kaceboof.com.conf


echo coucou spachnat > /var/www/www1.spachnat.com
echo <VirtualHost *:80> www1.spachnat.com.conf

echo  ServerName www1.spachnat.com >> www1.spachnat.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> www1.spachnat.com.conf
echo </VirtualHost> >> www1.spachnat.com.conf

echo coucou spachnat > /var/www/www2.spachnat.com
echo <VirtualHost *:80> www2.spachnat.com.conf

echo  ServerName www2.spachnat.com >> www2.spachnat.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> www2.spachnat.com.conf
echo </VirtualHost> >> www2.spachnat.com.conf

echo coucou tendir > /var/www/tendir.com
echo <VirtualHost *:80> tendir.com.conf

echo  ServerName tendir.com >> tendir.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> tendir.com.conf
echo </VirtualHost> >> tendir.com.conf

echo coucou lorieforever > /var/www/www.lorieforever.fr
echo <VirtualHost *:80> www.lorieforever.fr.conf

echo  ServerName www.lorieforever.fr >> www.lorieforever.fr.conf
echo  DocumentRoot /var/www/kaceboof.com >> www.lorieforever.fr.conf
echo </VirtualHost> >> www.lorieforever.fr.conf

echo coucou gogleo > /var/www/www.gogleo.fr
echo <VirtualHost *:80> www.gogleo.fr.conf

echo  ServerName www.gogleo.fr >> www.gogleo.fr.conf
echo  DocumentRoot /var/www/kaceboof.com >> www.gogleo.fr.conf
echo </VirtualHost> >> www.gogleo.fr.conf

echo coucou delichoc > /var/www/www.delichoc.fr
echo <VirtualHost *:80> www.delichoc.fr.conf

echo  ServerName www.delichoc.fr >> www.delichoc.fr.conf
echo  DocumentRoot /var/www/kaceboof.com >> www.delichoc.fr.conf
echo </VirtualHost> >> www.delichoc.fr.conf

echo coucou delichoc > /var/www/delichoc-my.shorepaint.com
echo <VirtualHost *:80> delichoc-my.shorepaint.com.conf

echo  ServerName delichoc-my.shorepaint.com >> delichoc-my.shorepaint.com.conf
echo  DocumentRoot /var/www/kaceboof.com >> delichoc-my.shorepaint.com.conf
echo </VirtualHost> >> delichoc-my.shorepaint.com.conf