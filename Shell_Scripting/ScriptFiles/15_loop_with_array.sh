#!/bin/bash

myArray=(1 2 3 Helo Hi)

length=${#myArray[*]}

for (( i=0;i<length;i++))
do
	echo "value is ${myArray[i]}"
done 


count=0
num=10

while [[ $count -le $num ]]
do
	echo "Number is $count"
	let count++
done


