#!/bin/bash

# This BASH ShellScript "ilFylzNPLB.sh" using *ls* from $PWD non~recursively Lists, fileNames
# with Fullpath and writes the output to screen and also to file.

ls -lrt -d -1 $PWD/* | grep -v "^d"\
| sed 's/\([-r].*[0-9][0-9]:[0-9][0-9][ ]\/home\)/\/home/' | sed 's/\([-r].*20[0-1][0-9][ ]\/home\)/\/home/'\
| sed 's/\([/].*[/].*[/].*[/]\)/&  /' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNPLB_Data.txt
