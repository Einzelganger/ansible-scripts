# Create new OpenVPN certificates

## Target systems
Tested on CentOS.

## Requirements 
A configured OpenVPN installation.

## Actions
- Creates new user certificates;
- creates a zip file with a friendly name of these certificates;
- copies the zip file to the local machine.

## Variables
- target: target machine
- ansible_user: ec2-user
- new_user: username for the new user
- new_user_email: email address for the new user
- dummy_email: email adress placeholder, so we don't leave the user email in the config file

## Examples
ansible-playbook -u username --extra-vars "target=ipadress ansible_user=ec2-user" add_vpn_user.yml

## Author
Deborah Maaijen

