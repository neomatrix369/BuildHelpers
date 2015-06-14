#!/bin/sh

set -eu

DOCKER_IMAGE="neomatrix369/openjdk9-full-image"

echo "Building image '$DOCKER_IMAGE' from Dockerfile"
docker build -t $DOCKER_IMAGE .
