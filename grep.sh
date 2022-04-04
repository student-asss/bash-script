#!/bin/bash

echo "Enter file name to search text from: "
read fileName

if [ -f $fileName ]
then
    echo "Enter the text to search: "
    read grepVar
    
    # -i for case letter sensitive
    # -n for number of line
    # -c for countin how many times are target word in document. 
    # -v for number lines without target words
    grep -i -n $grepVar $fileName
else
    echo "$fileName does no exist!!!"
fi
