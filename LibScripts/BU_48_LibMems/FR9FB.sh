#!/bin/bash

# This BASH ShellScript "ilFylzR9FB.sh" uses *find* from $PWD to recursively
# list Fields and FileNames and prints a list to screen and file.

find . -type f -exec ls -l {} \; | grep -v ".directory" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FR9FB_Data.txt
