#!/bin/bash

# This BASH ShellScript "ilFldsR9LS.sh", from PWD Recursively, using LS, writes to file only,
# the permissions etc, the Fields, of the Folders it lists.

ls -lR | grep "^d" > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DR9LS_Data.txt
