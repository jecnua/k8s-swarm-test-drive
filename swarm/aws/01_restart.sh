#!/bin/bash
docker-machine restart 'swarm-01'
docker-machine restart 'swarm-02'
docker-machine restart 'swarm-03'

yes | docker-machine regenerate-certs swarm-01
yes | docker-machine regenerate-certs swarm-02
yes | docker-machine regenerate-certs swarm-03
