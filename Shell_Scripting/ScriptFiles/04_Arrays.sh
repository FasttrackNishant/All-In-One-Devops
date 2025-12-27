#!/bin/bash

#Array

myArray=(1 2 3 4 5 "Good Morning" "Test" 9.29)

echo "Value is -> ${myArray[3]}"

echo "All values in array -> ${myArray[*]}"

#Length of Array

echo "Length of an array -> ${#myArray[*]}"

# How to get range values

echo "Range fro 2 to 3 -> ${myArray[*]:2:3}"

#Update an array

myArray+=(100 200 300)

echo "All values in array -> ${myArray[*]}"



