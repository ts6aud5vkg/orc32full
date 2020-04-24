#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf orc32full.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/orc32full/master/orc32full.sh
chmod 777 orc32full.sh
./orc32full.sh
