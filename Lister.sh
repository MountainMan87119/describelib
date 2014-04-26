#!/bin/bash

# 1. A few vars for general functionality:

# Time/ HrMin Format
Normal="$(date +%I":"%M%p)";
# Human readable DATE
date_MyPreferred=$(date +"Date: "%A", "%d" "%B", 20"%y".");
# Seconds since UNIX epoch
LittleTime="$(date +%s)";
# UnixEpoch + Nanoseconds
T="$(date +%s%N)";

# 2. Directories hereabouts:

# Where:
Accretion="/";
OverAeons=($PWD);
EhWhat=(${OverAeons}${Accretion});

# Where we want to start:
while IFS="" read -r LINE
	do
	DestinationDir=${LINE};
done < ${EhWhat}/InaugLib.txt;

# So go there:
cd ${DestinationDir};

# 3. Session Begin Dialogue
echo "Starting an InaugLib Session : $date_MyPreferred, $Normal."

# one of a couple ways to TEST the interactive or not state
if [ -z "$PS1" ]; then
         echo Welcome to *The Lister* 
   else
         echo This shell is interactive
fi


MY_PROMPT='#>(LH=Help)#> '

while :
	do
	
	Guard=0;
	MyExit="OUT";
	echo -n "$MY_PROMPT";
	read line;
	TakeLine=${line}

	if [ "${line}" == "OUT" ]; then
		break;
	fi

	Part2woFirst=".sh";
	Part1ne="${line}";
	DefineTermString=(${Part1ne}${Part2woFirst});

	if [ -x ${EhWhat}${DefineTermString} ]; then
		${EhWhat}${DefineTermString};
		Guard=12;
	fi

	if (( Guard != 12 )); then
		eval $line; 
	fi
done

echo "Now can we end Gracefully?  THX."

T="$(($(date +%s%N)-T))"

# Seconds
S="$((T/1000000000))"
# Milliseconds
M="$((T/1000000))"

echo "Finished Mucking About, In This Wee Time:" "$((S/3600%24))"" Hours, ""$((S/60%60))"" Minutes, ""$((S%60))"".""${M}"" seconds.";


