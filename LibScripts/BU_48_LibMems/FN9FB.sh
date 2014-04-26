#!/bin/bash

# This BASH ShellScript "ilFylzN9FB.sh" uses *find* from $PWD recursively to list Fields and FileNames
# and prints the data to screen and to file.

find . -maxdepth 1 -type f -exec ls -l {} \; | grep -v ".directory" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FN9FB_Data.txt
