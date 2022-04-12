#!/bin/bash

git clone $1 repo
UBUNTU="focal"
DISTRO="noetic"

GITHUB_WORKSPACE=$(pwd)/repo ./entrypoint.sh $UBUNTU $DISTRO
