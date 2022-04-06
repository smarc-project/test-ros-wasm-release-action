# Test ROS release action

Do a simulated deb release of the ROS packages in the repo

## Inputs

## `ubtunu`

**Required** The ubuntu version to use. Default `"focal"`.

## `distro`

**Required** The ROS distro to use. Default `"noetic"`.

## Example usage

uses: smarc-project/test-ros-release-action@v1
with:
  ubuntu: 'focal'
  distro: 'noetic'
