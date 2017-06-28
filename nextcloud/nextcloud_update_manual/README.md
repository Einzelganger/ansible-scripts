# Update script using manual steps Nextcloud
This script was created using the upgrade steps on the Nextcloud website and is more fine-grained than the 'Nextcloud_update' role.

## Target systems
Tested on CentOS.

## Requirements 
Assumes the nextcloud dir is in /var/www/nextcloud

## Actions
- Copies scripts to open and close up file permissions of the nextcloud dir
- Downloads the Nextcloud package
- Creates a back-up of the current install directory
- Copies the new install to the correct location
- Copies the Config files to the correct location
- Manages Apache
- Handles file permissions

## Variables
- target: target machine
- ansible_user: ec2-user
- nextcloud_version: the version of nextcloud to which to update. Necessary for downloading the Nextcloud upgrade package. 

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user nextcloud_version=12.0.0" nextcloud_update.yml

## Author
Deborah Maaijen

