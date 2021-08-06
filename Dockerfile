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
    ansible \
    jq openssl; \
    pip3 install --quiet --upgrade pip awscli boto3 docker-compose; \
    ansible-galaxy collection install community.aws amazon.aws community.general community.docker; \
    mkdir /etc/ansible/

COPY ansible.cfg mkdir /etc/ansible/

ENV PATH "/root/.local/bin:${PATH}"
