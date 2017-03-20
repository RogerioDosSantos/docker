#!/bin/bash

echo "### Start Vim machine from docker image ###"

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

# Get Proxy Configuration
proxy_url=$(printenv http_proxy | sed 's|http_proxy=||g')

# Run vim docker image
if [[ ! -z $proxy_url ]]; then
  echo "Using Proxy: $proxy_url"
  docker run -it --privileged --name vim \
    -v ~/host:/root/host \
    -v ~/.linux:/root/.linux \
    -e http_proxy=$proxy_url \
    -e https_proxy=$proxy_url \
    rogersantos/vim
else
  docker run -it --privileged --name vim \
    -v ~/host:/root/host \
    -v ~/.linux:/root/.linux \
    rogersantos/vim
fi

echo "#############"
