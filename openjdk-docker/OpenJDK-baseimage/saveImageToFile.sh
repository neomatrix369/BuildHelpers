#!/bin/bash

set -eu

IMAGE_ARCHIVE_FILE="openjdk-base-image.tar.gz"
DOCKER_IMAGE="neomatrix369/openjdk-base-image:latest"

echo "Creating $IMAGE_ARCHIVE_FILE from Docker image $DOCKER_IMAGE"
docker save $DOCKER_IMAGE | gzip > $IMAGE_ARCHIVE_FILE

