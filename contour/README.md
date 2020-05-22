# Contour

Install Contour quick start:
```
kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
```

Configure the prometheus operator to scrape `envoy`
```
kubectl apply -f contour-prometheus-sa.yaml
kubectl apply -f contour-prometheus.yaml
```
