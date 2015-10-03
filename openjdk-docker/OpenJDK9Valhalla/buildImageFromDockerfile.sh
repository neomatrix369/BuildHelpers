#!/bin/sh

set -eu

DOCKER_IMAGE="adoptopenjdk/openjdk9-valhalla-full-image"

echo "Building image '$DOCKER_IMAGE' from Dockerfile"
docker build -t $DOCKER_IMAGE .
