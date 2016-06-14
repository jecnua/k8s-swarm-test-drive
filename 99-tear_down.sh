#!/bin/bash

export KUBERNETES_PROVIDER=aws
export KUBE_AWS_ZONE=eu-central-1a
export NUM_NODES=2
export MASTER_SIZE=m4.large
export NODE_SIZE=m4.large
export AWS_S3_REGION=eu-central-1
export AWS_S3_BUCKET=kubernetes-artifacts-test
export INSTANCE_PREFIX=k8s

kubernetes/cluster/kube-down.sh
