#!/bin/bash

echo "Enter file name to substitute using SED: "
read fileName

if [ -f $fileName ]
then
    # cat newFile | sed 's/i/I/'
    # sed 's/i/I/g' $fileName # g for Global, change just output
    # sed 's/i/I/g' $fileName > newFile # copy in newFile
    # '-i' for case sensitive
    # sed -i 's/i/I/g' $fileName # replace all leters
    # sed -i 's/I love*/This is/g' $fileName # replace all words
    # sed -i 's/This is*/I love*/g' $fileName | cat $fileName # replace word in file
else
    echo "$fileName does no exist!!!"
fi

