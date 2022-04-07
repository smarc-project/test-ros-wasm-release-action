#!/bin/bash -el

/scripts/setup_system.sh $DISTRO

cd $GITHUB_WORKSPACE

/scripts/release_repos.sh $UBUNTU $DISTRO
