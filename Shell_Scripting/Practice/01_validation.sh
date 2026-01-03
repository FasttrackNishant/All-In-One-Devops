#!/bin/bash


if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <filename>"
  exit 1
fi


# file validation


FILE="$1"

if [[ ! -f "$FILE" ]]; then
  echo "Error: File not found"
  exit 1
fi


# directorvalidation

DIR="$2"

if [[ ! -d "$DIR" ]]; then
  echo "Error: Directory not found"
  exit 1
fi
