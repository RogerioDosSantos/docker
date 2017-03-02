#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "### Start Git machine from docker image ###"

docker run -it --name git \
  -v ~/.linux:/root/.linux \
  -v ~/host:/root/host \
  rogersantos/git
