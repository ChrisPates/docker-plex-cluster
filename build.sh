#!/usr/bin/env bash
 
docker buildx build -t elcrp96/plex-media-server:latest --platform linux/armhf,linux/arm64,linux/amd64 ./plex-media-server --push
docker buildx build -t elcrp96/plex-media-server:latest --platform linux/armhf,linux/arm64,linux/amd64 ./plex-cluster-manager --push
docker buildx build -t elcrp96/plex-media-server:latest --platform linux/armhf,linux/arm64,linux/amd64 ./plex-cluster-proxy --push
