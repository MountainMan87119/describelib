#!/bin/bash

# This programme, "ilFldsR9LB.sh" Recursively from $PWD lists Folders' Fields and Names,
# using *ls* and outputs the data to screen and writes it to file.

ls -lR | grep "^d" | awk "{print $9}" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DR9LB_Data.txt
