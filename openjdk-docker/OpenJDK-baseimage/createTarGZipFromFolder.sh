#!/bin/bash

set -eu

cd ..

tar cvfz OpenJDK-baseimage-folder.tar.gz OpenJDK-baseimage/

mv OpenJDK-baseimage-folder.tar.gz OpenJDK-baseimage

cd OpenJDK-baseimage/