#!/bin/bash

# This BASH ShellScript "ilFldsRPFS.sh" Recursively from $PWD, lists FolderNames with Path, using *find* and only prints data to file.

find $PWD/* -type d > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRPFS_Data.txt
