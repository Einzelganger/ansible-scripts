# Update script for Nextcloud
The majority of the script provided by the Nextcloud community.

## Target systems
Tested on CentOS.

## Requirements 
Assumes the nextcloud dir is in /var/www/nextcloud

## Actions
- Copies scripts to open and close up file permissions of the nextcloud dir
- The remote Nextcloud updater creates a backup and installs everything.

## Variables
- target: target machine
- ansible_user: ec2-user

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" nextcloud_update.yml

## Author
Deborah Maaijen

