#!/bin/bash -el

/scripts/setup_system.sh $DISTRO

cd $GITHUB_WORKSPACE

ls

/scripts/release_repos.sh $UBUNTU $DISTRO
