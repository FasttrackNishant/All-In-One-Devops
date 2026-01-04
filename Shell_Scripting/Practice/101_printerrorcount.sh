#!/bin/bash


# Name
# Purpose:
# Usage:
#


FILE=$1

if [[ ! -f "$FILE" ]]
then
	echo "File Not found"
fi

COUNT=0

while IFS= read -r line;
do
	if [[ "$line" == *"ERROR"* ]]
	then
		let COUNT=COUNT+1
	fi
done < "$FILE"



echo "Number of Lines of Error count : $COUNT"
