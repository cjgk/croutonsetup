# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# backup
mv /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf.bak

# Enable vhost_alias
a2enmod vhost_alias

# Dynamic virtual hosts
echo '
UseCanonicalName Off
LogFormat "%V %h %l %u %t \"%r\" %s %b" vcommon
CustomLog /var/log/apache2/access_log vcommon
VirtualDocumentRoot /var/www/%-2+' > /etc/apache2/sites-available/000-default.conf

# set servername
echo "ServerName localhost" > /etc/apache2/conf-available/servername.conf
ln -s /etc/apache2/conf-available/servername.conf /etc/apache2/conf-enabled/servername.conf

# restart
service apache2 restart
