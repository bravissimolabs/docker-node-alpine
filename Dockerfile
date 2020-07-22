FROM mhart/alpine-node:14.4
MAINTAINER Paul Bill <paul.bill@bravissimo.com>

ARG TZ='Europe/London'

ENV DEFAULT_TZ ${TZ}

RUN apk add --no-cache bash \
  && apk upgrade --update \
  && apk add -U tzdata \
  && cp /usr/share/zoneinfo/${DEFAULT_TZ} /etc/localtime \
  && apk del tzdata \
  && rm -rf \
  /var/cache/apk/*

CMD ["bash"]