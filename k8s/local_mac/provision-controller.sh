#!/bin/bash

USER_OVERRIDE='ubuntu'
HOSTNAME=`hostname`
# VERSION='stable-1.6'
# FLAGS='--skip-preflight-checks'
# Or:
# This work without skip preflight checks
VERSION='v1.7.0'

sudo su

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y apt-transport-https curl docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni

# https://github.com/kubernetes/kubernetes/issues/44750
iptables -F
# You need to specify the address or it will use the internal one
kubeadm init \
  --token c1c911.eca99879cdf5d0af $FLAGS \
  --kubernetes-version $VERSION \
  --apiserver-advertise-address=172.42.42.10
# kubectl label --overwrite no $HOSTNAME kubeadm.alpha.kubernetes.io/role=master
# New way
# kubectl label --overwrite no $HOSTNAME node-role.kubernetes.io/master=true

# Install CNI plugin
# kubectl apply -f https://git.io/weave-kube # Install NET
# New way
curl -fsSL -o weave-net.yaml "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl apply -n kube-system -f weave-net.yaml
mv weave-net.yaml /opt/weave-net.yaml

# kubectl create -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel-rbac.yml
# kubectl create -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# kubectl cordon $HOSTNAME
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
echo "export KUBECONFIG=$HOME/admin.conf" | tee -a ~/.bashrc
