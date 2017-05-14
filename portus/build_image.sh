#!/bin/bash

echo "### Portus - Image Builder ###"

if [ "$EUID" -ne 0 ]; then 
  echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

# Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo ""
echo "- Verify proxy configuration -"
local proxy_url=
local current_proxy_url="http://gateway.zscaler.net:9480" 
read -e -p "Please enter the Proxy URL: " -i "$current_proxy_url" proxy_url

echo ""
echo "- build image -"
if [[ $proxy_url != "" ]]
then
  echo "Using proxy: $proxy_url."
  docker build -t "rogersantos/portus" .
else
  docker build -t "rogersantos/portus" \
    --build-arg $proxy_url \
    .
fi

echo "Portus - Image Builder - Completed"
echo "--------------------------------"
