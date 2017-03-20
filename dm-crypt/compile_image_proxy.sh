#!/bin/bash

echo "### dm-crypt - Image Builder ###"

if [ "$EUID" -ne 0 ]; then 
  echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo ""
echo "- build image -"
docker build -t "rogersantos/dm-crypt" \
  --build-arg http_proxy=http://gateway.zscaler.net:9480 \
  .

echo "dm-crypt - Image Builder - Completed"
echo "--------------------------------"
