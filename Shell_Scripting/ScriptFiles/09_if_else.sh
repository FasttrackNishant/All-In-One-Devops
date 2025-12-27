#!/bin/bash

read -p "Enter your marks" marks

echo "${marks}"

if [ $marks -gt 40 ]
then
	echo "You are pass"
else
	echo "Failed"
fi

# Using double bracket

echo "Double Braket"

read -p "Enter your marks:" marks

if [[ $marks -gt 90 ]]
then
	echo "Topper"
else
	echo "Fail"
fi

#Using Elif

if [[ $marks -gt 90 ]]
then
	echo "Your are topper"
elif [[ $marks -eq 50 ]]
then
	echo "Repeat Karo"
else
	echo "Tumse nahi hoga"
fi
