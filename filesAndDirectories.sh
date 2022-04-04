#!/bin/bash

echo "Create File or Directory"
echo "press [1] for File or [2] for Directory" 
read choice


if [ $choice -eq 1 ]; then
    echo "Enter the File name to create"
    read name

    declare -a file={"~/bach"}
    for file in $name
    do
        if [ -f $name ]; then
            echo "$name exist, please change the file name!"            
            break
        else
            touch $name
            echo "File named $name are created!"
        fi
    done    	


elif [ $choice -eq 2 ]; then 
    echo "Enter the Directory name to create"
    read name

    declare -a directory={"~/bash/"}
    for directory in $name
    do
        if [ -d $name ]; then
	    echo "$name exist, please change the Directory name!"
            break
        else
	    mkdir $name
	    echo "$name Directory are created!"
        fi
    done
else
    echo "Option $choice does not exist!!!"


fi



