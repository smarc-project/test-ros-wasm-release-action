#!/bin/sh -l

# Example usage: ./release_repos.sh focal noetic
# Example usage: ./release_repos.sh bionic melodic

/scripts/setup_system.sh $2

cd $GITHUB_WORKSPACE

/scripts/release_repos.sh $1 $2
