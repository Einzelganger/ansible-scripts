# Post installation script for AWS

## Target systems
CentOS, RedHat, and Amazon Linux.

## Requirements
None.

## Actions
This script executes the following steps: 

- Creates a new privileged user and *disables the default user*;
- copies a public ssh key into the authorized_keys file;
- sets the system timezone to that of Amsterdam; 
- changes the text of issue.net;
- adds the EPEL repository;
- updates the system with the YUM package manager.

## Mandatory variables and actions
Change the name from _company_ to your company name in the template `files/issue.net`. 

- `new_user`: name for the new user
- `new_user_password`: password hash for the new user
- `ssh_pubkey_path`: path to the ssh pubkey for future ssh access.
- `default_user`: default user for the AWS image, who **will be removed!**. If this is undesirable, use --skip-tags "remove_default_user".
- `target`: the target IP

## Example
 `ansible-playbook postinstall.yml -i path/to/current-ssh-key.pem --extra-vars "new_user=anyone new_user_password=hashstring ssh_pubkey_path=/home/user/.ssh/bla.pem default_user=ec2-user"`

