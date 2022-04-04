#!/bin/bash

read -p "Enter IP address: " ip_address

if [ "$ip_address" == "" ]; then
    echo "Usage: ./port_scan.sh $ip_address"
else
    echo "Please wait while it is scanning all the open ports..."
    for (( i=0; i<=4000; i++ )) # port from 1-65535
    do
        sudo nc -nvz $ip_address $i > $ip_address.txt 2>&1 
        if [ $? -eq 0 ]; then
            echo "Port $i are open"
        fi
    done
fi

tac $ip_address.txt
rm -rf $ip_address.txt
