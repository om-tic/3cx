#!/bin/bash
echo "Installation de 3CX en cours"
apt-get update
apt-get upgrade -y
echo "Mise à jour Linux complété"
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "Ajout de la clé 3CX complété"
apt-get apt install gnupg2 -y
echo "Installation de gnupg2 complété"
echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | tee /etc/apt/sources.list.d/3cxpbx.list
echo "Ajout de la source 3CX"
apt-get install net-tools dphys-swapfile -y
echo "Installation de net-tools et dphys-swapfile complété"
apt-get update
apt-get install 3cxpbx -y
