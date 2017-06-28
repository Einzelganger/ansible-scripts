# Install script for Gitlab
Majority of the script provided by the Gitlab community.

## Target systems
Tested on CentOS. Ready for Amazon Linux, RedHat.

## Requirements 
none

## Actions
- Installs Gitlab
- Gitlab runs on Apache
- Configures and installs PostgreSQL
- Configures and installs Postfix 
- Installs firewalld

## Variables
- target: target machine
- ansible_user: ec2-user

These should be defined in vars/main.yml:
- domain: FQDN for the target
- company_name: for the TLS certificate
- country: for the TLS certificate
- city: for the TLS certificate

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" gitlabs.yml

## Author
Deborah Maaijen

