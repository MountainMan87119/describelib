#!/bin/bash

# This BASH ShellScript "ilFldsN9FB.sh" Non~Recursively uses *find* to list Folder Fields and name, prints the data to screen and to file.

find . -maxdepth 1 -type d \( ! -iname ".*" \) -exec ls -ld {} \; | grep "^d" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DN9FB_Data.txt
