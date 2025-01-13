# Kubernetes Cluster Setup

This repository provides a simple way to set up a Kubernetes cluster using Vagrant. It is designed for developers and system administrators who want to quickly create a local Kubernetes environment for testing, learning, or development purposes without the need for complex cloud infrastructure.

## Description

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. Setting up a Kubernetes cluster can be complex and time-consuming, especially for those who are new to the technology. This repository simplifies that process by leveraging Vagrant, a popular tool for managing virtual machine environments.

## System Prerequisites 📋

Before you begin, ensure your system meets the following prerequisites:

- **RAM**: Minimum of 8 GB
- **Processor**: 2.4 GHz or higher
- **Software Requirements**:
  - [Git](https://git-scm.com/downloads) - For version control
  - [Vagrant](https://www.vagrantup.com/downloads.html) - Virtual machine management tool

## Installation Instructions

Follow these steps to set up the Kubernetes cluster:

1. **Clone the Repository**: Use the following command to clone the repository:

```bash
git clone https://github.com/hfmartinez/kubernetes-vagrant.git
```

2. **Start the Virtual Machines**: Navigate to the cloned repository folder (where the `Vagrantfile` is located) and start the virtual machines:

```bash
cd kubernetes-vagrant
vagrant up
```

## Validating the Installation

After the VMs are up, run the following command to validate the installation:

```bash
vagrant ssh master -c 'kubectl get nodes -o wide'
```

