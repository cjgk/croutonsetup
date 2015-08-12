# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# backup
mv /etc/dnsmasq.conf /etc/dnsmasq.conf.bak

# Direct all .dev-calls to self
echo "address=/dev/127.0.0.1" >> /etc/dnsmasq.conf

service dnsmasq restart
