#!/bin/bash

# This BASH ShellScript "ilFylzN9LB.sh" Non~Recursively from $PWD lists
# Fields and FileNames and outputs to screen and writes the list to file.

ls -l | grep -v -e "^d" -e "total" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FN9LB_Data.txt
