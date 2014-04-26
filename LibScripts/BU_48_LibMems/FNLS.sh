#!/bin/bash

# This BASH ShellScript "ilFylzNLS.sh" in $PWD non~recursing, Lists filenames using *ls* and silently prints that list to file.

ls -l | grep -v "^d" | sed 's/\.directory//' | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' | sed '/^$/d'\
> /home/innocentxlii/PLAY/LibTESTxOutputFiles/FNLS_Data.txt
