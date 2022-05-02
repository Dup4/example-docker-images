#! /bin/sh

set -e -x

DATA_PATH="/root/data"

if [ -d "${DATA_PATH}" ]; then
    rm -rf "${DATA_PATH:?}"/*
    cp -a "/root/data-example"/* "${DATA_PATH}"
fi

if [ X"${1}" = X"primary" ]; then
    exec bash
else
    exec "${@}"
fi
