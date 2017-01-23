#!/bin/bash
# Create two docker machine and link them with swarm

docker-machine create -d xhyve swmaster
# docker-machine env swmaster
docker-machine create -d xhyve swnode
# docker-machine env swnode

docker-machine ls

# Connect to the master
eval $(docker-machine env swmaster)
# Init swarm
docker swarm init --listen-addr "$(docker-machine ip swmaster):2377"
# Get token silently
TOKEN=`docker swarm join-token -q worker`

# Connect to the worker
eval $(docker-machine env swnode)
# Join second node as worker
docker swarm join --token $TOKEN "$(docker-machine ip swmaster):2377"
