# https://github.com/tsuru/docker-nginx-with-modules/blob/master/Dockerfile
ARG nginx_version=stable
FROM nginx:${nginx_version} AS build

SHELL ["/bin/bash", "-c"]

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-suggests \
       libluajit-5.1-dev libpam0g-dev zlib1g-dev libpcre3-dev \
       libexpat1-dev git curl build-essential libxml2 libxslt1.1 libxslt1-dev autoconf libtool libssl-dev \
       unzip libmaxminddb-dev

ARG modsecurity_version=v3.0.3
RUN set -x \
    && git clone --depth 1 -b ${modsecurity_version} https://github.com/SpiderLabs/ModSecurity.git /usr/local/src/modsecurity \
    && cd /usr/local/src/modsecurity \
    && git submodule init \
    && git submodule update \
    && ./build.sh \
    && ./configure --prefix=/usr/local \
    && make \
    && make install