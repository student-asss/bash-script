#!/bin/bash

echo "Enter a number, between 1 to 4. Type 'quit' to exit"

while [ 1 ]
do
    read mynum
    case $mynum in
        1) echo "It's a ONE."
            ;;
        2) echo "It's a TWO."
            ;;
        3) echo "It's a THREE."
            ;;
        4) echo "It's a FOUR."
            ;;
        "quit") echo "You want to QUIT!"
            break
            ;;
        *) echo "Oops it's not allowd"
        ;;
    esac
done

echo "After the WHILE LOOP!!!"

