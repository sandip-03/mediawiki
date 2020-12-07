Setup Mediawiki 1.35 on Centos 7, Apache 2.4, PHP 7.4 and Mariadb

Instruction:
1) Clone this repository on machine running Terraform and Ansible
2) Edit providers\aws\lamp\variables.tf and populate below variables.tf
- account_id
- default_security_groups
- ssh_key
- ec2_subnet_id
3) Edit ansible.cfg under playbooks directory and populate value for below variables
- private_key_file : put complete path of pem file on ansible machine
4) chmod 755 install_mediawiki.sh
