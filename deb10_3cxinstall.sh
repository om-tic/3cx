#!/bin/sh
apt-get update
apt-get --with-new-pkgs upgrade -y
apt-get -y gnupg2
# Install 3cxpbx
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update
apt-get -y install net-tools dphys-swapfile
#apt-get install 3cxpbx -y
