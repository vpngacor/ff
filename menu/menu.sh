#!/bin/bash
clear

NC='\033[0m'
z="\033[96m"
r="\033[1;31m"
RED='\033[0;31m'

# ===== HEADER RAPIH =====
echo -e "${z}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NC}"
echo -e "${z}┃                 BADUD VPN                    ┃${NC}"
echo -e "${z}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"

# ===== MENU =====
echo -e "${z}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${NC}"
echo -e "${z}┃ [${r}01${NC}${z}] SSH MENU        [${r}07${NC}${z}] STATUS RUNNING   ┃${NC}"
echo -e "${z}┃ [${r}02${NC}${z}] VMESS MENU      [${r}08${NC}${z}] PIX SSH          ┃${NC}"
echo -e "${z}┃ [${r}03${NC}${z}] VLESS MENU      [${r}09${NC}${z}] BACKUP & RESTORE ┃${NC}"
echo -e "${z}┃ [${r}04${NC}${z}] TROJAN MENU     [${r}10${NC}${z}] INSTALL UDP      ┃${NC}"
echo -e "${z}┃ [${r}05${NC}${z}] SETTING MENU    [${r}11${NC}${z}] ADD DOMAIN       ┃${NC}"
echo -e "${z}┃ [${r}06${NC}${z}] UPDATE SCRIPT   [${r}12${NC}${z}] ZIPVPN           ┃${NC}"
echo -e "${z}┃ [${r}13${NC}${z}] UPBCK                                ┃${NC}"
echo -e "${z}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${NC}"

read -p " Select From Options [ 1 - 13 ] >> " opt

case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; menu-set ;;
6) clear ; updatemenu ;;
7) clear ; running ;;
8) clear ; wget -q -O fix "https://raw.githubusercontent.com/vpngacor/fix/main/ws-700.sh" && bash fix ;;
9) clear ; menu-backup ;;
10) clear ; wget -O /usr/local/bin/zi.sh https://raw.githubusercontent.com/leryyvpn/udp-zivpn/main/zi.sh && chmod +x /usr/local/bin/zi.sh && zi.sh ;;
11) clear ; add-host ;;
12) clear ; zivpn ;;
13)
clear
wget https://raw.githubusercontent.com/vpngacor/ff/main/backup/set-br.sh && chmod +x set-br.sh && ./set-br.sh
;;
*)
echo -e "${RED}Pilihan tidak valid!"
sleep 1
menu
;;
esac