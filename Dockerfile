FROM alpine:3.4
MAINTAINER Steve Buzonas <steve@fancyguy.com>

RUN apk add --update avahi && \
    rm -rf /var/cache/api/*

USER avahi
WORKDIR /etc/avahi

ENTRYPOINT ["/usr/sbun/avahi-daemon"]
