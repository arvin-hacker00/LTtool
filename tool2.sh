#!/bin/bash
R='\033[0;31m'
G='\033[0;32m'
Y='\033[0;33m'
B='\033[0;34m'
C='\033[0;36m'
W='\033[1;37m'
M='\033[0;35m'
NC='\033[0m'
MY_LINK="https://github.com/arvin-hacker00/Arvin-hacker-cp-hack.git"
while true; do
    clear
    echo -e "${W}========================}Developer: LT hacker ${NC}"
    echo -e "${R}==================================================================================${NC}"
    echo -e "${C}  MAIN MENU${R}  _      _______  ${NC}"
    echo -e "${W} 1. Update System           12. Whois Lookup${R} | |    |__   __| ${NC}"
    echo -e "${W} 2. Install Python          13. Ping Target${R} | |       | |    ${NC}"
    echo -e "${W} 3. Install Git            14. Traceroute${R} | |___    | |    ${NC}"
    echo -e "${W} 4. Network Scan (Nmap)     15. SSH Start${R} |_____|   |_|    ${NC}"
    echo -e "${W} 5. Port Scan              16. Clean Cache${G}  ____  _  _  ____ ${NC}"
    echo -e "${W} 6. System Info            17. Password Gen${G} |  _ \\| || |/ ___|${NC}"
    echo -e "${W} 7. Battery Info           18. Base64 Encode${G} | |_) | || ||___  ${NC}"
    echo -e "${W} 8. IP Info                19. Base64 Decode${G} |  _ <| || |___ ${NC}"
    echo -e "${W} 9. Memory Usage           20. Check Internet${G} |_| \\_\\_||_|\\____|${NC}"
    echo -e "${W} 10. Storage Info          21. Web Header${R}   ${Y}  LT HACKER${NC}"
    echo -e "${W} 11. DNS Lookup            22. Update Packages${R}   ${Y}  SECURITY${NC}"
    echo -e "${C} --------------------------------------------------------------------------------${NC}"
    echo -e "${W} 23. Curl Version           32. Disk Usage${M} [ NEW TOOLS ] ${NC}"
    echo -e "${W} 24. Hostname              33. User List${M} ---------------- ${NC}"
    echo -e "${W} 25. Kernel Version        34. Process List${M} Added 20 Tools  ${NC}"
    echo -e "${W} 26. Public IP             35. Current Date${M} Total: 42 Opts  ${NC}"
    echo -e "${W} 27. Local IP              36. System Uptime${M} ---------------- ${NC}"
    echo -e "${W} 28. Network Interfaces    37. CPU Info${R}  ${G}  !!${NC}"
    echo -e "${W} 29. Packet Capture        38. Netstat Scan${R}  ${G}  !!${NC}"
    echo -e "${W} 30. HTTP Status Check     39. ARP Scan${R}  ${G}  !!${NC}"
    echo -e "${W} 31. Directory List        40. System Log${R}  ${G}  !!${NC}"
    echo -e "${W} 41. Weather Check         42. Random Quote${R}  ${G}  !!${NC}"
    echo -e "${W} 0. Exit${R}  ${G}  !!${NC}"
    echo -e "${R}==================================================================================${NC}"
    echo -e "${G}  ╔══════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${G}  ║${Y}LINK: ${MY_LINK}${G} ║ ${NC}"
    echo -e "${G}  ╚══════════════════════════════════════════════════════════════════════════╝${NC}"
    echo -e "${R}==================================================================================${NC}"
    read -p "Choice: " ch
    case $ch in
        1) pkg update -y && pkg upgrade -y ;;
        2) pkg install python -y ;;
        3) pkg install git -y ;;
        4) read -p "Target: " t; nmap $t ;;
        5) read -p "Target: " t; nmap -p 1-1000 $t ;;
        6) uname -a ;;
        7) termux-battery-status ;;
        8) curl ifconfig.me ;;
        9) free -m ;;
        10) df -h ;;
        11) read -p "Domain: " d; nslookup $d ;;
        12) read -p "Domain: " d; whois $d ;;
        13) read -p "Target: " t; ping -c 4 $t ;;
        14) read -p "Target: " t; traceroute $t ;;
        15) sshd ;;
        16) rm -rf ~/.cache/* ;;
        17) openssl rand -base64 12 ;;
        18) read -p "Text: " t; echo $t | base64 ;;
        19) read -p "B64: " t; echo $t | base64 -d ;;
        20) ping -c 1 google.com ;;
        21) read -p "URL: " u; curl -I $u ;;
        22) pkg upgrade -y ;;
        23) curl --version ;;
        24) hostname ;;
        25) uname -r ;;
        26) curl -s https://api.ipify.org ;;
        27) ifconfig ;;
        28) ip addr ;;
        29) echo "Installing tcpdump..."; pkg install tcpdump -y; tcpdump -c 5 ;;
        30) read -p "URL: " u; curl -s -o /dev/null -w "%{http_code}" $u ;;
        31) ls -la ;;
        32) du -sh * ;;
        33) cat /etc/passwd ;;
        34) top -n 1 ;;
        35) date ;;
        36) uptime ;;
        37) lscpu ;;
        38) netstat -tunlp ;;
        39) pkg install arp-scan -y; arp-scan -l ;;
        40) dmesg | tail -n 20 ;;
        41) read -p "City: " c; curl "wttr.in/$c" ;;
        42) curl -s https://api.quotable.io/random | grep "content" ;;
        0) exit 0 ;;
        *) echo "Invalid Choice!" ;;
    esac
    read -p "Press Enter to go back..."
done
