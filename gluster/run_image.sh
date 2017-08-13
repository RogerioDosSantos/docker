#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

echo "### Start Gluster machine from docker image ###"

docker run -d --name gluster --restart=unless-stopped --privileged=true --net=host \
  -v /etc/glusterfs:z \
  -v /var/lib/glusterd:/var/lib/glusterd:z \
  -v /var/log/glusterfs:/var/log/glusterfs:z \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -v /dev:/dev \
  rogersantos/gluster
