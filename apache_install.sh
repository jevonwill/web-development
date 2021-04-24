#!/bin/sh
#Apache installation script, completely original with awk/grep regex expressions. Takes the git repo and server hostname/ip as args.
# Authored by Jevon Williams
# 4/23/2021 6:14PM



#Install Apache
sudo apt update
sudo apt install apache2 -y

#Copy git repo to /var/www/
sudo mkdir /var/www/$1
sudo cp -r /root/$1 /var/www/

#Setting up the VirtualHost Configuration File
#Should use awk or grep with ifconfig to get ServerName var
cat > /etc/apache2/sites-available/gci.conf << EOF
<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
	DocumentRoot /var/www/$1
	ServerName $2

</VirtualHost>
EOF

#Activating VirtualHost file/reload apache
cd /etc/apache2/sites-available
sudo a2ensite gci.conf
service apache2 reload
