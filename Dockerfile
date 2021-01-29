FROM docker:19.03.11

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add --no-progress --quiet --no-cache \
    gcc musl-dev curl bash \
    python3 \
    python3-dev \
    libffi-dev \
    make \
    openssl-dev \
    py3-pip \
    jq openssl; \
    pip3 install --quiet --upgrade pip awscli \
    docker-compose

ENV PATH "/root/.local/bin:${PATH}"
