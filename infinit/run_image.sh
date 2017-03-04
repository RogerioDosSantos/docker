#!/bin/bash

# Verify if you are running as Sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "### Start Infinit machine from docker image ###"

docker run -it --name infinit \
  -v ~/.linux:/root/.linux \
  -v ~/host:/root/host \
  rogersantos/infinit
