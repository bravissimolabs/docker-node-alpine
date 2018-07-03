FROM mhart/alpine-node:10.5
MAINTAINER Paul Bill <paul.bill@bravissimo.com>

RUN apk add --no-cache bash

CMD ["bash"]