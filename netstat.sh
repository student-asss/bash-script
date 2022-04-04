#!/bin/bash

# BLUE="\033[0;34m"

# use 'man netstat' for more info
netstat -anp !more
echo -e "\e[34m------ Sepataror ------\e[0m"
netstat -anp | grep 22
echo -e "\e[34m------ Sepataror ------\e[0m"
# View listening processes
netstat -tulpen
echo -e "\e[34m------ Sepataror ------\e[0m"
# View all network connections
netstat -atupen
echo -e "\e[34m------ Sepataror ------\e[0m"
# View established connections
netstat -atupen | grep ESTABLISHED
echo -e "\e[34m------ Sepataror ------\e[0m"
ss -tl | grep LISTEN # -t for tcp, -l for listening
echo -e "\e[34m------ Sepataror ------\e[0m"
ss -ul | grep LISTEN # -u for udp
echo -e "\e[34m------ Sepataror ------\e[0m"
# View listening processes
ss -tulnp | grep LISTEN # -n for port number, -p for process 
echo -e "\e[34m------ Sepataror ------\e[0m"
# View all network connections
ss -taunp
echo -e "\e[34m------ Sepataror ------\e[0m"
echo "END PROGRAM"
