#!/bin/bash

# we have to do contine here

for i in {1..10}
do
	let rem=i%2
	if [[ rem -eq 0 ]]
	then
		continue;
	else
		echo "$i"
	fi
	echo "Last mein aaya"
done
