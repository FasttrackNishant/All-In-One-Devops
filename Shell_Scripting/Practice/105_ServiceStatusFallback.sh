#!/bin/bash

PROCESS="$1"

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <process_name>"
  exit 1
fi

if pgrep "$PROCESS" > /dev/null; then
  echo "OK: $PROCESS is running"
  exit 0
else
  echo "ALERT: $PROCESS is NOT running"
  exit 2
fi
