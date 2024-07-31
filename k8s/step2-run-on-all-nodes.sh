# Allow needed ports through firewall

sudo ufw allow proto tcp from 10.1.1.0/24 to any port 80,179,443,2379,2380,5473,6443,8443,9153,9443,10250,10251,10252,10255
sudo ufw allow proto tcp from 10.10.0.0/24 to any port 80,179,443,2379,2380,5473,6443,8443,9153,9443,10250,10251,10252,10255
sudo ufw allow proto tcp from 10.30.0.0/24 to any port 80,179,443,2379,2380,5473,6443,8443,9153,9443,10250,10251,10252,10255

sudo ufw allow from 10.244.0.0/16 to any port 80,179,443,2379,2380,5473,6443,8443,9153,9443,10250,10251,10252,10255

sudo ufw allow proto udp from 10.1.1.0/24 to any port 4789
sudo ufw allow proto udp from 10.10.0.0/24 to any port 4789
sudo ufw allow proto udp from 10.30.0.0/24 to any port 4789

sudo ufw reload