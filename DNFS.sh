#!/bin/bash

# This BASH ShellScript "ilFldsNFS.sh" from PWD and only for PWD uses find and lists, writing to file, Folder Names only.

find . -maxdepth 1 -type d  \( ! -iname ".*" \) -printf '%f\n' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNFS_Data.txt
