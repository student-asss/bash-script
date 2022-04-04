#!/bin/bash

# Enter in terminal:
# alias ipaddress="echo $(ifconfig | grep broadcast | awk '{print $2}')"

# Option 2
# alias nameOfAlias='. ~/bash/nameOfFile' runing file from anywhere
# source ~/bash/nameOfFile to activate

update="sudo apt update && sudo apt upgrade -y"
sd="sudo shutdown now"
ll="ls -al"

 
