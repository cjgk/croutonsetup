# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# backup rc.local
mv /etc/rc.local /etc/rc.local.bak

# accept all incoming traffic
# start servers
# exit 0
echo "
/sbin/iptables -P INPUT ACCEPT

service mysql start
service apache2 start

exit 0" > /etc/rc.local

chmod +x /etc/rc.local

