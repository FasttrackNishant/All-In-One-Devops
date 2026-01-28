#!/bin/bash

# AND operator

read -p "What is your age ? " age
read -p "Your country? " country


if [[ $age -ge 18 ]] && [[ $country ==  "india" ]]
then	
	echo "You can vote"
else
	echo "No vote can be done "
fi
