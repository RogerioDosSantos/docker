#!/bin/bash

echo "### Data Image - Runner ###"

if [ "$EUID" -ne 0 ]; then 
  echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo ""
echo "- run image -"
docker run -it --name data \
  -v ~/.linux:/root/.linux \
  -v ~/host:/root/host \
  rogersantos/data

echo "Data Image - Runner - Completed"
echo "-------------------------------"
