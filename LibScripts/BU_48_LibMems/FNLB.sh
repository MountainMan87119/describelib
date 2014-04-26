#!/bin/bash

# This BASH ShellScript "ilFylzNLB.sh" in $PWD (non~recursive) using ls, makes a list of filenames and outputs it to screen and prints it to file.

ls -l | grep -v "^d" | sed 's/\.directory//' | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' | sed '/^$/d'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNLB_Data.txt
