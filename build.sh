#!/usr/bin/env bash

#docker buildx build -t elcrp96/plex-cluster-manager:latest --platform linux/armhf,linux/arm64,linux/amd64 ./plex-cluster-manager --push
sudo docker buildx build -t elcrp96/plex-cluster-proxy:latest --platform linux/armhf,linux/arm64,linux/amd64 ./plex-cluster-proxy --push
