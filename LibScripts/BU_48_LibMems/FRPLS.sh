#!/bin/bash

# This BASH ShellScript "ilFylzRPLS.sh" recursively from $PWD, lists FileNames with fullPath, using *ls* and writes the list to file.

ls -lR $PWD | grep -v "^d" | awk '/:$/&&f{s=$0;f=0}/:$/&&!f{sub(/:$/,"???");s=$0;f=1;next}NF&&f{ print s"/"$0 }'\
| sed 's/\/home\/.*\/total.*$/wtf/' | grep -v "wtf" | sed 's/\(???.*[0-9][0-9]:[0-9][0-9][  ]\)/  /' | sed 's/\(???.*20[0-1][0-9][  ]\)/  /'\
> /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRPLS_Data.txt
