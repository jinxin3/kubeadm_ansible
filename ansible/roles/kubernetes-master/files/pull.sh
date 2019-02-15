#!/bin/bash

if [ $# != 2 ];then
    exit 1
fi

images=`kubeadm config images list --kubernetes-version=$1`

##
for i in $images;
do
   docker pull $2/$i
   if [ $? != 0 ];then
       exit 1
   fi
   docker tag $2/$i $i
   if [ $? != 0 ];then
       exit 1
   fi
done

