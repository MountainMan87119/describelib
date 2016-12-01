#!/bin/bash

#FileNAME :: setupInaug.sh

# 1. Start time
LittleTime="$(date +%s)";
T="$(date +%s%N)";
Normal="$(date +%I":"%M%p)";
# 2. Begin setup dialog
date_MyPreferred=$(date +"Date: "%A", "%d" "%B", 20"%y".");
echo "";
echo "Beginning setup : $date_MyPreferred  : ${Normal}.";

# 3. Set counters used in checking~off confirmation of setup
InstallTXTxOK=7;
CheckListCount=7;
ReadMeYes=7;
UninstallYes=7;
xFileListYes=7;
FauxYes=7;
MainRUNxScriptYes=7;
InstallEraseYes=7;
LibScriptsDIRYes=7;
MembersYes=7;
Provisioning48Success=7;
OKxCheckListVal=7;
ContentOK=7;

# 4. Early Assign DirName to var
ToAccessInstDelDir="InstallRecord_UninstallScript/";

# 5. Early Assign DirName to var
ToAccessLibScripts="LibScripts/";

# 6. Have to establish filename for Installation
RecordTheSetup="InstallationRecord.txt";

# 7. Then make it
touch $RecordTheSetup;

# 8. Confirm *InstallationRecord.txt* was made.
if [ -f ${RecordTheSetup} ]; then
     echo "InstallationRecord.txt Being Written For: \"Inaugural Library\"" | tee -a ${RecordTheSetup};
     echo "" >> ${RecordTheSetup};
     echo "Began setup @ : ${date_MyPreferred}  : ${Normal}." >> ${RecordTheSetup};
     InstallTXTxOK=1;
else
     echo "That is embarrassing...installation file did not get made." | tee -a ${RecordTheSetup};
     InstallTXTxOK=0;
fi
echo "" | tee -a ${RecordTheSetup};

# 9. Get full path
cd /;
echo "We should be home : $PWD" | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 10. From here, check where a file used as marker resides
Location=$(find -name InaugLib.txt);
echo "InaugLib.txt exists.  It is present in Directory ${Location}." | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 11. Extract path to use for changing all 48 scripts/lib members to properly use reflect new home
NewBetter=$(printf "$Location" | sed 's/\(\.\)\(\/\)\(.*\/\)\(InaugLib.txt\)$/\2\3/');
echo "Extracted this path :: ... ${NewBetter}" | tee -a ${RecordTheSetup};
echo "Now changing back to (PWD) of installed InaugLib : " | tee -a ${RecordTheSetup};

# 12. Back to Lib Main Dir
cd $NewBetter;
echo "" | tee -a ${RecordTheSetup};

# 13. Confirming Print Working Directory
echo "TESTING pwd = $PWD" | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 14. Verify presence:

# 14(a) Since this script is running, one assumes the user found it in place  ;) so figure *setupInaug.sh* OK:
let $((CheckListCount=$CheckListCount+1));

# 14(b) for user, README which contains notes on setting up the library.                   ==    README
CnfrmREADME="README";
echo "This is *thing* requested: ${CnfrmREADME}" | tee -a ${RecordTheSetup};
     
     if [ -f ${NewBetter}${CnfrmREADME} ]; then
	  echo "YESH!!! It Lives! ${CnfrmREADME}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  ReadMeYes=1;
     else
	  echo "README not found.";
	  ReadMeYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(c) For user*s convenience, Uninstall script to totally remove "Inaugural Library."    ==    ToEraseInaugLib.sh
DeleteLibReady="ToEraseInaugLib.sh";
echo "This is *thing* requested: ${DeleteLibReady}" | tee -a ${RecordTheSetup};

     if [ -x ${NewBetter}${DeleteLibReady} ]; then
	  echo "YESH!!! It Lives! ${DeleteLibReady}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  UninstallYes=1;
     else
	  echo "ToEraseInaugLib.sh not found." | tee -a ${RecordTheSetup};
	  UninstallYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(d) zFileList.txt critical for this install                                            ==    zFileList.txt
CnfrmFL="zFileList.txt";
echo "This is *thing* requested: ${CnfrmFL}" | tee -a ${RecordTheSetup};
     
     if [ -f ${NewBetter}${CnfrmFL} ]; then
	  echo "YESH!!! It Lives! ${CnfrmFL}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  xFileListYes=1;
     else
	  echo "zFileList.txt not found." | tee -a ${RecordTheSetup};
	  xFileListYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(e) 1ne TEST Directory with subdirectories and files.                                  ==     FauxFileTreeTestDirP
