The objective of this image is to allow you to spin up a docker container with the rackspace monitoring agent already installed and connected to the rackspace monitoring service.

On a cloud server:

Build:

``docker build -t agent-docker .``

Run:

``docker run -d -e username=RACKSPACE_USERNAME -e apikey=RACKSPACE_API_KEY agent-docker``

Running from docker hub:

``docker run -d -e username=RACKSPACE_USERNAME -e apikey=RACKSPACE_API_KEY nachiket/rackspace-monitoring-agent-ubuntu1404``
