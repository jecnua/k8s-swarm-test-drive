#!/bin/bash
# Destroy the docker machines used

yes | docker-machine rm swmaster
yes | docker-machine rm swnode
