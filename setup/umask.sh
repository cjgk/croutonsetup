# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "umask 0002" > /etc/profile.d/umask.sh
chmod +x /etc/profile.d/umask.sh
