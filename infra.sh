#!/bin/bash

echo "Inicio do script"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "User Carlos"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "User Maria"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "User João"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "User Debora"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "User Sebastiana"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "User Roberto"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "User Josefina"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "User Amanda"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "User Rogerio"  -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim do Script"
