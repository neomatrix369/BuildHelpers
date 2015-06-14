#!/bin/bash

set -eu

cd ..

tar cvfz OpenJDK9-folder.tar.gz OpenJDK9/
mv OpenJDK9-folder.tar.gz OpenJDK9/

cd OpenJDK9/