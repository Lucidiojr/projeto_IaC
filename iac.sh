#!/bin/bash

echo "Criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven

echo "Criando grupos de usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN

echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Especificando permissões dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /ven

echo "Fim"
