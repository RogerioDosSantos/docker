#!/bin/bash

# Get variables based on the configuration
cd "$(dirname "$0")"
bash_dir=$(pwd)
cd ${bash_dir}

docker build -t "rogersantos/jenkins" .
