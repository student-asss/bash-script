#!/bin/bash

read -p "Enter email: " EMAIL

# '^' for beginning
# '$' for end of script
# '\.' place .
# '{2,4}' limit of characters between 2 and 4
if [[ "$EMAIL" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]
then
    echo "[+] Correct email address: $EMAIL"
else
    echo "[-] Uncorrect email address: $EMAIL"
fi

