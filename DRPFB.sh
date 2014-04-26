#!/bin/bash

# This BASH ShellScript "ilFldsRPFB.sh" Recursively from $PWD, lists, using *find*,
# all Folders PATH plus Name data and outputs to screen and writes the List, to file.

find $PWD/* -type d -printf '%p\n' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRPFB_Data.txt
