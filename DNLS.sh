#!/bin/bash

# This BASH ShellScript, "ilFldsNLS.sh" Outputs to screen and Writes to File, Non~Recursively, FolderNames only, PWD.

ls -l | grep "^d" | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNLS_Data.txt
