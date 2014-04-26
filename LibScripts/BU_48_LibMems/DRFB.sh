#!/bin/bash

# This programme, "ilFldsRFB.sh" Recursively from $PWD lists Folders' Names only,
# using *find* and outputs the data to screen and writes it to file.

find . -type d \( ! -iname ".*" \) -printf '%f\n' |  tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRFB_Data.txt
