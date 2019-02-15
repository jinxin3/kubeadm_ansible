#!/bin/bash

if [ $# != 1 ];then
    exit -1
fi
k8s_version=`echo $1|cut -d 'v' -f 2`

yum install -y kubelet-$k8s_version kubeadm-$k8s_version kubectl-$k8s_version

