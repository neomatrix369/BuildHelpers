#!/bin/bash

set -eu

cd ..

tar cvfz OpenJDK9-baseimage-folder.tar.gz OpenJDK9-baseimage/

mv OpenJDK9-baseimage-folder.tar.gz OpenJDK9-baseimage

cd OpenJDK9-baseimage/