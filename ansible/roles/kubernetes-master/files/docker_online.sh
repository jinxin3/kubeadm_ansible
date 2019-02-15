#!/bin/bash

## Install prerequisites.
yum install -y yum-utils device-mapper-persistent-data lvm2

## Add docker repository.
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

## Install docker.
yum install docker-ce-18.06.1.ce -y


