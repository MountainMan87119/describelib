#!/bin/bash

# This BASH ShellScript "ilFylzR9FS.sh" uses *find* from $PWD recursively to list Fields and FileNames
# and printst the data straight to file.

find . -type f -exec ls -l {} \; | grep -v ".directory" | awk '{ sub(/\.\//, " ");print}'\
| sed 's,\(.*  \)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*\)$,\1\7,g' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FR9FS_Data.txt
