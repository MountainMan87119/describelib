#!/bin/bash

# This BASH ShellScript "ilFylzN9FS.sh" uses *find* from $PWD non~recursively to list Fields and FileNames
# and prints the data to file.

find . -maxdepth 1 -type f -exec ls -l {} \; | grep -v ".directory" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FN9FS_Data.txt
