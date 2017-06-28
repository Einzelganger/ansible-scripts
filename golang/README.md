# Install script for Golang, from source code

## Target systems
Tested on CentOS.

## Requirements 
none

## Actions
- Downloads and installs Golang archives

## Variables
- target: target machine
- ansible_user: ec2-user


## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" golang.yml

## Author
Deborah Maaijen

