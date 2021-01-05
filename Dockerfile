FROM docker:19.03.11

MAINTAINER Mbanq <dev@mbanq.com>

RUN apk update -q && apk upgrade -q && apk add -q \
    cargo && \
    cargo install cfn-guard

ENV PATH "/root/.cargo/bin:${PATH}"
