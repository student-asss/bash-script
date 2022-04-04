#!/bin/bash

# declare
declare -a var
var[0]="Hello"
var[1]="green"
var[2]="Apple"

echo ${var[0]}
echo ${var[1]}
echo ${var[2]}
echo ${var[0]} ${var[1]} ${var[2]}
echo " "

# array
array_var=("Hello" "array" "green" "Apple")
echo ${array_var[0]}
echo ${array_var[1]}
echo ${array_var[2]}
echo ${array_var[3]}
echo " "

# array
array_var=([0]="Hello" [1]="array" [2]="green" Apple)
echo ${array_var[0]}
echo ${array_var[1]}
echo ${array_var[2]}
echo ${array_var[3]}
echo " "
