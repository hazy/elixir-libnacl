FROM elixir:1.6.6-alpine

# VERSION 01

RUN apk --no-cache --update add \
    build-base \
    bash \
    git \
    openssh-client \
    nodejs \
    nodejs-npm \
    libsodium-dev

RUN mix local.hex --force
RUN mix local.rebar --force
