#!/bin/bash

# This BASH ShellScript "ilFylzRPLB.sh" uses *ls* from $PWD recursively to list and FileNames with FullPath
# and prints the data to screen and to file.

ls -lR $PWD | grep -v "^d" | awk '/:$/&&f{s=$0;f=0}/:$/&&!f{sub(/:$/,"???");s=$0;f=1;next}NF&&f{ print s"/"$0 }'\
| sed 's/\/home\/.*\/total.*$/wtf/' | grep -v "wtf" | sed 's/\(???.*[0-9][0-9]:[0-9][0-9][  ]\)/  /' | sed 's/\(???.*20[0-1][0-9][  ]\)/  /'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRPLB_Data.txt
