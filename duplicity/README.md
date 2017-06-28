# Install script for duplicity backups
Script to install duplicity on clients that synchronizes to Amazon S3 storage.
Root access mandatory. The variables in vars/main.yml including passwords to S3  must be filled in. See the file itself for comments. The file will be stored in the root homedir with mode 0500, so only root can read it. 

## Target systems
Tested on CentOS.

## Requirements 
GPG keys should be stored in 'files' and the path should be adjusted in the vars/main.yml file.
See a full tutorial here https://www.digitalocean.com/community/tutorials/how-to-use-duplicity-with-gpg-to-securely-automate-backups-on-ubuntu

## Actions
- Installs duplicity
- Copies server GPG keys and backup script to client in root dir 
- Checks if there are MySQL or PostgreSQL databases and dumps them.
- Installs cron entry to run duplicity

## Variables
- target: target machine
- username: used to ssh to the target
- several aws variables: please check vars/main.yml

## Examples
ansible-playbook -u username --extra-vars "target=ipadress" duplicity.yml

## Author
Deborah Maaijen

