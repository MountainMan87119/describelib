#!/bin/bash

# This BASH ShellScript "ilFylzRLS.sh" Recursively uses *LS* to list all filenames $PWD and down, and write that list silently to file.

ls -lR | grep -v "^d" | sed 's/\.directory//' | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' | sed '/^$/d'\
> /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRLS_Data.txt
