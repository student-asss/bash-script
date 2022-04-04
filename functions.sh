#!/bin/bash

function funcName()
{
    echo "this is new functions"
}

funcName

# Argument funktion
function funcArgument()
{
    echo $1
}

funcArgument "this is a argument function"

# Return function
function funcCheck()
{
    returningValue="this is a return functions"
    echo "$returningValue"
}

funcCheck

# Local and Outside of function
function funcLocal()
{
    returningValueLocal="This is a local function"
}

returningValueLocal="Outside local function"
echo $returningValueLocal

funcLocal
echo $returningValueLocal

