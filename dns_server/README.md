# Install script for Bind

## Target systems
Tested on CentOS.

# Important note
Does not install the secondary server!

## Requirements 
firewalld

## Actions
- Configures bind as a DNS server on the target machine
- Adds a secondary DNS server

## Variables
- target: target machine
- ansible_user: ec2-user
Many variables must be completed in vars/main.yml

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" dns_server.yml

## Author
Deborah Maaijen

