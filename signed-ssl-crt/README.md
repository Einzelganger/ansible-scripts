# creates new signed SSL certificaties

## Target systems
Tested on CentOS.

## Requirements 
- OpenSSL installed
- root certificates created

## Actions
- creates server certificate
- signs server certificate with CA key

## Variables
- target: best to set the ip address of the server running openssl to a static address. It's unlikely you have several.
- hostname: hostname of the server the certificate will be generated for. Like 'mail' 
- domain: domainname for the server the certificate will be generated for. F.e. example.local
- be sure to change the rest of the Organisation Unit information in vars/main.yml

## Examples
ansible-playbook --extra-vars "target=ipaddress,hostname=mail" create-ssl-cert.yml

## Author
Deborah Maaijen

