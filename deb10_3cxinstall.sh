#!/bin/sh
apt-get update
apt-get --with-new-pkgs upgrade -y
apt-get install gnupg2 -y
# Install 3cxpbx
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get install net-tools dphys-swapfile -y
#apt-get install 3cxpbx -y
