#!/bin/bash
./sdat2img.py system.transfer.list system.new.dat system.img
mkdir system/
sudo mount -t ext4 -o loop system.img system/
XNME=$(whoami)
sudo chown -R $XNME:$XNME $(pwd)/system/
