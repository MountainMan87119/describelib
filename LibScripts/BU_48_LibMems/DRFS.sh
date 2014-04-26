#!/bin/bash

# This BASH ShellScript "ilFldsRFS.sh", Using *find*, Recursively Lists Folder Names Only,
# starting in PWD, writing to file but not outputting to Shell screen.

find . -type d \( ! -iname ".*" \) -printf '%f\n' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRFS_Data.txt
