# Crouton AMP development environment

A set of very simple scripts to set up a basic Apache, MySQL and PHP environment.

To run full setup:
`sudo bash setup.sh`

To run individual parts:
`sudo bash setup/<script>.sh`

## What happens?

### Installed packages
* apache2
* php5
* mysql-server
* mysql-client
* dnsmasq
* vim

### Apache
* Enable mod_vhost_alias
* Replace default virtual host with dynamic virtual host that points `<domain>.<tld>` to `/var/www/<domain>`
* Set ServerName to localhost

### WWW-dir
* Delete the default html/ dir
* Set owner:group to dev:www-data
* Give group permissions
* Make new files and directories inherit group ID (SGID)

### rc.local
* Enable all incoming requests in iptables
* Start Apache
* Start MySQL

### DNSMasq
* Send all requests ending in .dev to 127.0.0.1
