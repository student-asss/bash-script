#!/bin/bash

echo "Enter file name which you want to append: "
read fileName

if [ -f $fileName ]
then
    echo "Enter the text that you want to append: "
    read fileText
    echo $fileText >> $fileName
else
    echo "File '$fileName' does not exist!!!"
    echo "Enter file name that you want to create: "
    read createdFileName
    touch $createdFileName
    echo "File '$createdFileName' are created!!!"
    echo "Enter the text that you want to append: "
    read fileText
    echo $fileText >> $createdFileName 
    
    # Read lines of file - Option 1
    : '
    if [ -f $createdFileName ]; then
        while IFS= read -r line
        do
            echo "$line"
        done < $createdFileName
    fi '
fi


