#!/bin/bash

# Get args from cmd

echo "First Argument is $1"

echo "Second Argument is $2"

echo "All args -> $@"

echo "Number of Args -> $#"


for name in $@
do
	echo "ARgs are -> $name"
done
