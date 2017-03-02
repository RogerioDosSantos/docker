#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "### Start Vim machine from docker image ###"

docker run -it --name vim \
  -v ~/host:/root/host \
  -v ~/.linux:/root/.linux \
  rogersantos/vim
