######################################
######################################

Deploy k8s with ansible

######################################

components of this

k8s-master

k8s-node

flannel

calico

dashboard



######################################

how to use ?

######################################

produce two files for your k8s cluster

inventory file

configure file

you can copy ./test/* /etc/ansible


######################################

deploy

######################################

ansible-playbook -i /etc/ansible/kubernetes -e @/etc/ansible/kubernetes.yaml /etc/ansible/kubernetes.yml -e action=deploy



######################################

destroy

######################################

ansible-playbook -i /etc/ansible/kubernetes -e @/etc/ansible/kubernetes.yaml /etc/ansible/destroy.yml -e action=main



######################################
######################################
