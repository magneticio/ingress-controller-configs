# nginx-ingress

Run `deployment.sh`:
```
./deployment.sh
```
It should 
* create ingress-nginx namespace
* deploy NGINX ingress controller
* deploy Prometheus operator
* configure Prometheus to scrape from NGINX ingress controller

Please take into account that the deployment creates NGINX ingress controller service with name `nginx-ingress-ingress-nginx-controller`.
It might require specifying additional argument in the RA deployment script invocation to specify service name of NGINX ingress controller service, e.g.

```
curl -sSL https://<INSTALL_SCRIPT_PATH>/install.sh | sh -s -- -e DEV -i nginx-ingress-ingress-nginx-controller <TOKEN>
```

Also as for now the installer script (`install.sh`) assumes that Prometheus is deployed to `ingress-nginx` namespace. 
So until it's fixed, upon the RA deployment completion, one has to fix `VAMP_PROMETHEUS_URL` env var in the RA deployment yaml.
It should be set to `http://nginx-prometheus.default:9090`. 
Also please make sure that the RA deployment uses desired versions of the RA and the sidecar.
