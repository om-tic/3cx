#!/bin/sh
apt-get update > /dev/null 2>&1
apt-get upgrade > /dev/null 2>&1
apt-get install gnupg2 > /dev/null 2>&1
wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt-get update > /dev/null 2>&1
apt-get install net-tools dphys-swapfile > /dev/null 2>&1
#apt-get install 3cxpbx
