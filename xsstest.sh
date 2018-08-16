#!/bin/bash

Negro='\033[0;30m'
Rojo='\033[0;31m'
Verde='\033[0;32m'
Amarillo='\033[0;33m'
Azul='\033[0;34m'
Purpura='\033[0;35m'
Cyan='\033[0;36m'
Blanco='\033[0;37m'
Normal='\033[0m'

cat << "INFO"
 __   __ _____ _____ _            _
 \ \ / // ____/ ____| |          | |
  \ V /| (___| (___ | |_ ___  ___| |_
   > <  \___ \\___ \| __/ _ \/ __| __|
  / . \ ____) |___) | ||  __/\__ \ |_
 /_/ \_\_____/_____/ \__\___||___/\__|
                     hackingyseguridad.con
INFO

if [ -z "$1" ]; then
        printf "${Amarillo}" ; echo
        echo "Test vulnerabilidad XSS url web."
        echo "Uso: $0 <URL>"; printf "${Normal}\n"
        exit 0
fi

echo
echo "==========================================="
echo "test sobre la url.: $1"
echo "==========================================="
echo

for n in `cat diccionario.txt`
do
        fqdn=$1"/"$n
        if curl $fqdn -I --silent|grep "200 OK"
        then echo $fqdn
        fi
done
