# NodeJS base image

FROM ubuntu:18.10
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

RUN apt-get update \
  && apt-get install -y \
        nodejs \
        npm \
  && apt-get autoclean

ENTRYPOINT ["/bin/bash"]
