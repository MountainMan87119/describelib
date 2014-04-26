#!/bin/bash

# This BASH ShellScript "ilFylzRLB.sh" Recursively from $PWD, using *ls*, lists all FileNames
# and prints that list to file and outputs it to screen.

ls -lR | grep -v "^d" | grep -v -e "\.*:$" -e "[a-zA-Z]\.*[0-9][0-9]$" | sed 's/\.directory//' | sed '/^$/d' | grep -v "total"\
| awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}'\
|tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRLB_Data.txt
