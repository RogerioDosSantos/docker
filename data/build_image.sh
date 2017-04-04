#!/bin/bash

echo "### Data - Image Builder ###"

if [ "$EUID" -ne 0 ]; then 
  echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo ""
echo "- build image -"
docker build -t "rogersantos/data" .

echo "Data - Image Builder - Completed"
echo "--------------------------------"
