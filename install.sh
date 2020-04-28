
#!/bin/bash


apt update
apt upgrade
pkg install bash*
apt install mariadb
mkdir -p  /data/data/com.termux/files/usr/etc/my.cnf.d
mysql_install_db
mysqld_safe -u root &
chmod +x mitm.sh
clear
bash mitm.sh
