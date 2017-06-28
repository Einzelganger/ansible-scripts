# Create Dradis Docker instance on remote server
Creates a Dradis installation for testing purposes (no HTTPS).

## Target systems
Tested on CentOS.

## Requirements 
none

## Actions
- installs Docker from the docker repo 
- downloads someone's Dradis Docker image and installs it

## Variables
- target: target machine
- ansible_user: the user that connects to the server, f.e. ec2-user

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" dradis.yml

## Author
Deborah Maaijen

