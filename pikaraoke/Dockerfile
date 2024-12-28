FROM python:alpine

RUN apk add --no-cache --upgrade \
	git \
	build-base \
	python3-dev \
	linux-headers \
	ffmpeg \
	figlet \
	shadow

RUN set -ex \
pip install --no-cache-dir --break-system-packages --upgrade pip wheel \
 && pip install --no-cache-dir --break-system-packages --upgrade \
      poetry \
  && echo "**** cleanup ****" \
  && rm -rf \
    /tmp/*

RUN mkdir /pikaraoke-songs

WORKDIR /opt

RUN git clone https://github.com/vicwomg/pikaraoke.git
#RUN git clone -b feature-293-dockerised https://github.com/Jamalarm/pikaraoke.git

WORKDIR /opt/pikaraoke

RUN poetry install

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
#RUN chmod +x /opt/pikaraoke/scripts/entrypoint.sh

EXPOSE 5555 5556

VOLUME "/pikaraoke-songs"

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["/opt/pikaraoke/scripts/entrypoint.sh"]
