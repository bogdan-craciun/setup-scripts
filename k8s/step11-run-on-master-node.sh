## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## !!! Run this file WITHOUT sudo
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

## Install Calico to enable networking between pods

kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.0/manifests/tigera-operator.yaml

echo '---------- waiting for tigera-operator to be ready'
sleep 5

kubectl create -f calico-custom-resources.yaml

echo '---------- waiting for Calico to be ready'
sleep 5

# Remove taints which prevent pods from starting or being created

kubectl taint nodes --all node.kubernetes.io/not-ready:NoSchedule-
kubectl taint nodes --all node-role.kubernetes.io/control-plane-
