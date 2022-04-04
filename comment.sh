#!/bin/bash

# Option 1
echo "This Line Wouls Execute"

# This concept is called as here document in Shell script
<< comment # it doesn't matter what the word is.
    echo "First Line would not execute"
    echo "Second Line would not execute"
    echo "Third Line would not execute"
    echo "Fourth Line would not execute"
    sleep 10 # This Line would not execute
comment

echo "This Line would again execute"

# Option 2
# FTP are not secure. Do same with SSH

ftp_server="ipAddress"
user_name="deviceName"
password="password"
directory_where_file_is_present="Desktop/"
FILENAME="FizzBuzz.py"

ssh -n $ftp_server << EOF
quote USER $user_name
quote PASS $password
cd $directory_where_file_is_present
bin
hash
get $FILENAME
quit
EOF
