#!/bin/bash

# Check for file name and path name

FILEPATH="./SourceFiles/tdest.csv"

if [[ -f $FILEPATH ]]
then
	echo "File Exists"
else
	echo "File not found"
fi

