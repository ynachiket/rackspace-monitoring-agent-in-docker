FROM ubuntu:14.04

ENV username=RACKSPACE_USERNAME
ENV apikey=RACKSPACE_APIKEY

RUN apt-get -y install wget && \
    wget http://meta.packages.cloudmonitoring.rackspace.com/ubuntu-14.04-x86_64/rackspace-cloud-monitoring-meta-stable_1.0_all.deb && \
    dpkg -i rackspace-cloud-monitoring-meta-stable_1.0_all.deb && \
    apt-get update && \
    apt-get install -y rackspace-monitoring-agent
		
CMD rackspace-monitoring-agent -U $username -K $apikey -A --setup && \
    /usr/bin/rackspace-monitoring-agent

