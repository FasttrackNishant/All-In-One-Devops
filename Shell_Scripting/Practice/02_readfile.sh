#!/bin/bash

FILE=$1

echo "file is : $FILE"

while read -r line; 
do
  echo "$line"
done < "$FILE"
