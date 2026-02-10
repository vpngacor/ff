#!/bin/bash
clear

NC='\033[0m'
C='\033[96m'
R='\033[1;31m'
RED='\033[0;31m'

# ===== HEADER =====
echo -e "${C}┌──────────────────────────────────────────────┐${NC}"
echo -e "${C}│                  BADUD VPN                   │${NC}"
echo -e "${C}└──────────────────────────────────────────────┘${NC}"

# ===== MENU BOX (KANAN LURUS) =====
echo -e "${C}┌──────────────────────────────────────────────┐${NC}"
echo -e "${C}│ [${R}01${NC}${C}] SSH MENU        [${R}07${NC}${C}] STATUS RUNNING   ${C}│${NC}"
echo -e "${C}│ [${R}02${NC}${C}] VMESS MENU      [${R}08${NC}${C}] PIX SSH          ${C}│${NC}"
echo -e "${C}│ [${R}03${NC}${C}] VLESS MENU      [${R}09${NC}${C}] BACKUP & RESTORE ${C}│${NC}"
echo -e "${C}│ [${R}04${NC}${C}] TROJAN MENU     [${R}10${NC}${C}] INSTALL UDP      ${C}│${NC}"
echo -e "${C}│ [${R}05${NC}${C}] SETTING MENU    [${R}11${NC}${C}] ADD DOMAIN       ${C}│${NC}"
echo -e "${C}│ [${R}06${NC}${C}] UPDATE SCRIPT   [${R}12${NC}${C}] ZIPVPN           ${C}│${NC}"
echo -e "${C}│ [${R}13${NC}${C}] UPBCK                                  ${C}│${NC}"
echo -e "${C}└──────────────────────────────────────────────┘${NC}"

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