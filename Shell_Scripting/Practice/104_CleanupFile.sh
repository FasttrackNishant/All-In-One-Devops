#!/bin/bash

# Script Name: cleanup_delete.sh
# Purpose: Delete files older than N days (after verification)
# Usage: ./cleanup_delete.sh <directory> [days]

DIR="$1"
DAYS=${2:-7}

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <directory> [days]"
  exit 1
fi

if [[ ! -d "$DIR" ]]; then
  echo "Error: Directory not found"
  exit 1
fi

echo "Deleting files older than $DAYS days in $DIR:"
find "$DIR" -type f -mtime +"$DAYS" -print -delete

exit 0
