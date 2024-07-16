# Allow needed ports through firewall

sudo ufw allow proto tcp from any to any port 80,179,443,2379,2380,5473,6443,8443,9153,9443,10250,10251,10252,10255
sudo ufw allow 4789/udp
sudo ufw reload