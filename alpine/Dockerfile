# Alpine image
#
# Alpine is an tiny linux
#
# For usage please see the following support files:
#   ./compile_image.sh
#   ./run_image.sh

FROM library/alpine:3.5
MAINTAINER Roger Santos (http://rogeriodossantos.github.io)

WORKDIR /root/

# RUN apk add --no-cache bash
RUN apk add --update bash && rm -rf /var/cache/apk/*

ENTRYPOINT /bin/bash
