#!/bin/bash

sudo su
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni

# https://github.com/kubernetes/kubernetes/issues/44750
iptables -F
kubeadm join --token c1c911.eca99879cdf5d0af 172.42.42.10:6443
