#!/bin/bash

export STAGING=1

die() {
  echo $@
  exit 1
}

if [[ -z "$USERNAME" ]] ; then
  die "USERNAME not specified"
fi

if [[ -z "$APIKEY" ]] ; then
  die "APIKEY not specified"
fi

if [[ ! -f /etc/rackspace-monitoring-agent.cfg ]] ; then
  /usr/bin/rackspace-monitoring-agent -U $USERNAME -K $APIKEY -A --setup
fi

/usr/bin/rackspace-monitoring-agent -D
