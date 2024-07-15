# packer-configs

> Packer configurations to use with [packer-virtualbox](https://github.com/kkdt/packer-virtualbox).

## Overview

Each folder in this project is a logical grouping of Packer HCL configurations to build a virtual machine. This project
is intended and opinionated to be used with [packer-virtualbox](https://github.com/kkdt/packer-virtualbox).

## Configuration Files

When performing a Packer build from [packer-virtualbox](https://github.com/kkdt/packer-virtualbox), pass in the `--configs`
to a folder from this clone. The build will look for one or more files listed below to override the default values from
the Packer project.

1. build.pkrvars.hcl
     - Build parameters
1. vm.pkrvars.hcl
     - Virtual machine parameters
1. virtualbox.pkrvars.hcl
     - VirtualBox-specific parameters
1. requirements.yml
     - The Ansible Galaxy requirements file containing `collections` and `roles` attributes
1. default.yml
     - The Ansible playbook to use

## Builds

### Setup

```shell
cd $HOME

git clone https://github.com/kkdt/packer-virtualbox.git

git clone https://github.com/kkdt/packer-configs.git

cd packer-virtualbox
```

### rhel-podman

```shell
cd $HOME/packer-virtualbox

./build.sh --secrets config/secrets.pkrvars.hcl --os rhel8.7 --details --configs ~/Development/projects/packer-configs/box/rhel-podman
```

### rhel6.9

```shell
cd $HOME/packer-virtualbox

./build.sh --secrets config/secrets.pkrvars.hcl --os rhel6.9 --details --configs ~/Development/projects/packer-configs/box/rhel6.9
```

### rhel8.6

```shell
cd $HOME/packer-virtualbox

./build.sh --secrets config/secrets.pkrvars.hcl --os rhel8.6 --details --configs ~/Development/projects/packer-configs/box/rhel8.6
```

### rhel8.7

```shell
cd $HOME/packer-virtualbox

./build.sh --secrets config/secrets.pkrvars.hcl --os rhel8.7 --details --configs ~/Development/projects/packer-configs/box/rhel8.7
```
