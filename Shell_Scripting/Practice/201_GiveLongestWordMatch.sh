#!/bin/bash

# Purpose: Find the longest word matching a pattern in a file
# Usage: ./longest_word.sh <file> <pattern>

FILE="$1"
PATTERN="$2"

# Validate arguments
if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <file> <pattern>"
  exit 1
fi

# Validate file
if [[ ! -f "$FILE" ]]; then
  echo "Error: File not found"
  exit 1
fi

LONGEST_WORD=""

# Read file line by line
while read -r line; do
  # Split line into words
  for word in $line; do
    # Case-insensitive match
    if [[ "${word,,}" == *"${PATTERN,,}"* ]]; then
      if [[ ${#word} -gt ${#LONGEST_WORD} ]]; then
        LONGEST_WORD="$word"
      fi
    fi
  done
done < "$FILE"

# Output result
if [[ -n "$LONGEST_WORD" ]]; then
  echo "Longest matching word: $LONGEST_WORD"
else
  echo "No matching word found"
fi

exit 0
