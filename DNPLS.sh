#!/bin/bash

# This BASH ShellScript "ilFldsNPLS.sh" Non~Recursively from PWD lists Folders' PATH and Name, only prints to file.

ls -ld $PWD/* | grep "^d" | sed 's,\([.*][ ][ ][ ]\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\([/home].*$\),\9,'\
> /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNPLS_Data.txt