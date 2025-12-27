#!/opt/homebrew/bin/bash

# Key value array :

# Given -A while declaring

declare -A myArray

myArray=( [name]=dev [age]=22 [city]=pune  )

echo "Value from the key -> ${myArray[name]}"
