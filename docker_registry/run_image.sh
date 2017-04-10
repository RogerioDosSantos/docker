#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

echo "### Start Docker Registry machine from docker image ###"

docker run -d --name docker_registry_data \
  -v /var/lib/registry \
  rogersantos/data

docker run -d --name docker_registry --restart=unless-stopped \
  -p 5000:5000 \
  --volumes-from docker_registry_data \
  rogersantos/docker_registry
