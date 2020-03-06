#!/bin/bash

IMAGE=mdns-proxy

APP_DIR=./app

git clone -b master --single-branch --depth 1 git@github.com:miselin/mDNS-Unicast-Lookup.git "${APP_DIR}/"
git --git-dir="${APP_DIR}/.git/" --work-tree="${APP_DIR}/" pull

docker build -t $IMAGE --build-arg APP_DIR="${APP_DIR}/" .

