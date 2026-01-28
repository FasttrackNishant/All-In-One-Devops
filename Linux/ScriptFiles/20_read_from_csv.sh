#!/bin/bash

# Read file from the csv

FILE="./SourceFiles/test.csv"

while IFS="," read test name age
do
	echo $test
	echo $name
	echo $age
done < $FILE

echo "File without first line"


FILE="./SourceFiles/test.csv"

cat ./SourceFiles/test.csv | awk 'NR!=1 {print}' | while IFS="," read test name age
do
        echo $test
        echo $name
        echo $age
done < $FILE
