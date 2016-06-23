#!/bin/bash

SERVER_NAME='swarm-01'

docker-machine create \
  --driver amazonec2 \
  --amazonec2-ami ami-ab0210c7  \
  --amazonec2-region eu-central-1 \
  $SERVER_NAME

#Why didn't install swarm?
