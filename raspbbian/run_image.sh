#!/bin/bash

echo "### Start Raspbian machine from docker image ###"

# Run the qemu multiarch support
docker run --rm --privileged multiarch/qemu-user-static:register --reset

# Run the raspbian image
docker run -it --name raspbian \
  rogersantos/raspbian
