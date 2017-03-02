# TMUX image
#
# This image allow TMUX running in a container
#
# For usage please see the following support files:
#   ./compile_image.sh
#   ./run_image.sh

FROM rogersantos/ubuntu
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

RUN apt-get update \
  && apt-get install -y \
             tmux \
  && mkdir /root/.linux/tmux

ADD https://raw.githubusercontent.com/RogerioDosSantos/linux_environment/master/tmux/tmux.conf /root/.linux/tmux/tmux.conf

ENTRYPOINT /usr/bin/tmux
