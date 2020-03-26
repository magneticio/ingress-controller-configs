# nginx-ingress

Create `nginx-ingress` namespace
```
kubectl create ns ingress-nginx
```

Install NGINX with Helm v3:
```
helm upgrade -i nginx-ingress stable/nginx-ingress \
--namespace ingress-nginx \
--set controller.metrics.enabled=true
```

Configure the prometheus operator to scrape `nginx-ingress-controller`
```
kubectl apply -f nginx-prometheus-sa.yaml
kubectl apply -f nginx-prometheus-sa.yaml
```
