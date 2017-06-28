# Set up Zabbix server

## Target systems
CentOS, RedHat.

## Requirements
A MySQL server. Optionally install the [MySQL server playbook] (https://github.com/geerlingguy/ansible-role-mysql "playbook on github") by Geerlingguy. 
Don't forget to adjust the passwords in his playbook!


## Actions
* Installs a Zabbix server; 
* installs Postfix for sending notification email; 
* creates a swap file.

## Mandatory variables
Change the password for the MySQL root user and the Zabbix user in _var/main.yml_
The _target_ and _ssh\_user_ variable must be supplied.

## Notes
- To use Geerlingguy's MySQL script, you can comment out and adjust the corresponding role in the Zabbix-server.yml file.
- If it crashes during the task setting up Zabbix to start on boot, just try again, it's a timeout issue.

## Example
`ansible-playbook -i path/to/sshkey zabbix-server.yml --extra-vars "target=ipaddress"`
