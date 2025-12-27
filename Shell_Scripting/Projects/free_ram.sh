#!/bin/bash


FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=5000

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "Warning Ram Over"
else
	echo "RAM is Sufficient - $FREE_SPACE "
fi
