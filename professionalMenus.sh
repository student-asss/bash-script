#!/bin/bash

# Oprion 1
: '
select car in BMW TESLA TOYOTA MAZDA RENALUT
do
    echo "You have selected $car"
done
'

# Option 2
#: '
select car in BMW TESLA TOYOTA MAZDA RENALUT
do
    case $car in
    BMW)
        echo "BMW selected";;
    TESLA)
        echo "TESLA selected";;
    TOYOTA)
        echo "TOYOTA selected";;
    MAZDA)
        echo "MAZDA selected";;
    RENAULT)
        echo "RENAULT selected";;
    *)
        echo "ERROR!"
    esac
done
#'

# Option 3
: '
echo "press any key to continue"

while [ true ]
do
    read -t 3 -n 1
if [ $? = 0 ]
then
    echo "You have terminanted the script"
    exit;
else
    echo "waiting for you to press the key!!!"
fi
done
'
