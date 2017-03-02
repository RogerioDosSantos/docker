# Git image
#
# This image allow Git running in a container
#
# For usage please see the following support files:
#   ./compile_image.sh
#   ./run_image.sh

FROM rogersantos/ubuntu
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

RUN apt-get update \
  && apt-get install -y \
             git \
  && mkdir /root/.linux/git

ADD https://raw.githubusercontent.com/RogerioDosSantos/linux_environment/master/git/gitconfig /root/.linux/git/gitconfig

RUN rm -f /root/.gitconfig \
    && ln -s -n /root/.linux/git/gitconfig /root/.gitconfig

ENTRYPOINT /bin/bash
