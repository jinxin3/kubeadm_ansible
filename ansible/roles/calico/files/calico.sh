#!/bin/bash

if [ $# != 1 ];then
    exit 1
fi

images=`cat /root/xcloud/calico.txt`

##
for i in $images;
do
   docker pull $1/$i
   if [ $? != 0 ];then
       exit 1
   fi
   docker tag $1/$i $i
   if [ $? != 0 ];then
       exit 1
   fi
done


