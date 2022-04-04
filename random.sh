#!/bin/bash 
: '
# Option 1 ---------------------
echo "Enter the number between 1 to 10: "
read number

guess=$(( RANDOM%10 ))
if [ $number -eq $guess ]; then
    echo "You WONN !!!"
else
    echo "Try again, random number was $guess !"
fi
'
: '
# Option 2 ---------------------
echo "=== Welcome to GUESS game ==="

count=5
guess=$(( RANDOM%10 ))
while (( $count > 0 ))
do
    echo "Enter the number between 1 to 10: "
    read number

    if [ $guess -eq $number ]; then
        echo "*** You WON !!! ***"
        break
    else       
        echo "You MISS, please try again !"
        count=$(( count-1 ))
        echo "### $count gueses more ###"
    fi
done
echo "Game Over"
'

# Option 3 ---------------------
# Generate number 5 times between 1 to 100

for i in `seq 1 5`
do
     echo "$i random number: $(( RANDOM%100 ))"
done
