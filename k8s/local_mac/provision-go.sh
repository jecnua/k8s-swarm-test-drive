#!/bin/bash
# Source: https://www.samclarke.com/installing-go-1-9-on-ubuntu-16-04/
# Then modified

sudo su
add-apt-repository -y ppa:gophers/archive
apt update
apt-get install -y golang-1.9-go
echo "export PATH=\$PATH:/usr/lib/go-1.9/bin:/root/bin" >> /root/.bashrc
echo "export GOPATH=/root" >> /root/.bashrc
# shellcheck disable=SC1091
source /root/.bashrc
go get github.com/kubernetes-incubator/cri-tools/cmd/crictl
