FROM elixir:1.6.6-alpine

# VERSION 01

apk --no-cache --update add \
	 build-base \
	 bash \
	 git \
	 nodejs \
	 nodejs-npm \
	 libsodium-dev

mix local.hex --force
mix local.rebar --force
