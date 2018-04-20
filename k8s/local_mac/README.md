# Create a small k8s cluster on vagrant

[![Build Status](https://travis-ci.org/jecnua/k8s-swarm-test-drive.svg?branch=master)](https://travis-ci.org/jecnua/k8s-swarm-test-drive)
![](https://img.shields.io/badge/kubernetes-v1.10.1-blue.svg?style=flat)
![](https://img.shields.io/badge/virtualbox-v5.2-blue.svg?style=flat)
![](https://img.shields.io/badge/cni-flannel-orange.svg?style=flat)

Controller ![](https://img.shields.io/badge/go-v1.10.1-blue.svg?style=flat)

## Run

Create with:

    ./create.sh

Destroy with:

    ./destroy.sh

## Login

    vagrant ssh k8s-controller
    vagrant ssh k8s-node

## How much time does it takes

    vagrant up  18.62s user 17.06s system 6% cpu 9:38.13 total

## Versions

### 1.10.x

### 1.9.0

k8s version 1.9.0

    k8s-controller: [init] Using Kubernetes version: v1.9.0
    k8s-controller: [init] Using Authorization modes: [Node RBAC]
    k8s-controller: [preflight] Running pre-flight checks.
    k8s-controller: 	[WARNING FileExisting-crictl]: crictl not found in system path
    k8s-controller: [certificates] Generated ca certificate and key.
    k8s-controller: [certificates] Generated apiserver certificate and key.
    k8s-controller: [certificates] apiserver serving cert is signed for DNS names [k8s-controller kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local] and IPs [10.96.0.1 172.42.42.10]
    k8s-controller: [certificates] Generated apiserver-kubelet-client certificate and key.
    k8s-controller: [certificates] Generated sa key and public key.
    k8s-controller: [certificates] Generated front-proxy-ca certificate and key.
    k8s-controller: [certificates] Generated front-proxy-client certificate and key.
    k8s-controller: [certificates] Valid certificates and keys now exist in "/etc/kubernetes/pki"
    k8s-controller: [kubeconfig] Wrote KubeConfig file to disk: "admin.conf"
    k8s-controller: [kubeconfig] Wrote KubeConfig file to disk: "kubelet.conf"
    k8s-controller: [kubeconfig] Wrote KubeConfig file to disk: "controller-manager.conf"
    k8s-controller: [kubeconfig] Wrote KubeConfig file to disk: "scheduler.conf"
    k8s-controller: [controlplane] Wrote Static Pod manifest for component kube-apiserver to "/etc/kubernetes/manifests/kube-apiserver.yaml"
    k8s-controller: [controlplane] Wrote Static Pod manifest for component kube-controller-manager to "/etc/kubernetes/manifests/kube-controller-manager.yaml"
    k8s-controller: [controlplane] Wrote Static Pod manifest for component kube-scheduler to "/etc/kubernetes/manifests/kube-scheduler.yaml"
    k8s-controller: [etcd] Wrote Static Pod manifest for a local etcd instance to "/etc/kubernetes/manifests/etcd.yaml"
    k8s-controller: [init] Waiting for the kubelet to boot up the control plane as Static Pods from directory "/etc/kubernetes/manifests".
    k8s-controller: [init] This might take a minute or longer if the control plane images have to be pulled.

### 1.7

    root@k8s:/home/ubuntu# kubeadm init --token c1c911.eca99879cdf5d0af --kubernetes-version stable-1.7
    [kubeadm] WARNING: kubeadm is in beta, please do not use it for production clusters.
    [init] Using Kubernetes version: v1.7.0
    [init] Using Authorization modes: [Node RBAC]
    [preflight] Running pre-flight checks
    [certificates] Generated CA certificate and key.
    [certificates] Generated API server certificate and key.
    [certificates] API Server serving cert is signed for DNS names [k8s kubernetes kubernetes.default kubernetes.default.svc kubernetes.default.svc.cluster.local] and IPs [10.96.0.1 10.0.2.15]
    [certificates] Generated API server kubelet client certificate and key.
    [certificates] Generated service account token signing key and public key.
    [certificates] Generated front-proxy CA certificate and key.
    [certificates] Generated front-proxy client certificate and key.
    [certificates] Valid certificates and keys now exist in "/etc/kubernetes/pki"
    [kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/kubelet.conf"
    [kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/controller-manager.conf"
    [kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/scheduler.conf"
    [kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/admin.conf"
    [apiclient] Created API client, waiting for the control plane to become ready

And:

    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config

- https://github.com/kumulustech/vagrant-kubeadm/blob/master/kubeadm-master-ubuntu.sh
