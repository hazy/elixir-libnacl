# Hazy Elixir Images

Useful Elixir based images with some additional packages for CI

Included:

- Elixir
- libsodium
- nodejs
- git
- build-base

## To Update

Pick an elixir version, e.g. `1.9-alpine` then run `build.sh`, e.g.

    ./build.sh --version 1.9-alpine --push

If you want to push the new version to Docker hub, then append `--push`:

    ./build.sh --version 1.9-alpine --push