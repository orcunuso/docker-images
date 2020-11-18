FROM alpine:3.12.1
LABEL version="20201118" \
      maintainer="Ozan Orcunus" \
      github="https://github.com/vOrcunus/docker-images"

ENV DNSIP=1.1.1.1 ARECORD=orcunus.com LOOPWAIT=5
RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
         tcpdump \
         bridge-utils \
         bind-tools \
         netcat-openbsd \
         util-linux \
         iptables \
         iputils \
         iproute2 \
         iftop \
         drill \
         apache2-utils \
         strace \
         curl \
         ethtool \
         ipvsadm \
         ngrep \
         iperf3 \
         nmap \
         nmap-nping \
         conntrack-tools \
         socat \
         git

RUN mkdir /dnsshoot \
    && chgrp -R 0 /dnsshoot \
    && chmod -R g=u /dnsshoot

ADD . /dnsshoot/
WORKDIR /dnsshoot
USER 10001
CMD ["sh","./dnsTest.sh"]

# docker build -t docker.io/orcunuso/dnsshoot:20201118 -f Dockerfile .
