#!/bin/bash

# This BASH ShellScript "ilFldsNPLB.sh" uses LS non~recursively, lists $PWD ; Folders' Path plus Name to screen and prints the data to file.

ls -ld $PWD/* | grep "^d" | sed 's,\([.*][ ][ ][ ]\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\(.*/\)\?\([/home].*$\),\9,'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNPLB_Data.txt
