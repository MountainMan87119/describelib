#!/bin/bash

# This programme, "ilFylzRFB.sh" Recursively from $PWD lists Files' Names,
# using *find* and outputs the data to screen and writes it to file.

find . -type f -printf '%f\n' | grep -v ".directory" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRFB_Data.txt
