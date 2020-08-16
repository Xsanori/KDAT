#!/bin/bash
echo "Enter system size in bytes:"
read XSSZ
./make_ext4fs -T 0 -S file_contexts -l $XSSZ -a system system_new.img system/
rm -rf system.transfer.list
rm -rf system.new.dat
./img2simg system_new.img system_sparse.img
./img2sdat.py system_sparse.img
sudo umount system/
sudo rm -rf system/
