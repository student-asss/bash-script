#!/bin/bash

# use 'man nmap' for more info
echo "Target IP Address"
read ip

echo -e "\e[34m------ Sepataror ------\e[0m"
nmap -p- $ip
echo -e "\e[34m------ Sepataror ------\e[0m"
nmap -T4 -A $ip | grep /tcp | awk '{print}'
echo -e "\e[34m------ Sepataror ------\e[0m"
nmap -sP $ip | grep 192.168.0 | awk '{print $5}'
echo -e "\e[34m------ Sepataror ------\e[0m"

# Services Listening on Ports on Hosts
sudo nmap -sV $ip
echo -e "\e[34m------ Sepataror ------\e[0m"

# Anonymous FTP Logins on Hosts
sudo nmap -sC $ip -p 21
echo -e "\e[34m------ Sepataror ------\e[0m"

# Check for Vulnerabilities on Hosts
locate .nse | grep ftp
echo -e "\e[34m------ Sepataror ------\e[0m"

# then
nmap --script=ftp-vsftpd-backdoor.nse $ip -p 21
echo -e "\e[34m------ Sepataror ------\e[0m"

# Much more aggressive scan
sudo nmap -A $ip
echo -e "\e[34m------ Sepataror ------\e[0m"

echo "END PROGRAM"


