#!/bin/bash

# This BASH ShellScript "ilFldsNLB.sh" Non~Recursively Lists in a file and in Shell screen, Folder Names, PWD.

ls -l | grep "^d" | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' | tee -a /home/innocentxlii/PLAY/LibTESTxOutputFiles/DNLB_Data.txt
