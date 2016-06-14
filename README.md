# k8s/swarm test drive

Testing both.

## Prerequisites

- You need a working AWS account with admin power to run this scripts.
- You need kubectl on path

## Usage

The first time you run the script you need to download the archive:

    ./00-setup.sh false

Once you have download the archive the first time just run:

    ./00-setup.sh

As for documentation to get the user/pass for k8s:

    cat ~/.kube/config | grep -A 3 'kubernetes-basic-auth'

## Notes

I download the script get_k8s.io from github latest since the version online
today does not allow me to install version 1.3 of k8s. Also I needed the new
flags.

### Compatibility

Tested on OS X El Captain
