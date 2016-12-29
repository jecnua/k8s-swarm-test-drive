#!/bin/bash

SERVER_NAME_1='swarm-01'
SERVER_NAME_2='swarm-02'
SERVER_NAME_3='swarm-03'

docker-machine create \
  --driver amazonec2 \
  --amazonec2-ami ami-ab0210c7  \
  --amazonec2-region eu-central-1 \
  $SERVER_NAME_1

docker-machine create \
  --driver amazonec2 \
  --amazonec2-ami ami-ab0210c7  \
  --amazonec2-region eu-central-1 \
  $SERVER_NAME_2

docker-machine create \
  --driver amazonec2 \
  --amazonec2-ami ami-ab0210c7  \
  --amazonec2-region eu-central-1 \
  $SERVER_NAME_3
