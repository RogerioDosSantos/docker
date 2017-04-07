#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

#Go to the current file folder
cd "$(dirname "$0")"
echo "- Running from $(pwd)"

echo "### Alpine - Image Builder ###"

echo ""
echo "- build image -"
docker build -t "rogersantos/alpine" .

