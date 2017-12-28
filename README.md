# k8s/swarm test drive


## k8s

- k8s version 1.9.0

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

## Compatibility

Tested on OS X El Captain.
