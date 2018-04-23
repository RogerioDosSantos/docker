#!/bin/bash

#Go to the current file folder
cd "$(dirname "$0")"

echo "### Ubuntu x86 - Image Builder ###"

echo ""
echo "- build image -"
docker build -t "rogersantos/ubuntu-x86" .

