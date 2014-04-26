#!/bin/bash

# This BASH ShellScript "ilFldsRPLB.sh" Recursively, using ls, lists Folders in PWD and below, with Path and Name, and prints to screen and file.

ls -R $PWD/* | grep :$ | sed 's/:\+$//'\
| tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRPLB_Data.txt
