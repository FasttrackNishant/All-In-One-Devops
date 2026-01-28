#!/bin/bash

#Maths calculation


x=10
y=2

#Normal text

mult="$x*$y"

echo "Mult without let : mult"

#Using Let

let mult="$x*$y"
echo "Mult using let : ${mult}"


#Using Double Brackets

echo "Substraction is $((8-5))"


