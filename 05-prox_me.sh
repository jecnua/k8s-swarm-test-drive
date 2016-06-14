#!/bin/bash
IP=`kubectl cluster-info | grep 'Kubernetes master' | cut -d ' ' -f 6`

kubectl get svc | grep -v NAME | cut -d ' ' -f 1 | xargs -L 1 echo "$IP/api/v1/proxy/namespaces/default/services/" | tr -d ' '
