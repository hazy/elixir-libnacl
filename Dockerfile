FROM elixir:1.8.1-alpine

# VERSION 01

RUN apk --no-cache --update add \
    build-base \
    bash \
    git \
    openssh-client \
    nodejs \
    nodejs-npm \
    libsodium-dev \
    tzdata

RUN mix local.hex --force
RUN mix local.rebar --force
RUN cp /usr/share/zoneinfo/Etc/UTC /etc/localtime && echo "Etc/UTC" > /etc/timezone

RUN apk del tzdata

