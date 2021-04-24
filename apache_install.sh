#!/bin/sh
#Apache installation script, completely original with awk/grep regex expressions
# Authored by Jevon Williams
# 4/23/2021 6:14PM



#Install Apache
sudo apt update
sudo apt install apache2 -y

#Copy git repo to /var/www/
sudo mkdir /var/www/$1
sudo cp -r /root/$1 /var/www/


