#!/bin/bash

# This BASH ShellScript "ilFldsNPFB.sh" Non~Recursive use of *find* in $PWD to list FolderNames with Path, then write to screen and file, that list.

find $PWD -maxdepth 1 -type d -printf '%p\n' | sed '1d' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNPFB_Data.txt
