## Install Longhorn for Kubernetes storage

sudo apt update
sudo apt install -y open-iscsi
helm repo add longhorn https://charts.longhorn.io
helm repo update
helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace --version 1.6.2

## If you want to acces the web UI of Longhorn, you need to expose it as an LB service, by patching it
## with the following command:
# kubectl patch svc longhorn-frontend -n longhorn-system -p '{"spec": {"type": "LoadBalancer"}}'
## Then, check the list of services to find its IP address (look under EXTERNAL-IP):
# kubectl get svc -n longhorn-system
