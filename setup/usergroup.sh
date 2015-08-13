# no fucking peasants!
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

user=$(grep 1000 /etc/passwd | cut -f1 -d:)

gpasswd -a $user www-data
