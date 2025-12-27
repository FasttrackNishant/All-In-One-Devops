#!/bin/bash

# ============================================
# Script: create_user.sh
# Purpose: Create a Linux user with comment and
#          auto-generated password (root only)
# Usage: sudo ./create_user.sh <username> <comment>
# ============================================

# Exit immediately if a command fails
set -o errexit
set -o pipefail

# --------------------------------------------
# Check if script is run as root
# --------------------------------------------
if [[ "${UID}" -ne 0 ]]; then
    echo "❌ Error: Please run this script as root or with sudo."
    exit 1
fi

# --------------------------------------------
# Check if at least one argument (username) is given
# --------------------------------------------
if [[ "${#}" -lt 1 ]]; then
    echo "Usage: ${0} <username> <comment>"
    exit 1
fi

# --------------------------------------------
# First argument is the username
# --------------------------------------------
USERNAME="${1}"

# --------------------------------------------
# Shift to get remaining args as comment
# --------------------------------------------
shift
COMMENT="${@}"

# --------------------------------------------
# Generate a random password (timestamp based)
# --------------------------------------------
PASSWORD="$(date +%s%N)"

# --------------------------------------------
# Create the user with home directory and comment
# --------------------------------------------
useradd -c "${COMMENT}" -m "${USERNAME}"

if [[ $? -ne 0 ]]; then
    echo "❌ Failed to create user: ${USERNAME}"
    exit 1
fi

# --------------------------------------------
# Set password using chpasswd (works on Ubuntu/Debian)
# --------------------------------------------
echo "${USERNAME}:${PASSWORD}" | chpasswd

if [[ $? -ne 0 ]]; then
    echo "❌ Failed to set password for user: ${USERNAME}"
    exit 1
fi

# --------------------------------------------
# Force user to change password on first login
# --------------------------------------------
passwd -e "${USERNAME}"

# --------------------------------------------
# Display account details
# --------------------------------------------
echo "✅ User created successfully!"
echo "Username : ${USERNAME}"
echo "Hostname : $(hostname)"
echo "Password : ${PASSWORD}"
echo "⚠️  Ask the user to change password on first login."

