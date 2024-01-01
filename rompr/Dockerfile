FROM trafex/php-nginx:latest

# Change user and workdir for changes
USER root
WORKDIR /

# Install missing packages
RUN apk add --no-cache php82-pdo php82-pdo_sqlite php82-simplexml

RUN rm -rf /var/cache/apk/*

# Get Rompr
ARG ROMPR_VERSION=2.08
ARG ZIP_FILE=rompr-$ROMPR_VERSION.zip
ARG FETCH_URL=https://github.com/fatg3erman/RompR/releases/download/$ROMPR_VERSION/$ZIP_FILE

ADD $FETCH_URL /
RUN unzip $ZIP_FILE && \
    mkdir -p /rompr/prefs /rompr/albumart

# Change ownerchip
RUN chown -R nobody /rompr

# Fix undefined constant GLOB_BRACE 
# https://bugs.php.net/bug.php?id=72095
RUN grep -Rl 'GLOB_BRACE' /rompr | xargs sed -i 's/GLOB_BRACE/0/g'

# Move and cleanup
RUN rm -rf /var/www/html && mv /rompr /var/www/html && rm /$ZIP_FILE

# Switch back user and workdir
WORKDIR /var/www/html
USER nobody
