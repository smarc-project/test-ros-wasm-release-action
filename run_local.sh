#!/bin/sh -l

git clone $1 repo

GITHUB_WORKSPACE=$(pwd)/repo ./entrypoint.sh focal noetic
