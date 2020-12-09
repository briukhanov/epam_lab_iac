#!/bin/bash
apt -y update
apt -y install ansible
ansible --version
cd ~
[ -d "/root/epam_lab_iac" ] && rm -rf ~/epam_lab_iac
git clone https://github.com/briukhanov/epam_lab_iac.git
[ ! -d "root/epam_lab_iac/ansible/group_vars" ] && mkdir ~/epam_lab_iac/ansible/group_vars
mv /tmp/all.yml ~/epam_lab_iac/ansible/group_vars/all.yml
cd epam_lab_iac/ansible
ansible-playbook site.yml
