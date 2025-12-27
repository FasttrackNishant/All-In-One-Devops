#!/opt/homebrew/bin/bash

myVar="This is the string of the variable"

myVarLength=${#myVar}

echo "Length of myvar is ->${myVarLength}"

echo "Uppercase -> ${myVar^^}"

echo "Lowercase -> ${myVar,,}"

#To Replace String

newWord=${myVar/the/thee}
echo "New Word is -> ${newWord}"

#To Slice a String

echo "After Slice ->${myVar:5:13}"
