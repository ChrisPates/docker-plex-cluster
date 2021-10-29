#!/bin/bash

docker pull elcrp96/plex-media-server
docker pull elcrp96/plex-cluster-proxy
#docker pull elcrp96/plex-cluster-manger

if [[! -f ~/nginx/dhparam/dhparam-2048.pem]] then
    if [[! -d ~/nginx/dhparam/ ]] then
        mkdir -p ~/nginx/dhparam/
    fi
    openssl dhparam -out ~/nginx/dhparam/dhparam-2048.pem 2048
fi

docker
