#!/bin/bash

## Ipvs
rmmod ip_vs
rmmod ip_vs_rr
rmmod ip_vs_wrr
rmmod ip_vs_sh

## overlay
rmmod overlay

## br_netfilter
rmmod br_netfilter

## selinux
sed -i 's/^SELINUX=permissive$/SELINUX=enforcing/' /etc/selinux/config

yum -y remove epel-release.noarch
yum remove ipvsadm -y
yum remove -y yum-utils device-mapper-persistent-data lvm2
