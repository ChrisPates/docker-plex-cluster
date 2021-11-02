#!/bin/bash


if [ ! -f /storage/local/dhparam/dhparam-2048.pem ]; then
    if [ ! -d /storage/local/dhparam ]; then
        mkdir -p /storage/local/dhparam/
    fi
    openssl dhparam -out /storage/local/dhparam/dhparam-2048.pem 2048
fi

docker-compose pull --no-parallel
docker-compose up -d

