#!/bin/bash
# https://www.weave.works/documentation/scope-latest-installing/

# https://coreos.com/blog/prometheus-and-kubernetes-up-and-running.html

# kubectl create -f config/prometheus-configmap-1.yaml
kubectl delete -f config/prometheus-deployment.yaml
kubectl create -f config/prometheus-deployment.yaml
kubectl get svc
