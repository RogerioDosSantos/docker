#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi


echo "### Start Raspbian machine from docker image ###"

# Run the qemu multiarch support
docker run --rm --privileged multiarch/qemu-user-static:register --reset

# Run the raspbian image
docker run -it --name raspbian \
  rogersantos/raspbian
