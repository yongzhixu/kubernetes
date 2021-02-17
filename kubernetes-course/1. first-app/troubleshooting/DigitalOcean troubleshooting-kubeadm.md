### DigitalOcean troubleshooting-kubeadm

```sh
Error from server: Get https://10.19.0.41:10250/containerLogs/default/mysql-ddc65b868-glc5m/mysql: dial tcp 10.19.0.41:10250: getsockopt: no route to host
```

[non-public-ip-used-for-containers](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/troubleshooting-kubeadm/#non-public-ip-used-for-containers)

- This may be due to Kubernetes using an IP that can not communicate with other IPs on the seemingly same subnet, possibly by policy of the machine provider.

- DigitalOcean assigns a public IP to `eth0` as well as a private one to be used internally as anchor for their floating IP feature, yet `kubelet` will pick the latter as the node's `InternalIP` instead of the public one.

  Use `ip addr show` to check for this scenario instead of `ifconfig` because `ifconfig` will not display the offending alias IP address. Alternatively an API endpoint specific to DigitalOcean allows to query for the anchor IP from the droplet:

  ```sh
  curl http://169.254.169.254/metadata/v1/interfaces/public/0/anchor_ipv4/address
  ```

  The workaround is to tell `kubelet` which IP to use using `--node-ip`. When using DigitalOcean, it can be the public one (assigned to `eth0`) or the private one (assigned to `eth1`) should you want to use the optional private network. The [`KubeletExtraArgs` section of the kubeadm `NodeRegistrationOptions` structure](https://github.com/kubernetes/kubernetes/blob/release-1.13/cmd/kubeadm/app/apis/kubeadm/v1beta1/types.go) can be used for this.

  
  
  #### solution 
  

   To change node internal ip to private ip 

1. ```kubectl get nodes -o wide # o for output```
2. ```/etc/systemd/system/kubelet.service.d/10-kubeadm.conf ```  - adding the --node-ip=<private ip> to KUBELET_CONFIG_ARGS

  Then restart `kubelet`:

  ```sh
  systemctl daemon-reload
  systemctl restart kubelet
  ```
