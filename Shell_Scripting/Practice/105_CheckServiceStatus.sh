#!/bin/bash

# Script Name: service_health.sh
# Purpose: Check if a service is running
# Usage: ./service_health.sh <service_name>

SERVICE="$1"

# Validate argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <service_name>"
  exit 1
fi

# Check service status
systemctl is-active --quiet "$SERVICE"

if [[ $? -eq 0 ]]; then
  echo "OK: $SERVICE is running"
  exit 0
else
  echo "ALERT: $SERVICE is NOT running"
  exit 2
fi
