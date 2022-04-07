#!/bin/bash -el

UBUNTU=$1
DISTRO=$2

cd /release-action
echo "creating docker image with Ubuntu version: $UBUNTU and ROS version: $DISTRO"

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t release-action --build-arg ubuntu="$UBUNTU" --build-arg distro="$DISTRO" . && docker run --env GITHUB_WORKSPACE -v ${GITHUB_WORKSPACE}:${GITHUB_WORKSPACE} release-action
