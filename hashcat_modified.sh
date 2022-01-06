#!/bin/bash

echo ""
echo "HashCat Modified"
echo ""

echo ""
echo -e "\e[33m Ingrese el numero del Hash-Mode\e[0m - \e[31mExample: 0 \e[0m"
echo ""
read hash_mode

echo ""
echo -e "\e[33m Ingrese la ruta de los Hash \e[0m - \e[31m Example: /the/path/hash.txt \e[0m"
echo ""
read hash

echo ""
echo -e "\e[33m Ingrese la ruta del Diccionario\e[0m - \e[31mExample: /usr/share/wordlists/rockyou.txt \e[0m"
echo ""
read dicc

echo ""
echo -e "\e[31m--------------------------------------------------------------\e[0m"
echo ""

hashcat -m $hash_mode -a 0 $hash $dicc

echo ""
echo -e "\e[31m--------------------------------------------------------------\e[0m"
echo ""

hashcat --show -m $hash_mode -a 0 $hash $dicc
