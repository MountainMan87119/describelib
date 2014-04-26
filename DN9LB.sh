#!/bin/bash

# This BASH ShellScript "ilFldsN9LB.sh", gets a list of Folder Names and Fields Data, of only PWD,
# so, non~recursive; prints to screen and writes the data to file.

ls -l | grep "^d" | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DN9LB_Data.txt
