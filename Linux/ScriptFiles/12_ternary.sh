#!/bin/bash

# useing the ternary -> condition1 && condition2 || condition3

read -p "Your age" age


[[ $age -gt 18 ]] && echo "Adult hoon" || echo "Nahi hoon"

 
