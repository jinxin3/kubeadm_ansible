#!/bin/bash

# Install prerequisites
yum-config-manager --add-repo=https://cbs.centos.org/repos/paas7-crio-311-candidate/x86_64/os/

# Install CRI-O
yum install --nogpgcheck cri-o -y

