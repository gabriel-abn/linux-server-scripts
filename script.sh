#!/bin/bash

echo "Atualizando pacotes..."

apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

rm /var/www/html/index.html
mv -R ./linux-site-dio-main/* /var/www/html/

