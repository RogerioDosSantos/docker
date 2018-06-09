#!/bin/bash

image_name="rogersantos/nodejs"

#Go to the current file folder
cd "$(dirname "$0")"

echo "* $(basename "$0")"
echo " - Building ${image_name} image"

proxy="$(printenv http_proxy)"
if [ "${proxy}" == "" ]; then
  docker build -t "${image_name}" .
else
  echo " - Using Proxy ${proxy}"
  docker build --build-arg http_proxy="${proxy}" -t "${image_name}" .
fi

