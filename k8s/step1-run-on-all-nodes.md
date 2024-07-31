## Initial setup directly on the machines themselves (this should be run on all nodes making up the Kubernetes cluster):

### Afterwards, the shell scripts can be executed directly

### Starting with Step 11, most scripts should be executed without sudo, check inside before running

- Install some basic packages:

```bash
su
apt update
apt install -y sudo gpg ufw software-properties-common curl apt-transport-https wget vim nano git openssh-server
```

- Enable sudo for a user:

  - Run `chmod 640 /etc/sudoers`
  - Then, edit the sudoers file: `vim /etc/sudoers` or `nano /etc/sudoers`
  - Add this after the line "root ALL=(ALL:ALL) ALL": `bogdan ALL=(ALL) ALL` (of course, change
    username as needed)
  - Save and exit (in Vim, press `Esc`, then `:wq`, then `Enter`)
  - You can also exit the current terminal, but running `exit` a couple of times, then reopen
    terminal.

- Enable SSH:

```bash
sudo ufw enable
sudo ufw allow from 10.1.1.0/24 to any port 22
sudo ufw allow from 10.10.0.0/24 to any port 22
sudo ufw allow from 10.30.0.0/24 to any port 22
systemctl status ssh
```

> ( ! ) After this step, you should take over via SSH (much easier to copy-paste stuff).
