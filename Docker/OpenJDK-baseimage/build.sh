#!/bin/sh

set -eu

echo "Building the Dockerfile with tag 'base-image/openjdk9'"
docker build -t base-image/openjdk9 .