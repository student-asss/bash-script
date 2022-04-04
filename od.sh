#!/bin/bash

# inspect the file
# use 'man od' for more info
echo "------ Option 1 ------"
od dd.sh
echo "------ Option 2 ------"
od -Ax -cvx dd.sh
echo "------ Option 3 ------"
od -x dd.sh
