#!/bin/bash
current_path=`cd $(dirname $0);pwd`

mkdir -p /etc/ansible
cp -r $current_path/ansible/* /etc/ansible






