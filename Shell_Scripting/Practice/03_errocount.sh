#!/bin/bash
# Shebang: tells the system to execute this script using Bash shell

# Read the first command-line argument as file name
FILE=$1

# Check if the file exists and is a regular file
if [[ ! -f $FILE ]]
then
    echo "File Not Found"
    exit 1   # Exit early if file does not exist
fi

# ------------------------------
# APPROACH 1: Print only ERROR lines (case-sensitive)
# ------------------------------
# Reads file line by line and prints lines containing "ERROR"
# This is useful when you want to visually inspect error logs

# while IFS= read -r line;
# do
#     if [[ $line == *"ERROR"* ]]
#     then
#         echo "$line"
#     fi
# done < "$FILE"

# ------------------------------
# APPROACH 2: Count ERROR lines (case-sensitive)
# ------------------------------

Count=0  # Initialize error counter

# Read file line by line safely
# IFS=   -> preserves leading/trailing spaces
# -r     -> prevents backslash escaping
while IFS= read -r line;
do 
    # Check if line contains exact uppercase "ERROR"
    if [[ "$line" == *"ERROR"* ]]
    then
        ((Count++))   # Increment counter
    fi
done < "$FILE"

echo "No of errors in the file (ERROR only): $Count"

# ------------------------------
# APPROACH 3: Case-insensitive counting using Bash
# ------------------------------

Count=0  # Reset counter

while IFS= read -r line;
do 
    # ${line,,} converts the entire line to lowercase
    # This allows matching: ERROR, Error, eRrOr, etc.
    if [[ "${line,,}" == *"error"* ]]
    then
        ((Count++))
    fi
done < "$FILE"

echo "No of errors in the file (case-insensitive): $Count"

# ------------------------------
# APPROACH 4: Using grep (BEST & MOST PRACTICAL)
# ------------------------------

# -i  -> case-insensitive search
# wc -l -> count number of matching lines
ERROR_COUNT=$(grep -i "error" "$FILE" | wc -l)

echo "Total ERROR lines using grep: $ERROR_COUNT"

exit 0  # Successful script termination
