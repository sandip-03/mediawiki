#!/usr/bin/env bash

echo "Provsion Centos 7 VM"

cd ./providers/aws/lamp/
echo "----Terraform----"
terraform init
terraform apply -auto-approve

echo "Ansible host file to playbook directory"
cp -p ./providers/aws/lamp/hosts ./playbooks/

echo "Running Ansible playbook"

ansible-playbool -i hosts main.yml