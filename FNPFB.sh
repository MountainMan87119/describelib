#!/bin/bash

# This BASH ShellScript "ilFylzNPFB.sh" uses *find* Non~recursively from $PWD and lists Path + FileName
# and prints that list to screen and to file.

find $PWD -maxdepth 1 -type f -printf '%p\n' | grep -v -e "^d" -e ".directory"\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNPFB_Data.txt
