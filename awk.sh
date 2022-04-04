#!/bin/bash

echo "Enter file name to print from AWK: "
read fileName

# use newFile for testing
if [ -f $fileName ]
then
    awk ' /MAC/ {print}' $fileName  # for target words in file
    awk '{print}' $fileName # print text from file
    awk '{print $2}' $fileName # print second words in text line
    awk ' /Linux/ {print $3, $4}' $fileName
else
    echo "$fileName does no exist!!!"
fi

echo -e "\e[34m------ Sepataror ------\e[0m"

user=$(cat /etc/passwd | awk -F":" '{print $1}')
for i in $user
do
    echo $i
done

echo -e "\e[34m------ Sepataror ------\e[0m"

# use newFile for testing
grep -i "This" newFile | awk '/Linux/ {print $4}'
