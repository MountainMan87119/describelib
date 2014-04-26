#!/bin/bash

# This BASH ShellScript "ilFldsNFB.sh" From PWD lists just current Directory, Folder Names Only, using *find* and writes to a
# file that list, and outputs it to screen as well.

find . -maxdepth 1 -type d  \( ! -iname ".*" \) -printf '%f\n' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNFB_Data.txt
