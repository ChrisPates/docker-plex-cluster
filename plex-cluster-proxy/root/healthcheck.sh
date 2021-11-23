#!/bin/sh -e

TARGET=localhost
CURL_OPTS="--connect-timeout 15 --max-time 100 --silent --show-error --fail"

curl ${CURL_OPTS} "http://${TARGET}:${HTTPS_PORT}/identity" >/dev/null

