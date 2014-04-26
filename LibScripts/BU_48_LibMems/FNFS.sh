#!/bin/bash

# This BASH ShellScript "ilFylzNFS.sh" from $PWD non~recursively, makes a list of filenames and only prints the list to file.

find -maxdepth 1 -type f -printf '%f\n' | grep -v ".directory" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNFS_Data.txt
