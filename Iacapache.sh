#!/bin/bash

echo "atualizando o sistema..."
apt-get update -y
apt-get upgrade -y
apt-get install unzip -y
apt-get install apache2 -y

echo "baixando e copiando os arquivos html..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html 

echo "finalizando..."

