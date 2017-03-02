# Base Ubuntu Image
#
# This image is used by other projects so we can control the versions and features.
#
# docker run \
#	rogersantos/ubuntu
#

FROM ubuntu:16.04
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

RUN mkdir /root/.linux \
          /root/host

VOLUME /root/.linux /root/host

ENTRYPOINT /bin/bash
