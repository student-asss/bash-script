#! /bin/bash

car=('BMW' 'Toyota' 'Honda' 'Renault')

# delete index
unset car[2]

# change index on second(3) position
car[2]='Mazda'

echo "${car[@]}"
echo "${car[1]}"
echo "${!car[@]}"
echo "${#car[@]}"


