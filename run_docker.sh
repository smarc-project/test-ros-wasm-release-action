#!/bin/sh -e

git clone $1 repo
GITHUB_WORKSPACE=$(pwd)/repo
UBUNTU="focal"
DISTRO="noetic"

docker build -t ci-action . && docker run --env GITHUB_WORKSPACE=${GITHUB_WORKSPACE} -v ${GITHUB_WORKSPACE}:${GITHUB_WORKSPACE} -v /var/run/docker.sock:/var/run/docker.sock ci-action $UBUNTU $DISTRO
