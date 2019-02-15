#!/bin/bash

if [ $# != 1 ];then
    exit 1
fi
rm -rf /root/xcloud/pki
mkdir /root/xcloud/pki
scp -r /root/xcloud/pki $1:/etc/kubernetes/

scp /etc/kubernetes/pki/ca.crt $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/ca.key $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/sa.key $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/sa.pub $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/front-proxy-ca.crt $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/front-proxy-ca.key $1:/etc/kubernetes/pki/

mkdir /root/xcloud/etcd
scp -r /root/xcloud/etcd $1:/etc/kubernetes/pki/
scp /etc/kubernetes/pki/etcd/ca.crt $1:/etc/kubernetes/pki/etcd/
scp /etc/kubernetes/pki/etcd/ca.key $1:/etc/kubernetes/pki/etcd/

scp /etc/kubernetes/admin.conf $1:/etc/kubernetes/
