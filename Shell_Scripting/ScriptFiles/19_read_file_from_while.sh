#!/bin/bash


# FILE 

FILE="/Users/devnishant/Developer/Microsoft/Linux/SourceFiles/names.txt"

while IFS= read -r name
do
	echo "$name"
done < "$FILE"


echo "-------------"

while read myvar
do
	echo "Value from file is $myvar"
done < $FILE

