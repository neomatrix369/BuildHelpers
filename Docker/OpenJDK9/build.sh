#!/bin/sh

set -eu

echo "Building the Dockerfile with tag 'full-image/openjdk9'"
docker build -t full-image/openjdk9 .