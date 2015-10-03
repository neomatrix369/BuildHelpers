#!/bin/bash

set -eu

DOCKER_IMAGE="adoptopenjdk/openjdk9-valhalla-full-image:latest"

echo "Checking for running docker container by name $DOCKER_IMAGE."
CONTAINER_ID=$(docker ps -a | grep $DOCKER_IMAGE | awk '{print $1}')
if [ -z $CONTAINER_ID ]; then
        echo "No container by name $DOCKER_IMAGE is currently runnng."
else
        echo "Deleting running docker container by name $DOCKER_IMAGE."
        docker rm $CONTAINER_ID
fi

echo "Running docker image $DOCKER_IMAGE, into bash shell."

if [ $OSTYPE == 'msys' ]; then
  echo "Host OS is Windows."
  docker run -it --name openjdk9 $DOCKER_IMAGE bash
else
  docker run -it --name openjdk9 $DOCKER_IMAGE /bin/bash
fi
