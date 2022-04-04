#!/bin/bash

# Program reads the host IP address separated by space and check whether it's alive or not

# Basic colors 
: '
Black        \033[0;30
Red          \033[0;31
Green        \033[0;32
Yellow       \033[0;33
Blue         \033[0;34
Magenta      \033[0;35
Cyan         \033[0;36
Light Gray   \033[0;37
'
# Colors
GREEN="\033[0;32m"
RED="\033[0;31m"

echo "Enter IP addresses separated by space"
read -a ip_list

for i in ${ip_list[@]} # for all IP addresses in ip_list
do
    # echo "********************************"
    # -c send just one packet
    # -w run just 3 secunds
    ping -c 1 -w 3 $i 2>&1 >/dev/null
    # if everything sucsess return 0
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}[+] Host $i"
    else
        echo -e "${RED}[-] Host $i"
    fi
done
