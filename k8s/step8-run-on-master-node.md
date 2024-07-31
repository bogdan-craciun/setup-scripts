## Configure the master node (control plane):

> This only needs to be performed on the master node. We assume `10.244.0.0/16` to be the pod
> network. After running the first command, follow on-screen details to join the worker nodes,
> additional control planes, etc.

```bash
sudo kubeadm init \
  --pod-network-cidr=10.244.0.0/16 \
  --upload-certs \
  --control-plane-endpoint=k8s-control1.--------.--:6443

mkdir -p $HOME/.kube
sudo cp -f /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl cluster-info
```

## Add DNS entries for the nodes

At this point, you may want to add some DNS entries in ----, even if they point to private IPs. For
example:

```
k8s-control1.--------.--   10.30.0.101
k8s-worker1.--------.--    10.30.0.111
k8s-worker2.--------.--    10.30.0.112
```