FauxFile="FauxFileTreeTestDirP";
echo "This is *thing* requested: ${FauxFile}" | tee -a ${RecordTheSetup};

     if [ -d ${NewBetter}${FauxFile} ]; then
	  echo "YESH!!! It Lives! ${FauxFile}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  echo "${NewBetter}${FauxFile}/" >> InaugLib.txt;
	  FauxYes=1;
     else
	  echo "FauxFileTreeTestDirP not found." | tee -a ${RecordTheSetup};
	  FauxYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(f) A BASH script to run from the command line to use the library.                     ==     Lister.sh
LibraryRUN="Lister.sh";
echo "This is *thing* requested: ${LibraryRUN}" | tee -a ${RecordTheSetup};
     
     if [ -x ${NewBetter}${LibraryRUN} ]; then
	  echo "YESH!!! It Lives! ${LibraryRUN}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  MainRUNxScriptYes=1;
     else
	  echo "Main Library RUN .sh script not found." | tee -a ${RecordTheSetup};
	  MainRUNxScriptYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(g) A Directory To Move *InstallationRecord.txt into, as well as *ToEraseInaugLib.sh*  ==  InstallRecord_UninstallScript
InstallEraseDIR="InstallRecord_UninstallScript";
echo "This is *thing* requested: ${InstallEraseDIR}" | tee -a ${RecordTheSetup};
     
     if [ -d ${NewBetter}${InstallEraseDIR} ]; then
	  echo "YESH!!! It Lives! ${InstallEraseDIR}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  InstallEraseYes=1;
     else
	  echo "InstallRecord_UninstallScript directory not found." | tee -a ${RecordTheSetup};
	  InstallEraseYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

# 14(h) A Directory To Move miscellaneous files from default config to *ReadyToUse* config    ==  LibScripts
LibScriptsDIR="LibScripts";
echo "This is *thing* requested: ${LibScriptsDIR}" | tee -a ${RecordTheSetup};
     
     if [ -d ${NewBetter}${LibScriptsDIR} ]; then
	  echo "YESH!!! It Lives! ${LibScriptsDIR}" | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  LibScriptsDIRYes=1;
     else
	  echo "LibScriptsDIR directory not found." | tee -a ${RecordTheSetup};
	  LibScriptsDIRYes=0;
     fi

echo "" | tee -a ${RecordTheSetup};

echo "Next confirm all 48 scripts were extracted correctly." | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 14(i) Loop Through Confirming 48 LibMems extracted successfully.
while IFS="" read -r LINE

     do

     ThisFile=${LINE};
     
	  if [ -x ${NewBetter}${ThisFile} ]; then
	       let $((Just48=$Just48+1));
	       echo "YESH!!! It Lives! ${ThisFile}. Count = ${Just48}." | tee -a ${RecordTheSetup};
	  else
	       echo "Library Member # ${Just48} not found." | tee -a ${RecordTheSetup};
	  fi
	  
     let $((CheckListCount=$CheckListCount+1));
     MembersYes=1;
     
done < ${NewBetter}zFileList.txt;

echo "" | tee -a ${RecordTheSetup};
  
# 15. 48 weensy teensy shell scripts each of which creates a list of some sort or another.
     # So what needs to happen is every one of the *Inaugural Library* Members, needs to be opened,
     # and the path which is default/placeholder stuff replaced by LIVE ** USER ** Path.
	  # IE.:
	  #		/home/innocentxlii/PLAY/LibTESTxOutputFiles/FNPLS_Data.txt
	  # becomes ::
	  #		/home/NewUSER/SomeDir/MoarFolder/INAUG_LIB/LibTESTxOutPutFiles/FNPLS_Data.txt

# Set up outter loop which will read package~supplied file *zFileList.txt* in order to know to only
# process from *INAUG_LIB* directory, the actual 48 Library Members/scripts

