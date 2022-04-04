#!/bin/bash

# use 'man dmidecode' for more info
sudo dmidecode -t 0
echo -e "\e[34m------ Sepataror ------\e[0m"
sudo dmidecode -t 4
echo -e "\e[34m------ Sepataror ------\e[0m"
sudo dmidecode -d /dev/root
echo -e "\e[34m------ Sepataror ------\e[0m"
sudo dmidecode -V
echo -e "\e[34m------ Sepataror ------\e[0m"
sudo dmidecode -s system-version
echo -e "\e[34m------ Sepataror ------\e[0m"
sudo dmidecode -s system-serial-number
echo -e "\e[34m------ Sepataror ------\e[0m"
