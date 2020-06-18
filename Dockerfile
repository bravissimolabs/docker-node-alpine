FROM mhart/alpine-node:14.4
MAINTAINER Paul Bill <paul.bill@bravissimo.com>

RUN apk add --no-cache bash

ARG TZ='Europe/London'

ENV DEFAULT_TZ ${TZ}

RUN apk upgrade --update \
  && apk add -U tzdata \
  && cp /usr/share/zoneinfo/${DEFAULT_TZ} /etc/localtime \
  && apk del tzdata \
  && rm -rf \
  /var/cache/apk/*

CMD ["bash"]