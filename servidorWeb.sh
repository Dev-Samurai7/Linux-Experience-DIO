#! /bin/bash

echo "Atualização do servidor"
apt-get  update
apt-get upgrade -y

echo "Instalando as ferramentas do server"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando os arquivos na web"

cd /tmp
wget https://github.com/denilsonbonati/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os e copiados os arquivos da aplicação"
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html

