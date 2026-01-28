#!/bin/bash

#Switch Case

echo "Choose a option"

echo "a for the date printing"
echo "b for the ls"


read choice

case $choice in
	a) date;;
	b)	
		ls
		echo "second option"
		pwd
		;;
	*) echo "Sahi input do"
esac
