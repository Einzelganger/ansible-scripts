# Install script for Marija
Marija is a data visualisation tool.
When not using Elasticsearch as a data source, please comment out that block in 
the configuration file $GOPATH/src/github.com/dutchcoders/marija/config.toml.

## Target systems
Tested on CentOS. Ready for Debian.

## Requirements 
The Golang role or a pre-installed Golang installation, version 1.7.0 or higher.

## Actions
- Installs git
- Installs Marija

## Variables
- target: target machine
- ansible_user: ec2-user

## Examples
ansible-playbook -K --extra-vars "target=ipadress ansible_user=ec2-user" marija.yml

## Author
Deborah Maaijen

