#!/bin/bash

# use 'man fdisk' for more info
# Option 1 ---------------------
sudo fdisk -l /dev/mmc*
echo -e "\e[34m------ Sepataror ------\e[0m"
# Option 2 ---------------------
dmesg -H
echo -e "\e[34m------ Sepataror ------\e[0m"
dmesg | grep mmc
