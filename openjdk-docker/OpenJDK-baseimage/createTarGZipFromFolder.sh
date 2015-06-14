#!/bin/bash

set -eu

cd ..

tar cvfz OpenJDK9-baseimage-folder.tar.gz OpenJDK-baseimage/

mv OpenJDK9-baseimage-folder.tar.gz OpenJDK-baseimage

cd OpenJDK-baseimage/