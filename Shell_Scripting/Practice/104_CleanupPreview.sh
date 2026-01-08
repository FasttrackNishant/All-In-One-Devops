#!/bin/bash

# Script Name: cleanup_preview.sh
# Purpose: List files older than N days (safe preview)
# Usage: ./cleanup_preview.sh <directory> [days]

DIR="$1"
DAYS=${2:-7}   # Default = 7 days

# Validate arguments
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <directory> [days]"
  exit 1
fi

# Validate directory
if [[ ! -d "$DIR" ]]; then
  echo "Error: Directory not found"
  exit 1
fi

echo "Listing files older than $DAYS days in $DIR:"
find "$DIR" -type f -mtime +"$DAYS" -print

exit 0
