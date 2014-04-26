#!/bin/bash

# This BASH ShellScript "ilFldsN9FS.sh" uses Non~recurively, *find* to list Folder Fields and name, and only prints output to file.

find . -maxdepth 1 -type d \( ! -iname ".*" \) -exec ls -ld {} \; | grep "^d" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DN9FS_Data.txt
