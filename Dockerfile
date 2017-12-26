FROM alpine
MAINTAINER tcely <tcely@users.noreply.github.com>

RUN apk --no-cache add bash tinc

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["/usr/sbin/tincd", "-D"]
CMD ["-d"]
