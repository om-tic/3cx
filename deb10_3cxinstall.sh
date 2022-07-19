#!/bin/sh
apt-get update
wait
apt-get upgrade
wait
apt-get install gnupg2
wait
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
wait
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
wait
apt-get update
wait
apt-get install net-tools dphys-swapfile
#apt-get install 3cxpbx
