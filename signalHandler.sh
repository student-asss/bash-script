#!/bin/bash

<< comment
# Option 1 ---------------------
function cleanup()
{
    echo "cleanup called"
    rm -fr /tmp/startup.log
    rm -fr /tmp/df.log
    rm -fr /tmp/hostname.log
}

# Here EXIT is a psedo signal which bash provides to
# It's processes upon exit
trap 'cleanup EXIT; exit 1' EXIT
trap 'cleanup SIGINT; exit 1' SIGINT
trap 'cleanup SIGHUP; exit !' SIGHUP

MainLogFileName="/tmp/main_script.log"

echo "Start of the script" > /tmp/startup.log

hostname -f > /tmp/hostfile.log

tmpfs_size=`df | grep tmpfs | tail -1 | awk '{print $4}'`

if [ tmp_fs -gt 20 ]; then
    echo "Disk has sufficeint size" > /tmp/df.log
else
    echo "Disk is full" > /tmp/df.log
fi

cat /tmp/df.log /tmp/startup.log /tmp/hostname.log > $MainLogFileName
comment

# Option 2 ---------------------

old_time=
new_time=

cleanup()
{
    echo "Some cleanup performed"
    new_time=`date +%s` # This would give time since epoch
    time_diff=$((new_time-old_time))
    if [ $time_diff -gt 0 ] && [ $time_diff -lt 3 ]
    then
        echo "Exiting program as key pressed within $time_diff"
        exit 1
    else
        old_time=$new_time
    fi
}

trap 'cleanup SIGINT' SIGINT

while true
do
    echo "Hello"
    sleep 1
done
