## Join the worker nodes to the cluster

On the master node, at the previous step, you will see something like this:

> Your Kubernetes control-plane has initialized successfully! To start using your cluster, you need
> to run the following as a regular user:
>
> ```
> mkdir -p
> $HOME/.kube
>  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
>  sudo chown $(id -u):$(id
> -g) $HOME/.kube/config
> ```
>
> Alternatively, if you are the root user, you can run:
>
> `export KUBECONFIG=/etc/kubernetes/admin.conf`
>
> You should now deploy a pod network to the cluster. Run "kubectl apply -f [podnetwork].yaml" with
> one of the options listed at: https://kubernetes.io/docs/concepts/cluster-administration/addons/
>
> Then you can join any number of worker nodes by running the following on each as root:
>
> ```
> kubeadm join 10.30.0.101:6443 --token XXXXXXXXXXXXXXXXXX \
>   --discovery-token-ca-cert-hash sha256:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
> ```

(!) Run it with `sudo`. You should run the `sudo kubeadm join` command on each worker node. The
token and hash are unique to your setup.

Run `kubectl get nodes` on the control-plane to see these nodes join the cluster.

(!) Good idea to check if there are taints and remove them if necessary:

```bash
kubectl describe node k8s-control1 | grep Taints
...
```

To remove (adjust as needed if there are other taints):

```bash
kubectl taint nodes --all node.kubernetes.io/not-ready:NoSchedule-
```
