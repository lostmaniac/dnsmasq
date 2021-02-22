FROM alpine:3.12
LABEL org.opencontainers.image.source=https://github.com/lostmaniac/dnsmasq

RUN apk update && apk --no-cache add dnsmasq logrotate supervisor

COPY ad.conf /opt/ad.conf

EXPOSE 53 53/udp

CMD ["/usr/bin/supervisord"]
