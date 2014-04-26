#!/bin/bash

# This BASH ShellScript "ilFldsR9FB.sh" using *find* Recursively lists, from PWD, all Field Data and Name, of
# Folders, and writes the data to Shell screen and to file.

find . -type d \( ! -iname ".*" \) -exec ls -ld {} \; | grep "^d" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DR9FB_Data.txt
