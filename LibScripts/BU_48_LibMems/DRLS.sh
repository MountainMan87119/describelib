#!/bin/bash

# This BASH ShellScript prints JUST FolderNames.

ls -lR | grep "^d" | awk '{for (i = 1;i<9;i++)$i = "";sub(/^ */, "");print;}' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRLS_Data.txt
