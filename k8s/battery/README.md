#!/bin/bash

kops create cluster ${CLUSTER_NAME} --zones us-west-1c
kops update cluster ${CLUSTER_NAME} --target=terraform


kops export kubecfg ${CLUSTER_NAME}

https://github.com/kubernetes/kops/blob/master/docs/terraform.md

[18:30:38] fabrizio.sabatini :: MLGBFSABATINI  ➜  00-k8s/out/terraform ‹k8s*› » kubectl get no
NAME                                          STATUS    AGE
ip-172-20-110-31.us-west-1.compute.internal   Ready     53s
ip-172-20-110-32.us-west-1.compute.internal   Ready     4m
ip-172-20-115-54.us-west-1.compute.internal   Ready     10m

takes 10 minutes on a t2 medium

==

curl -s http://a5d13a8b9be0411e6a7a1069ba29c653-2109849943.us-west-1.elb.amazonaws.com/ | grep hostname

cahnge the grafana service to use elb :D
but we don't really need it
