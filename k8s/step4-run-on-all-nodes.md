- Turn off swap:

```bash
sudo swapoff -a

sudo nano /etc/fstab
```

> (then, comment out the line with "swap", (add # in front of it) save and exit from Nano/Vim)

If `cat /proc/swaps` still shows the former swap partition, you can remove it with `sudo rm -rf /dev/vda3` (or similar), then reboot `sudo reboot`. If it _still_ shows up after the reboot, do another `sudo swapoff -a`.
