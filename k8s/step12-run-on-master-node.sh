## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## !!! Run this file WITHOUT sudo
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

## Set up MetalLB to enable LoadBalancer services and configure it to use the IP range in metallb.yaml

helm repo add metallb https://metallb.github.io/metallb
helm upgrade --install metallb  metallb/metallb --create-namespace --namespace metallb-system --set crds.validationFailurePolicy=Ignore --wait

echo 'waiting...'
sleep 5

kubectl apply -f metallb.yaml
