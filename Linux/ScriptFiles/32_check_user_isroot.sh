#!/bin/bash

# Check User is Root

if [[ $UID -eq 0 ]]
then
	echo "User is root"
else
	echo "Non Root User"
fi
