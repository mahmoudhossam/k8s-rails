#!/bin/sh

# We're resorting to this because kubectl can't figure out the correct order for resource creation.
# https://github.com/kubernetes/kubernetes/issues/44511
# https://github.com/kubernetes/kubernetes/issues/64203
# https://github.com/kubernetes/kubernetes/issues/16448

kubectl apply -f k8s/namespaces
kubectl apply -f k8s/configmaps
kubectl apply -f k8s/secrets
kubectl apply -f k8s/persistentvolumeclaims
kubectl apply -f k8s/services
kubectl apply -f k8s/jobs
kubectl apply -f k8s/deployments
kubectl apply -f k8s/ingresses
