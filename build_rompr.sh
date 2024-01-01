#!/bin/bash
#docker build --no-cache -t pipip/mopidy -o /tmp/dockerbuild ./mopidy
#DOCKER_BUILDKIT=1 docker build --progress=plain -t pipip/mopidy:test -o /tmp/dockerbuild ./mopidy
#docker build -t pipip/mopidy:test -o /tmp/dockerbuild ./mopidy

docker buildx build \
  --progress=plain \
  --output type=image,name=pipip/rompr:latest,push=false,compression=gzip,compression-level=9 \
  ./rompr
