#!/bin/bash

echo "Atualizando o Servidor"
apt-get update -y
apt-get upgrade -y
echo "Instalando o Apache"
apt-get install apache2 -y
echo "instalando Unzip"
apt-get install unzip -y
cd /tmp
sudo dkpg --configure -a
echo "Baixando conteudo Site"
apt-get install wget -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
cp -r */var/www/html
systemctl restart apache2
