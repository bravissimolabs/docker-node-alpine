FROM mhart/alpine-node:10.5
MAINTAINER Paul Bill <paul.bill@bravissimo.com>

RUN apk add --no-cache bash
RUN apk add --update tzdata
ENV TZ Europe/London

CMD ["bash"]