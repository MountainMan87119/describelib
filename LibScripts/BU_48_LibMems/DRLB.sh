#!/bin/bash

# This programme, "ilFldsRLB.sh" Recursively from $PWD lists Folders' Names only,
# using *ls* and outputs the data to screen and writes it to file.

ls -lR | grep "^d" | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print}' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRLB_Data.txt
