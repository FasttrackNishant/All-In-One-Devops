#!/bin/bash

# Monitoring the free disk space

FU=$(df -H | grep "/dev/vda1" | awk '{print $5}' | tr -d %)

if [[ $FU -gt 1 ]]
then
	echo "Warning , Disk Space is low" | mail -s "Disk Space Alert" $TO
	echo "$FU"
else
	echo "Good Dik Space"
fi

