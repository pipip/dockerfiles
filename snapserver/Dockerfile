FROM alpine:latest

# Add testing libraries
## snapcast
RUN echo "@edge_community https://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
## librespot
RUN echo "@edge_testing https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories

RUN apk add --no-cache \
    bash \
    wget \
    sed \
    unzip \
    alsa-utils \
    alsaconf \
    snapcast-server@edge_community \
    librespot@edge_testing

EXPOSE 1704
EXPOSE 1705
EXPOSE 1780

RUN /usr/bin/snapserver -v

# Snapweb
ADD https://github.com/badaix/snapweb/releases/download/v0.8.0/snapweb.zip /usr/share/snapserver/snapweb/
RUN unzip -o '/usr/share/snapserver/snapweb/snapweb.zip' -d /usr/share/snapserver/snapweb/
RUN rm -rf /usr/share/snapserver/snapweb/snapweb.zip

ENTRYPOINT ["/bin/bash","-c","nice -n -20 /usr/bin/snapserver"]
