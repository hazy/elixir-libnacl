#!/usr/bin/env bash

push="n"


while test $# -gt 0; do
    case "$1" in
        --version)
            elixir_version="$2"
            shift
            shift
            ;;
        --push)
            push="y"
            shift
            ;;
        *)
            shift
            ;;
    esac
done

tag="hazyai/elixir-libnacl:${elixir_version}-alpine"

docker build -f Dockerfile -t $tag --build-arg elixir_version="$elixir_version" .

if [[ "$push" == "y" ]]; then
    docker push "$tag"
fi
