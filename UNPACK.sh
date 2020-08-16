#!/bin/bash
if [ ! -f "$(pwd)/system.transfer.list" ]; then
    echo "####################################"
    echo "# Cannot find system.transfer.list #"
    echo "####################################"
    exit
fi
if [ ! -f "$(pwd)/system.new.dat" ]; then
    echo "##############################"
    echo "# Cannot find system.new.dat #"
    echo "##############################"
    exit
fi
./sdat2img.py system.transfer.list system.new.dat system.img
mkdir system/
sudo mount -t ext4 -o loop system.img system/
XNME=$(whoami)
sudo chown -R $XNME:$XNME $(pwd)/system/
