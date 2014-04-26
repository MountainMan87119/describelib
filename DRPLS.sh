#!/bin/bash

# This BASH ShellScript "ilFldsRPLS.sh" uses LS, Recursively and prints the Folder Path and Name straight to file.

ls -R $PWD/* | grep :$ | sed 's/:\+$//' > /home/innocentxlii/PLAY/LibTESTxOutputFiles/DRPLS_Data.txt
