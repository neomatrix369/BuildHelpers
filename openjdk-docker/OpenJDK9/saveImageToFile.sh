#!/bin/bash

set -eu

IMAGE_ARCHIVE_FILE="openjdk9-full-image.tar.gz"
DOCKER_IMAGE="adoptopenjdk/openjdk9-full-image:latest"

echo "Creating $IMAGE_ARCHIVE_FILE from Docker image $DOCKER_IMAGE"
docker save $DOCKER_IMAGE | gzip > $IMAGE_ARCHIVE_FILE
