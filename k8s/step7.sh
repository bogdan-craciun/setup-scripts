# Restart containerd:

sudo systemctl restart containerd
sudo systemctl enable containerd
sudo systemctl enable kubelet

sudo kubeadm config images pull

sudo kubeadm config images pull --cri-socket /run/containerd/containerd.sock
