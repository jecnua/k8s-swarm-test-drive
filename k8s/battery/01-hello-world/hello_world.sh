#!/bin/bash

kubectl create -f config/hello_world_rc.yaml
read -n 1 -s -p "Press any key to continue"
kubectl create -f config/hello_world_svc.yaml
read -n 1 -s -p "Press any key to continue"
kubectl create -f config/hello_world_rc3.yaml

# ./02-hello_world.sh
# service "hello-world" created
# replicationcontroller "hello-world" created
