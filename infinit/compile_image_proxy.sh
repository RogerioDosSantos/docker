#!/bin/bash

# Verify if you are running as Sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"

echo "### Infinit - Image Builder ###"

echo ""
echo "- build image -"
docker build -t "rogersantos/infinit" \
  --build-arg http_proxy=http://gateway.zscaler.net:9480 \
  .

