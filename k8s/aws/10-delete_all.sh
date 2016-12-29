#!/bin/bash

echo "Deleting deployments"
kubectl get deployments
kubectl get deployments | grep -v 'NAME' | cut -d ' ' -f 1 | xargs kubectl delete deployment

sleep 3

# LEGACY
echo "Deleting replication controllers"
kubectl get rc
kubectl get rc | grep -v 'NAME' | cut -d ' ' -f 1 | xargs kubectl delete rc

sleep 3

echo "Deleting pods"
kubectl get pods
kubectl get pods | grep -v 'NAME' | cut -d ' ' -f 1 | xargs kubectl delete pods

sleep 3

echo "Deleting services"
kubectl get svc
kubectl get svc | grep -v 'NAME' | cut -d ' ' -f 1 | xargs kubectl delete svc
