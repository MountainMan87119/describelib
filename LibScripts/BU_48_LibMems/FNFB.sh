#!/bin/bash

# This BASH ShellScript "ilFylzNFB.sh" in $PWD non~recursively, uses *find*
# and lists all the FileNames, outputs the list to screen and prints it to file.

find -maxdepth 1 -type f -printf '%f\n' | grep -v ".directory" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNFB_Data.txt
