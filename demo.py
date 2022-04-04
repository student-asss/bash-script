#!/usr/bin/python

import os

print("Enter option to create Directory or File")
option = input("pres [1] Directory or [2] File: ")

if (option == "1"):
    name = input("Enter Directory name: ")
    if ( os.path.exists(name)):
        print(f"Directory with name '{name}' existed!!!")
    else:
        #dir = "~/bash/"
        #path = os.path.join(name)
        path = os.path.join(name)
        os.mkdir(path)
        print("Directory '% s' is created" % name);

elif (option == 2):
    name = input("Enter File name: ")
else:
    print(f"This option '{option}' does not exist!!!")

