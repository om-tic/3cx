#!/bin/bash

echo "Installation de 3CX en cours"
sudo apt update &
sudo apt upgrade -y &
echo "Mise à jour Linux complété"
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add - &
echo "Ajout de la clé 3CX complété"
sudo apt install gnupg2 -y &
echo "Installation de gnupg2 complété"
echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list &
echo "Ajout de la source 3CX"
sudo apt install net-tools dphys-swapfile -y &
echo "Installation de net-tools et dphys-swapfile complété"
sudo apt update &
sudo apt install 3cxpbx -y
