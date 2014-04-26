#!/bin/bash

# This BASH ShellScript "ilFldsN9LS.sh", using LS, Non~Recursively lists the Fields data for Folders in PWD
# and only, writes the data to file.

ls -l | grep "^d" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DN9LS_Data.txt
