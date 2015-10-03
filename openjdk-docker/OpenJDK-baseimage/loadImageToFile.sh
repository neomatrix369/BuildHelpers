#!/bin/bash

set -eu

IMAGE_ARCHIVE_FILE="openjdk-base-image.tar.gz"

echo "Loading docker image from $IMAGE_ARCHIVE_FILE."
docker load < $IMAGE_ARCHIVE_FILE
echo "Finished loading docker image into local repository."