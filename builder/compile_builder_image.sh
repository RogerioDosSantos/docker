#!/bin/bash

# if [ "$EUID" -ne 0 ]
#   then echo "Please run as root"
#   exit
# fi

# Get variables based on the configuration
cd "$(dirname "$0")"
bash_dir=$(pwd)
cd ${bash_dir}

docker build -t "rogersantos/builder" .
