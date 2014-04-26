#!/bin/bash

# This BASH ShellScript "ilFylzR9LS.sh" recursively from $PWD using *ls* lists out path and filenames, and prints that data to file.

ls -lR | grep -v -e ".directory" -e "^\./.*$" -e  "^d.*$" -e "total.*$" -e "^\.:$"\
| sed '/^$/d' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/FR9LS_Data.txt
