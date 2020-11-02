ARG elixir_version

FROM hazyai/elixir:${elixir_version}-alpine

# VERSION 01

RUN apk --no-cache --update add \
    build-base \
    bash \
    git \
    openssh-client \
    nodejs \
    nodejs-npm \
    libsodium-dev \
    tzdata \
    python3 \
    python \
    sqlite-dev \
    curl \
    && mix do local.hex --force, local.rebar --force \
    && cp /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apk del tzdata
