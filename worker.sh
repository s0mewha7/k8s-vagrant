#!/bin/bash

# Join worker nodes to the Kubernetes cluster
echo "[TASK 1] Join node to Kubernetes Cluster"
sudo su
chmod +x /vagrant/joincluster.sh
sudo /vagrant/joincluster.sh

sudo modprobe br_netfilter
echo "net.bridge.bridge-nf-call-iptables=1" | sudo tee -a /etc/sysctl.conf

echo "===================================="
echo 'run command: vagrant ssh master -c "kubectl get nodes -o wide"'
echo "===================================="