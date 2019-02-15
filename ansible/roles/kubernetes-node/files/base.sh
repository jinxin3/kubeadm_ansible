#!/bin/bash

if [ $1 == "no" ];then
    yum -y install epel-release.noarch
    yum install ipvsadm -y
    yum install -y yum-utils device-mapper-persistent-data lvm2
fi

## Ipvs
modprobe ip_vs
modprobe ip_vs_rr
modprobe ip_vs_wrr
modprobe ip_vs_sh

## overlay
modprobe overlay

## br_netfilter
modprobe br_netfilter

## selinux
setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

