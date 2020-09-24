#!/usr/bin/env bash

## Prerequisite:
## k8s version should be >= 1.16

kubectl create ns ingress-nginx

## deploy ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm upgrade -i nginx-ingress ingress-nginx/ingress-nginx --namespace ingress-nginx --set controller.metrics.enabled=true

## deploy prometheus operator
## v0.42.1 was the latest one at the moment of writing. Replace it with the new one if needed
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.42.1/bundle.yaml

## create service account, cluster role and binding
kubectl apply -f nginx-prometheus-sa.yaml

## Configure the Prometheus operator to create operated instance with config for scraping the NGINX controller
kubectl apply -f nginx-prometheus.yaml
