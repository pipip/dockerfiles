#FROM alpine:3.19.0
FROM alpine:latest

#ARG SNAPCAST_VERSION=0.27.0-r4
ENV HOST 192.168.1.11
ENV SOUNDCARD default
ENV NAME instancename

# Add testing libraries: source of the librespot binary
#RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories

RUN apk add --no-cache \
    bash \
    wget \
    sed \
    snapcast-client

RUN /usr/bin/snapclient -v

#ENTRYPOINT ["snapclient -h $HOST -s $SOUNDCARD --hostID $NAME"]
ENTRYPOINT ["/bin/bash","-c","/usr/bin/snapclient -h $HOST -s $SOUNDCARD --hostID $NAME"]
