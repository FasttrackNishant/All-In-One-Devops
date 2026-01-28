#!/bin/bash


cnt=6

for i in {1..10}
do
	if [[ $i -eq $cnt ]]
	then
		echo "Element found"
		break;
	else
		echo "Not found"
	fi
done