while IFS="" read -r LINE

     do

     # assign filename to var
     Oneline="$LINE";

     # incr checklist counter and set filelooper counter running
     let $((CheckListCount=$CheckListCount+1));
     let $((NumItemsHandled=$NumItemsHandled+1));
     
     # Create Temp File to write contents + revised contents into.
     Temp="Temp";
     TFile=(${Temp}${NumItemsHandled});
     touch ${TFile};     
    
     echo "Library Item # ${NumItemsHandled} being configured..." | tee -a ${RecordTheSetup};
     echo "*****************************************************************" | tee -a ${RecordTheSetup};

     LineNum=0;
     
	  while IFS="" read -r LINE
	  
	       do
	       
	       # Grab a line from original file, to revise if needed
	       Processing="$LINE";
	       
	       # Define the Directory for Output from running the members
	       LibTestDir="LibTESTxOutPutFiles/";
	       
	       # Need to *process* this portion of every file : /home/innocentxlii/PLAY/LibTESTxOutputFiles/FRFB_Data.txt
	       GotHelp=$(echo "${Processing}" | sed "s,\(\/home\/innocentxlii\/PLAY\/LibTESTxOutputFiles\/\)\(.*_Data.txt\)$,$NewBetter$LibTestDir\2,");

	       # For *InstallationRecord.txt* file
	       echo "${GotHelp}" | tee -a ${RecordTheSetup};

	       # The actual temp file write of lines both revised or untouched, from original file
	       echo "${GotHelp}" >> ${NewBetter}${TFile};
	       
	  done < ${Oneline};
	  
	  # Delete original file
	  rm -v ${NewBetter}${Oneline};
	  
	  # Rename tempfile using *move*, [move in place?! you UNIX guys were so awesome, sheesh] to original name
	  mv $NewBetter$TFile $NewBetter$Oneline;
	  
	  # Set permissions so the library can use it
	  chmod u+x $NewBetter$Oneline;

     echo "********************************************************************" | tee -a ${RecordTheSetup};
     echo "" | tee -a ${RecordTheSetup};
     Provisioning48Success=1;
     
done < ${NewBetter}zFileList.txt;

# 16. Set permissions on Directories

# 16(a) Perform *cd* to set permissions on InstallRecord_UninstallScript directory
cd $NewBetter$ToAccessInstDelDir;
chmod u+x $NewBetter$ToAccessInnstDelDir;
cd ..;

# 16(b) Perform *cd* to set permissions on LibScripts/ directory
cd $NewBetter$ToAccessLibScripts;
chmod u+x $NewBetter$ToAccessLibScripts;
cd $NewBetter;

# 17. Check returned to Lib main dir OK
echo "" | tee -a ${RecordTheSetup};
echo "Whew, back to *INAUG_LIB OK* : print working directory = $PWD." | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 18. Move a few files to safety
# 18(a). Move *ToEraseInaugLib.sh*
if [ "${UninstallYes}" == 1 ] && [ "${InstallEraseYes}" == 1 ]; then

     mv $DeleteLibReady $NewBetter$ToAccessInstDelDir$DeleteLibReady;
     
     if [ -f "${NewBetter}${ToAccessInstDelDir}${DeleteLibReady}" ]; then
          echo "Moved file *ToEraseInaugLib.sh* to InstallRecord_UninstallScript directory." | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  SuccessMV1=1;
     else
	  echo "An attempt to move *ToEraseInaugLib.sh* out of PWD did not work." | tee -a ${RecordTheSetup};
	  SuccessMV1=0;
     fi
fi

# 18.(b) Move README
if [ "${ReadMeYes}" == 1 ] && [ "${LibScriptsDIRYes}" == 1 ]; then

     mv $CnfrmREADME $NewBetter$ToAccessLibScripts$CnfrmREADME;
     
     if [ -f "${NewBetter}${ToAccessLibScripts}${CnfrmREADME}" ]; then
          echo "Moved file *README* to LibScripts directory." | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  SuccessMV2=1;
     else
	  echo "An attempt to move *README* out of PWD did not work." | tee -a ${RecordTheSetup};
	  SuccessMV2=0;
     fi
fi

# 18(c) Move zFileList.txt
if [ "${xFileListYes}" == 1 ] && [ "${LibScriptsDIRYes}" == 1 ]; then

     mv $CnfrmFL $NewBetter$ToAccessLibScripts$CnfrmFL;
     
     if [ -f "${NewBetter}${ToAccessLibScripts}${CnfrmFL}" ]; then
          echo "Moved file *zFileList.txt* to LibScripts directory." | tee -a ${RecordTheSetup};
	  let $((CheckListCount=$CheckListCount+1));
	  SuccessMV3=1;
     else
	  echo "An attempt to move *zFileList.txt* out of PWD did not work." | tee -a ${RecordTheSetup};
	  SuccessMV3=0;
     fi
fi

echo "" | tee -a ${RecordTheSetup};

# InaugLib.txt can stay put; in case another install is required.  It is basically just a beacon.
# [ setupInaug.sh ] ( Probably should not try moving this while running, Duh~OH! How will THAT get Handled? )
# Be nice to have it out of Lib main dir.

# 19. Calculate Manually, *Expected* of *CheckInstallCount*       11:58pm. SHOULD = 114
echo "What is, *CheckListCount?* = $CheckListCount." | tee -a ${RecordTheSetup};

# 20. If/Then compare expected, actual.
if [ "${CheckListCount}" == 114 ]; then
     echo "CheckListCount 114 was the expected." | tee -a ${RecordTheSetup};
     OKxCheckListVal=1;
