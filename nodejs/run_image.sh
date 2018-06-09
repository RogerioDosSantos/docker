#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

echo "### Start Gluster machine from docker image ###"

docker run -it --name alpine --restart=unless-stopped \
  rogersantos/alpine
