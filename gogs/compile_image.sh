#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"

echo "### Git - Image Builder ###"

echo ""
echo "- build image -"
docker build -t "rogersantos/git" .

