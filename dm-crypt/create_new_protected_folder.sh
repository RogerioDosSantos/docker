#!/bin/bash

echo "### dm-crypt - New Protected Folder ###"

# Ensure that run as root
if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

# Go to the directory where the bash file is
cd "$(dirname "$0")"
echo "Running from $(pwd)"

# Exit on any non-zero status.
trap 'exit' ERR
set -E

# Get User information
file_dir="~/host/safe"
folder_dir="~/host/safe"
name="safe01"

# Create a Non-Sparse Empty File
dd if=/dev/urandom of=/root/test3 bs=1M count=512

echo "#############"
