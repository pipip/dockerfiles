#!/bin/bash
#docker build -t pipip/snapclient -o /tmp/dockerbuild ./snapclient

docker buildx build \
  --progress=plain \
  --output type=image,name=pipip/pikaraoke:latest,push=false,compression=gzip,compression-level=9 \
  ./pikaraoke
