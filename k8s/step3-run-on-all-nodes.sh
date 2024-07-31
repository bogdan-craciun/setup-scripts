# Install Kubernetes:
# First, the source is added to the package manager; we use version 1.30 and mark it as held to prevent automatic updates.

sudo curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-apt-keyring.gpg

sudo echo 'deb [signed-by=/usr/share/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update

sudo apt install -y kubeadm=1.30.2-1.1 kubelet=1.30.2-1.1 kubectl=1.30.2-1.1

sudo apt-mark hold kubelet kubeadm kubectl
