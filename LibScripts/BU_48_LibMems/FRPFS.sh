#!/bin/bash

# This BASH ShellScript "ilFylzRPFS.sh" recursively from $PWD, uses *find* to list fullPath FileNames and writes the list to file.

find "$PWD" -type f -printf "%p\n" | grep -v ".directory" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRPFS_Data.txt
