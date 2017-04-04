#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

echo "### Start Rancher machine from docker image ###"

docker run -d --name rancher --restart=unless-stopped \
  -p 8080:8080 \
  rogersantos/rancher
