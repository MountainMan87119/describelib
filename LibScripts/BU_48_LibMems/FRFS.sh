#!/bin/bash

# This BASH ShellScript "ilFylzRFS.sh" from $PWD recursively lists FileNames using *find* and writes the data to file.

find . -type f -printf '%f\n' | grep -v ".directory" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRFS_Data.txt
