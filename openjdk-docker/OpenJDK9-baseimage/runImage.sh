#!/bin/bash

set -eu

DOCKER_IMAGE="neomatrix369/openjdk9-base-image:latest"

echo "Checking for running docker container by name $DOCKER_IMAGE."
CONTAINER_ID=$(docker ps -a | grep $DOCKER_IMAGE | awk '{print $1}')
if [ -z $CONTAINER_ID ]; then
	echo "No container by name $DOCKER_IMAGE is currently runnng."
else
	echo "Deleting running docker container by name $DOCKER_IMAGE."
	docker rm $CONTAINER_ID
fi

echo "Running Docker image $DOCKER_IMAGE, into bash shell"
docker run -it --name openjdk9-base-image $DOCKER_IMAGE /bin/bash