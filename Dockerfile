FROM alpine:3.10

RUN addgroup -g 1000 doxygen \
    && adduser -g 1000 -G doxygen -s /bin/sh -D doxygen \
    && apk add --no-cache git openssh curl wget make \
    && apk add --no-cache 'doxygen<1.8.16'

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["doxygen"]
