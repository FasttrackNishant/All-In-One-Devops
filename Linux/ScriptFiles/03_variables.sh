i#!/bin/bash

# This is to show variable names

name="Dev"
age=24

echo "My name is $name and age is $age"

name="Nishant"


echo "My New name is $name"

# Var to Store output of second command

HOSTNAME=$(hostname)

echo "Name of this machine is $HOSTNAME"

# Constant Variable

readonly COLLEGE="METRO"

echo "My College Name is $COLLEGE" 

# We are trying to change college name

COLLEGE="PUNE"

# This will give error 
