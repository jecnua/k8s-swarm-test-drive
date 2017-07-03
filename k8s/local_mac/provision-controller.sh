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
kubeadm init --token c1c911.eca99879cdf5d0af --kubernetes-version stable-1.6

su ubuntu
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

curl -fsSL -o weave-net.yaml https://git.io/weave-kube
kubectl apply -f weave-net.yaml
mv weave-net.yaml /opt/weave-net.yaml