else
     echo "A little sketchy, a count was off expected value." | tee -a ${RecordTheSetup};
     OKxCheckListVal=0;
fi
echo "" | tee -a ${RecordTheSetup};

# 21. Use new Library Member, *DNLB* WHICH, should create a file, *DNLB_Data.txt*
# in *INAUG_LIB* subDirectory *LibTESTxOutPutFiles* having in it a list of Directories under *INAUG_LIB*
echo "A few lines of TEST data:" | tee -a ${RecordTheSetup};

# 21.(a) run it
./DNLB.sh;

# 21.(b) Open file it produces, the DATA file in *LibTESTxOutPutFiles* dir.: Compare Supplied~Package value
# These steps confirm useability of the installed new copies of original 48 library scripts
TstA="FauxFileTreeTestDirP";
TstB="InstallRecord_UninstallScript";
TstC="LibScripts";
TstD="LibTESTxOutPutFiles";

while IFS="" read -r LINE

     do
     
     FWrk=${LINE};

     if [ "${FWrk}" == "${TstA}" ] || [ "${FWrk}" == "${TstB}" ] || [ "${FWrk}" == "${TstC}" ] || [ "${FWrk}" == "${TstD}" ]; then
	  echo "${FWrk}" >> ${RecordTheSetup};
	  ContentOK=1;
	  SetDeleteTESTFileFlag=7;
     else
	  echo "Hrm... the subfolders may be missplaced." | tee -a ${RecordTheSetup};
	  ContentOK=0;
     fi

done < ${NewBetter}${LibTestDir}/DNLB_Data.txt;

echo "" | tee -a ${RecordTheSetup};

# 21(d) Cleanup after test so User has tidy empty folder
if [ "${SetDeleteTESTFileFlag}" == 7 ]; then
     echo "Content generated by Library Member checks O.K.Shell.  God Help You If You GET That Punference!" | tee -a ${RecordTheSetup};
     echo "" | tee -a ${RecordTheSetup};
     echo "Deleting testfile *DNLB_Data.txt* to leave clean directory." | tee -a ${RecordTheSetup};
     rm -v ${NewBetter}${LibTestDir}/DNLB_Data.txt;
fi
echo "" | tee -a ${RecordTheSetup};

# 22. Final check setup check vars
let $((Arithmatic=$InstallTXTxOK+$ReadMeYes+$UninstallYes+$xFileListYes+$FauxYes+$MainRUNxScriptYes+$InstallEraseYes+$LibScriptsDIRYes\
+$MembersYes+$Provisioning48Success+$OKxCheckListVal+$ContentOK));
echo "${Arithmatic} was obtained as final check. 12, Expected." | tee -a ${RecordTheSetup};
echo "" | tee -a ${RecordTheSetup};

# 23. Move InstallationRecord.txt and resume logging setup
mv $RecordTheSetup $NewBetter$ToAccessInstDelDir$RecordTheSetup;
cd $NewBetter$ToAccessInstDelDir;
chmod u+x $NewBetter$ToAccessInstDelDir$RecordTheSetup;

# 24. Test file : If permissions okay will be made, written to
touch testfilemaybedeleted.txt;
WeWereWeWere="testfilemaybedeleted.txt";
chmod u+x $NewBetter$ToAccessInstDelDir$WeWereWeWere;
echo "Visited: chmod set, *InstallationRecord.txt*: allow continued logging of setup." >> ${NewBetter}${ToAccessInstDelDir}testfilemaybedeleted.txt;

# 25. Assign Path for InstallRecord_UninstallScript to shorter varname
ShrtPthNm=($NewBetter$ToAccessInstDelDir$RecordTheSetup);
echo "TEST of *ShrtPthNm* = ${ShrtPthNm}." | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};

# 26. Nearly done message
echo "InstallationRecord.txt file made during this setup is in    /InstallRecord_UninstallScript/   subDirectory." | tee -a ${ShrtPthNm};
echo "Note that is also where you can *cd* to and run [ ~# ./ToEraseInaugLib.sh   ] anytime." | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};

# 27. Get finish time
T="$(($(date +%s%N)-T))";

# Seconds
S="$((T/1000000000))";
# Milliseconds
M="$((T/1000000))";

# 28. Write confirming time and *DONE*
echo "Finished Installation, in ""$((S%60))"".""${M}"" seconds." | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};
echo "Inaugural Library is installed and ready to use like a USER!  Enjoy!" | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};

# 29. Visual for running
echo "@ command prompt: [    ../../INAUG_LIB/ # ./Lister.sh       ]" | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};
echo "" | tee -a ${ShrtPthNm};
exit 0;
