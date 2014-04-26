#!/bin/bash

# This BASH ShellScript "ilFldsR9FS.sh" Uses *find* recursively from PWD to list Folders Fields and Name, and silently writes to file that data.

find . -type d \( ! -iname ".*" \) -exec ls -ld {} \; | grep "^d" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DR9FS_Data.txt
