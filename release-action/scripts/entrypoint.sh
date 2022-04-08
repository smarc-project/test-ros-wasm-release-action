#!/bin/bash -el

echo "Got github workspace: $GITHUB_WORKSPACE with contents:"
ls $GITHUB_WORKSPACE

/scripts/setup_system.sh $DISTRO

cd $GITHUB_WORKSPACE

ls

/scripts/release_repos.sh $UBUNTU $DISTRO
