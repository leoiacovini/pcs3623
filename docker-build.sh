#!/usr/bin/env bash

echo "Starting to build application to prod..."
sbt dist
echo "Building docker image..."
docker build . -t leoiacovini/poli-room
echo "Done building docker image!"
