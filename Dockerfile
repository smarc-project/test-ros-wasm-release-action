# Container image that runs your code
FROM rostooling/setup-ros-docker:ubuntu-bionic-ros-melodic-ros-base-latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY scripts /scripts

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/scripts/entrypoint.sh"]