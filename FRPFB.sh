#!/bin/bash

# This BASH ShellScript "ilFylzRPFB.sh" Recursively from $PWD using *find* lists
# PATH and FileNames and writes the list to screen and to file.

find "$PWD" -type f -printf "%p\n" | grep -v ".directory" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRPFB_Data.txt
