# dm-crypt Image
#
# For usage please see the following support files:
#   ./compile_image.sh
#   ./run_image.sh

FROM rogersantos/ubuntu
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

# Remove the interactive mode so the cryptsetup package will not ask language questions
RUN export DEBIAN_FRONTEND=noninteractive

#NOTE: Could not build this image because the cryptsetup requires interactive installation that I could not disable.
# I am building this image with the commit
RUN apt-get update \
  && apt-get install -y \
      cryptsetup 

# Put the interactive mode back to normal
RUN unset DEBIAN_FRONTEND

ENTRYPOINT /bin/bash
