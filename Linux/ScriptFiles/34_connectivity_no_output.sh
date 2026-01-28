#!/bin/bash

set -x
read -p "Which site do you want to ping" site

ping -c 1 $site &> /dev/null

if [[ $? -eq 0 ]]
then
	echo "Sucessful ping"
else
	echo "Failed Ping"
fi
