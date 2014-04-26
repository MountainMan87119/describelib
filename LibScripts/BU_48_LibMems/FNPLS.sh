#!/bin/bash

# This BASH ShellScript "ilFylzNPLS.sh" Non~Recursively in $PWD lists fullPath and FileName and writes the data straight to file.

ls -lrt -d -1 $PWD/* | grep -v "^d"\
| sed 's/\([-r].*[0-9][0-9]:[0-9][0-9][ ]\/home\)/\/home/' | sed 's/\([-r].*20[0-1][0-9][ ]\/home\)/\/home/'\
| sed 's/\([/].*[/].*[/].*[/]\)/&  /' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNPLS_Data.txt
