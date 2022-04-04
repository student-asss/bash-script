#!/bin/bash

# list of running files
lsof | grep lsof.sh

echo "------ Separator ------"
# 'wc -l' word count list
lsof | grep lsof.sh | wc -l # show number of processes with particular name 'lsof.sh', our example.

echo "------ Separator ------"
# View all network connections
# Command '-n' represents the addresses numerically, '-P' represents ports numerically, and '-i' suppresses the listing of any open files that are not considered network files
lsof -nP -i

echo "------ Separator ------"
# View established connections, the additional switches list all established TCP 
lsof -nP -iTCP -sTCP:ESTABLISHED

echo "------ Separator ------"
# View listening processes
# To view listening processes using lsof enter the following
lsof -nP -iTCP -sTCP:LISTEN

echo "------ Separator ------"
# This will miss any processes that are listening over UDP
lsof -nP -i | grep 'LISTEN\|UDP'
