# Create a small k8s cluster on vagrant

![](https://img.shields.io/badge/k8s-v1.10.0-blue.svg?style=flat)

To spin the two nodes up use:

    ./create.sh

## Login

    vagrant ssh k8s-controller
    vagrant ssh k8s-node

## How much time does it takes

    vagrant up  18.62s user 17.06s system 6% cpu 9:38.13 total

## Versions

### 1.9.3

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
