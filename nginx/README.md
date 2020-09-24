# nginx-ingress

Run `deployment.sh`:
```
./deployment.sh
```
It should 
* create ingress-nginx namespace
* deploy nginx ingress controller
* deploy prometheus operator

Please take into account that the deployment creates NGINX ingress controller service with name `nginx-ingress-ingress-nginx-controller`.
It might require specifying additional argument in the RA deployment script invocation to specify service name of NGINX ingress controller service, e.g.

```
curl -sSL https://<INSTALL_SCRIPT_PATH>/install.sh | sh -s -- -e DEV -i nginx-ingress-ingress-nginx-controller <TOKEN>
```
