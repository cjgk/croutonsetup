# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# remove default folder
if [ -d "/var/www/html" ]; then
	rm -r /var/www/html
fi

chown dev:www-data /var/www 
chmod g+ws /var/www
