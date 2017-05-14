#!/bin/bash

echo "### Portus Image - Runner ###"

if [ "$EUID" -ne 0 ]; then 
  echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo ""
echo "- run image -"
docker run -it --name portus_data \
  # -v ~/host:/root/host \
  rogersantos/data

echo "Portus Image - Runner - Completed"
echo "-------------------------------"
