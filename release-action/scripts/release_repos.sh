#!/bin/bash -e

# Example usage: ./release_repos.sh focal noetic
# Example usage: ./release_repos.sh bionic melodic

mkdir bloom-release-debs
while read line; do
  pkg=$(echo $line | cut -c3-)
  echo "Doing ${pkg}"
  cd $pkg
  ls
  rosdep install --from-path . --ignore-src --rosdistro $2 -y
  bloom-generate rosdebian --os-name ubuntu --os-version $1 --ros-distro $2
  fakeroot debian/rules binary
  cd ..
  sudo dpkg -i ros-${2}-*.deb
  mv ros-${2}-*.deb bloom-release-debs
done < release_packages.yaml
zip -j bloom-${2}-release-deb.zip bloom-release-debs/*
ls
