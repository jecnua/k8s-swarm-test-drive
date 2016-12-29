#!/bin/bash
# https://www.weave.works/documentation/scope-latest-installing/

kubectl create -f config/scope.yaml

# kubectl create -f 02-scope/config/scope.yaml
# deployment "weave-scope-app" created
# service "weave-scope-app" created
# daemonset "weave-scope-agent" created

kubectl create -f config/scope_svc.yaml

kubectl get svc
