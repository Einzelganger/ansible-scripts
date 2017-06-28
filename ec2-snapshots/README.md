# Script for automated snaptshots of AWS instances

## Target systems
SEEMS TO FAIL TO CREATE THE SNAPSHOTS!
Needs to be installed on a machine in the cloud. 
Tested on a CentOS instance.

## Requirements 
None

## Actions
- Adds awscli to the machine
- schedules a cron job that creates snapshots

## Variables
- target: The IP address of the target machine.
- aws_cli_access_key: the access key can be found in your AWS profile
- aws_cli_secret_key: the secret key can be found in your AWS profile
- aws_cli_region: The region where the snapshots should be made, for example: eu-central-1.
- aws_cli_profile: default
- remote_user: ec2-user
- remote_dir: /home/ec2-user/


## Examples
ansible-playbook -u username --extra-vars "target=ipadress" create-automated-ec2-snapshots.yml

## Author
Deborah Maaijen

