#!/bin/bash

set -eu

IMAGE_ARCHIVE_FILE="openjdk9-full-image.tar.gz"

echo "Loading docker image from $IMAGE_ARCHIVE_FILE."
docker load < gzip < $IMAGE_ARCHIVE_FILE
echo "Finished loading docker image into local repository."