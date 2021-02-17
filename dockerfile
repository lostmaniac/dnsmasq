FROM alpine:edge
LABEL org.opencontainers.image.source=https://github.com/lostmaniac/dnsmasq

RUN apk update && apk --no-cache add dnsmasq

EXPOSE 53 53/udp

EXPOSE 67 67/udp

ENTRYPOINT ["/usr/sbin/dnsmasq"]

CMD ["-k","--conf-file=/etc/dnsmasq.conf"]
