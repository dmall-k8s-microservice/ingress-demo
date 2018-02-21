#!/usr/bin/env bash

kubectl apply -f common/ns-and-sa.yaml
kubectl apply -f common/default-server-secret.yaml
kubectl apply -f common/nginx-config.yaml

kubectl apply -f rbac/rbac.yaml
kubectl apply -f deployment/nginx-ingress.yaml

kubectl create -f service/nodeport.yaml