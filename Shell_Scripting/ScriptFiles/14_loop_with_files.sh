#!/bin/bash


# Getting value from the file name.txt

FILE="/Users/devnishant/Developer/Microsoft/Linux/SourceFiles/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name"
done




# Read file line by line
# Using while loop


while IFS= read -r name
do
	echo "Lines is -> $name"
done < "$FILE"
