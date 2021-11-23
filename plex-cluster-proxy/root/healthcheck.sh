#!/bin/sh -e

TARGET=localhost
CURL_OPTS="--connect-timeout 15 --max-time 100 --silent --show-error --fail"

curl ${CURL_OPTS} "http://127.0.0.1:32300/identity" >/dev/null

