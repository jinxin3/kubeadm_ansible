#!/bin/bash

if [ $# != 1 ];then
    exit 1
fi

images=`kubeadm config images list`

##
for i in $images;
do
    pre=`echo $i|cut -d '/' -f 1`
    if [ $pre == 'k8s.gcr.io' ];then
        name=`echo $i|cut -d '/' -f 2`
        docker pull anjia0532/google-containers.$name
        docker tag anjia0532/google-containers.$name $i
        docker tag anjia0532/google-containers.$name $1:4000/$i
        docker push $1:4000/$i
    else
        docker pull $i
        docker tag $i $1:4000/$i
        docker push $1:4000/$i
    fi
done

