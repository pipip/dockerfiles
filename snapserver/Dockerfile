#FROM alpine:3.19.0
FROM alpine:latest

#ARG LIBRESPOT_VERSION=0.4.2-r4
#ARG SNAPCAST_VERSION=0.27.0-r4

# Add testing libraries: source of the librespot binary
#RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories

RUN apk add --no-cache \
    bash \
    wget \
    sed \
    snapcast-server

EXPOSE 1704
EXPOSE 1780

RUN /usr/bin/snapserver -v

ENTRYPOINT ["snapserver"]
#ENTRYPOINT ["/bin/bash","-c","/usr/bin/snapserver"]
