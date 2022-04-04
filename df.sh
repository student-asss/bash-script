#!/bin/bash

# use 'man df' for more info
# check used space on device
echo "------ Option 1 ------"
df -kh # for kilobyts
echo "------ Option 2 ------"
df -kh | grep /dev/mmcblk0p1
echo "------ Option 3 ------"
df -kh | grep /dev/mmcblk0p1 | awk '{print $5}'
echo "------ Option 4 ------"
df -kh . # show current location
