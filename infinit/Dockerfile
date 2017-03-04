# Infinit image
#
# This image allow Infinit running in a container
#
# Infinit Storage Platform
# An open-source decentralized software-based storage platform for modern environments.
#
# For usage please see the following support files:
#   ./compile_image.sh
#   ./run_image.sh

FROM rogersantos/ubuntu
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

RUN echo "### Install the build dependencies ###" \
  && apt-get update && apt-get install -y \
      software-properties-common \
      apt-transport-https \
&& echo "### Install the Infinit ###" \
  && apt-get update && apt-get install -y \
      fuse \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3D2C3B0B \
  && add-apt-repository "deb https://debian.infinit.sh/ trusty main" \
  && apt-get update && apt-get install -y \
      infinit \
&& echo "### Cleanup ###" \
  && apt-get remove -y \
      software-properties-common \
      apt-transport-https \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
             
# Add the infinit executables to the PATH.
ENV PATH="/opt/infinit/bin:${PATH}"

ENTRYPOINT /bin/bash
