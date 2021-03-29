#!/bin/bash
mkdir -p /var/www/www.kaceboof.com
mkdir -p /var/www/html/www1.spachnat.com
mkdir -p /var/www/html/www2.spachnat.com
mkdir -p /var/www/html/tendir.com
mkdir -p /var/www/html/www.gogleo.fr
mkdir -p /var/www/html/www.delichoc.fr
mkdir -p /var/www/html/delichoc-my.shorepaint.com
mkdir -p /var/www/html/lorieforever

echo coucou kaceboof > /var/www/www.kaceboof.com/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www.kaceboof.com.conf

echo  ServerName www.kaceboof.com >> /etc/apache2/sites-available/www.kaceboof.com.conf
echo  DocumentRoot /var/www/www.kaceboof.com >> /etc/apache2/sites-available/www.kaceboof.com.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www.kaceboof.com.conf


echo coucou spachnat > /var/www/html/www1.spachnat.com/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www1.spachnat.com.conf

echo  ServerName www1.spachnat.com >> /etc/apache2/sites-available/www1.spachnat.com.conf
echo  DocumentRoot /var/www/html/www1.spachnat.com  >> /etc/apache2/sites-available/www1.spachnat.com.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www1.spachnat.com.conf

echo coucou spachnat > /var/www/html/www2.spachnat.com/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www2.spachnat.com.conf

echo  ServerName www2.spachnat.com >> /etc/apache2/sites-available/www2.spachnat.com.conf
echo  DocumentRoot /var/www/html/www2.spachnat.com>> /etc/apache2/sites-available/www2.spachnat.com.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www2.spachnat.com.conf

echo coucou tendir > /var/www/html/tendir.com/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/tendir.com.conf

echo  ServerName tendir.com >> /etc/apache2/sites-available/tendir.com.conf
echo  DocumentRoot /var/www/html/tendir.com >> /etc/apache2/sites-available/tendir.com.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/tendir.com.conf

echo coucou lorieforever > /var/www/html/lorieforever/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www.lorieforever.fr.conf

echo  ServerName www.lorieforever.fr >> /etc/apache2/sites-available/www.lorieforever.fr.conf
echo  DocumentRoot /var/www/html/lorieforever >> /etc/apache2/sites-available/www.lorieforever.fr.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www.lorieforever.fr.conf

echo coucou gogleo > /var/www/html/www.gogleo.fr/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www.gogleo.fr.conf

echo  ServerName www.gogleo.fr >> /etc/apache2/sites-available/www.gogleo.fr.conf
echo  DocumentRoot /var/www/html/www.gogleo.fr >> /etc/apache2/sites-available/www.gogleo.fr.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www.gogleo.fr.conf

echo coucou delichoc > /var/www/html/www.delichoc.fr/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/www.delichoc.fr.conf

echo  ServerName www.delichoc.fr >> /etc/apache2/sites-available/www.delichoc.fr.conf
echo  DocumentRoot /var/www/html/www.delichoc.fr >> /etc/apache2/sites-available/www.delichoc.fr.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/www.delichoc.fr.conf

echo coucou delichoc > /var/www/html/delichoc-my.shorepaint.com/index.html
echo \<VirtualHost \*:80\> >> /etc/apache2/sites-available/delichoc-my.shorepaint.com.conf

echo  ServerName delichoc-my.shorepaint.com >> /etc/apache2/sites-available/delichoc-my.shorepaint.com.conf
echo  DocumentRoot /var/www/html/delichoc-my.shorepaint.com >> /etc/apache2/sites-available/delichoc-my.shorepaint.com.conf
echo \</VirtualHost\> >> /etc/apache2/sites-available/delichoc-my.shorepaint.com.conf