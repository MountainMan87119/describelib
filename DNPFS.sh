#!/bin/bash

# This BASH ShellScript "ilFldsNPFS.sh" Non~Recursively from $PWD, lists Folders' PATH plus FolderName and prints the data to file.

find $PWD -maxdepth 1 -type d -printf '%p\n' | sed '1d' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNPFS_Data.txt
