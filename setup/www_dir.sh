# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# remove default folder
if [ -d "/var/www/html" ]; then
	rm -r /var/www/html
fi

user=$(grep 1000 /etc/passwd | cut -f1 -d:)

chown "$user":www-data /var/www 
chmod g+s /var/www
chmod g+w /var/www
