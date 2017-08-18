FROM alpine:latest
MAINTAINER tcely <tcely@users.noreply.github.com>

RUN ln -s -v -f -n -T /host/dev/net /dev/net && apk --no-cache add bash tinc

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc

ENTRYPOINT ["/usr/sbin/tincd", "-D"]
CMD ["-d"]
