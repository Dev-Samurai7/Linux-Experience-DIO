#!/bin/bash

echo "Criando Diretorios"

mkdir  publico adm ven sec

echo "Finalizando criação dos diretorios"

echo "Criando Grupos"

        groupadd GRP_ADM
        groupadd GRP_VEN
        groupadd GRP_SEC

echo "Finalizando criação dos grupos"

echo "Criando usuarios do grupo adm"
#Usuarios do grupo ADM
        useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
        useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
        useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM


#Usuarios do grupo VEN
        useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
        useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
        useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

#Usuarios do grupo SEC
        useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
        useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
        useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Finalizando Criação dos Usuarios"

echo "Dando permições aos grupos"
        chown root:GRP_ADM /home/adm
        chown root:GRP_VEN /home/ven 
        chown root:GRP_SEC /home/sec 

        chmod 770 /home/adm
        chmod 770 /home/ven
        chmod 770 /home/sec
        chmod 777 /home/public
echo "Finalizando operações"

