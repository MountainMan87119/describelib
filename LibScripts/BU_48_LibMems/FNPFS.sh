#!/bin/bash

# This BASH ShellScript "ilFylzNPFS.sh" uses *find* Non~recursively from $PWD and lists Path + FileName, prints that list to file.

find $PWD -maxdepth 1 -type f -printf '%p\n' | grep -v -e "^d" -e ".directory" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNPFS_Data.txt
