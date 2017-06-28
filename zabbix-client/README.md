# Set up Zabbix client

## Target systems
RedHat, CentOS, Amazon Linux.

## Requirements
None

## Actions
- Installs Zabbix repo and client packages;
- creates a PSK key, for secure data transfers;
- configures SElinux, allowing the zabbix-agent process to work
- opens the firewall ports.


## Mandatory variables
- _ssh\_user_ : the default user used to connect to ssh
- _target_: the IP address of the machine the Zabbix client should be installed on.
- _server\_ip_ the IP addresss of the Zabbix server 
- _simple\_hostname_:  the simple unique name of the Zabbix client, used for naming the certificate

## Example
ansible-playbook -i path/to/sshkey zabbix-client.yml  --extra vars "ssh\_user=anyone server\_ip=1.2.3.45 client\_name=awesome-website target=12.34.5.6"

## Author
Deborah Maaijen