#!/bin/bash

# Script Name: error_alert.sh
# Purpose: Alert if ERROR count crosses threshold
# Usage: ./error_alert.sh <log_file> [threshold]

LOG_FILE="$1"
THRESHOLD=${2:-10}   # Default threshold = 10 errors

# Validate arguments
if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <log_file> [threshold]"
  exit 1
fi

# Validate log file
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: Log file not found"
  exit 1
fi

# Count ERROR lines (case-insensitive)
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)

# Compare with threshold
if [[ "$ERROR_COUNT" -ge "$THRESHOLD" ]]; then
  echo "ALERT: ERROR count is $ERROR_COUNT (Threshold: $THRESHOLD)"
  exit 2
else
  echo "OK: ERROR count is $ERROR_COUNT"
  exit 0
fi
