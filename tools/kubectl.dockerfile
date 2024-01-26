FROM --platform=linux/amd64 alpine:3.19.0

RUN apk update && apk upgrade

RUN apk add --no-cache \
    bash \
    curl \
    git \
    openssh-client \
    openssl \
    py3-pip \
    python3 \
    sshpass \
    tar \
    unzip \
    wget

RUN apk add --no-cache \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main \
    kubectl=1.29.0-r0

WORKDIR /kubernetes