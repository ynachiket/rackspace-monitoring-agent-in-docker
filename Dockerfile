FROM ubuntu:14.04

RUN apt-get -y install wget && \
    wget http://meta.packages.cloudmonitoring.rackspace.com/ubuntu-14.04-x86_64/rackspace-cloud-monitoring-meta-stable_1.0_all.deb && \
    dpkg -i rackspace-cloud-monitoring-meta-stable_1.0_all.deb && \
    apt-get update && \
    apt-get install -y rackspace-monitoring-agent

COPY run.sh /run.sh
COPY my_fs.yaml /etc/rackspace-monitoring-agent.conf.d/my_fs.yaml
CMD chmod +x /run.sh

ENTRYPOINT ['/run.sh']

