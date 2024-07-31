- Configure containerd:

```bash
sudo nano /etc/containerd/config.toml
```

Then, after the line `[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]` find
and make sure `SystemdCgroup` is set to `true`, like so: `SystemdCgroup = true`.
