FROM alpine:3.13
LABEL org.opencontainers.image.source=https://github.com/lostmaniac/dnsmasq

RUN apk update && apk --no-cache add dnsmasq logrotate runit

COPY ad.conf /opt/ad.conf

COPY start /etc/start

RUN chmod +x -R /etc/start

EXPOSE 53 53/udp

ENTRYPOINT ["/sbin/runsvdir","-P","/etc/start"]