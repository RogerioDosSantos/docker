#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "### Start Vault machine from docker image ###"

docker run -it --name vault \
  -v ~/data/gogs:/data \
  -p 10022:22 \
  -p 10080:3000 \
  rogersantos/gogs
