#!/bin/bash
apt-get update
apt-get -y upgrade
apt-get install -y gnupg2
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian buster main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get install -y net-tools dphys-swapfile htop
