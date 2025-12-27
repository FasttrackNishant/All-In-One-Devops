#!/bin/bash

#$Revision:001$
#$Sat Dec 27 15:04:34 IST 2025

#Variables
BASE="/Users/devnishant/Developer/Microsoft/Devops/All-In-One-Devops/Shell_Scripting/Projects/CompressProject"
DAYS=10
DEPTH=1
RUN=0


#Check if the director is present or not

if [[ ! -d $BASE ]]
then
	echo "Directory does not exist : $BASE"
	exit 1
fi

# If Archive folder not present then create it

if [[ ! -d $BASE/archive ]]
then
	mkdir $BASE/archive
fi

# Find the list of files larger than 20 mb

for i in `find $BASE -maxdepth $DEPTH -type f -size +1M`
do
	if [[ $RUN -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i => to file "
		gzip $i || exit 1

		mv $i.gz $BASE/archive || exit 1	
	fi
done
