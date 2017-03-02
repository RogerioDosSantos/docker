#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "### Start TMUX machine from docker image ###"

docker run -it --name tmux \
  -v ~/.linux:/root/.linux \
  -v ~/host:/root/host \
  rogersantos/tmux
