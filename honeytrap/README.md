# Install script for Honeytrap, the honeypots in containers.

## Target systems
Tested on Ubuntu, CentOS.

## Requirements 
None

## Actions
- Installs Golang 
- Installs LXC (containers)
- Installs Honeytrap

## Variables
Edit honeytrap.yml and fill in the user name and IP address of the target system.

## Examples
ansible-playbook -K honeytrap.yml

## Author
Deborah Maaijen

