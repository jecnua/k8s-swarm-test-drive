# Create a small k8s cluster on vagrant

![](https://img.shields.io/maintenance/yes/2019.svg)
[![Build Status](https://travis-ci.org/jecnua/k8s-swarm-test-drive.svg?branch=master)](https://travis-ci.org/jecnua/k8s-swarm-test-drive)
![](https://img.shields.io/badge/kubernetes-v1.14.3-blue.svg?style=flat)
![](https://img.shields.io/badge/cni-flannel-orange.svg?style=flat)
![](https://img.shields.io/badge/go-v1.11-blue.svg?style=flat)

This module will create two VMs in Virtualbox (via Vagrant) and install k8s
on them creating a fully functional k8s cluster.

## Requirements

Applications:

- Vagrant
- Virtualbox
- Optional: Make, rubocop, shellcheck

2GB of memory to host both controller and node.

## Run

Spin the cluster up with:

    make up

Stop/Destroy the cluster with:

    make down

## Login

You can login on the machines via Vagrant:

    vagrant ssh k8s-controller # controller node
    vagrant ssh k8s-node

## How much time does it takes

Highly dependent on your internet connection speed.

    vagrant up  18.62s user 17.06s system 6% cpu 9:38.13 total

## Tested on

- Ubuntu Linux
- Virtualbox 5.x
- Vagrant 2.2.4

In the past I used to run this repo on Mac but this is no longer the case so
I can't guarantee it works any more :)
