#! /bin/bash

TOP_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

docker run \
    -it \
    -d \
    --name="example" \
    -v "${TOP_DIR}/data":/root/data \
    example
