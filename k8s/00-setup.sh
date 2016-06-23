#!/bin/bash
# http://kubernetes.io/docs/getting-started-guides/aws/

ID=`uuidgen | cut -d '-' -f 1 | tr '[:upper:]' '[:lower:]'`

export KUBERNETES_PROVIDER=aws
export KUBE_AWS_ZONE=eu-central-1a
export NUM_NODES=2
export MASTER_SIZE=m4.large
export NODE_SIZE=m4.large
export AWS_S3_REGION=eu-central-1
export AWS_S3_BUCKET=kubernetes-artifacts-test-$ID
export INSTANCE_PREFIX=k8s-$ID

# On https://github.com/kubernetes/kubernetes/blob/release-1.2/cluster/aws/util.sh
export KUBERNETES_SKIP_DOWNLOAD=true
if [[ $1 == 'false' ]]; then
  echo "Downloading kubernetes archive"
  unset KUBERNETES_SKIP_DOWNLOAD
else
  echo "Skipping download"
fi

# export KUBERNETES_SKIP_CONFIRM=false

# New on the file on github
# https://raw.githubusercontent.com/kubernetes/kubernetes/master/cluster/get-kube.sh
export KUBERNETES_RELEASE='v1.3.0-beta.2'
# Not present here
# curl -sS https://get.k8s.io | bash

# Run the downloaded version from github
./HACKED_get_k8s_io.sh
