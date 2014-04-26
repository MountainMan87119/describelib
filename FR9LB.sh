#!/bin/bash

# This BASH ShellScript "ilFylzR9LB.sh" from $PWD using *ls* recursively lists all Fields and filenames, outputs
# the data to screen and prints the list to file.

ls -lR | grep -v -e ".directory" -e "^\./.*$" -e  "^d.*$" -e "total.*$" -e "^\.:$"\
| sed '/^$/d'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FR9LB_Data.txt
