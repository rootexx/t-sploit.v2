#!/bin/bash
#!/bin/sh

clear

run_sqlinj() {
    echo "sqlinj dosyası çalıştırılıyor..."
    python sqlinj/sqlmap.py
}

run_ddos() {
    echo "ddos.py dosyası çalıştırılıyor..."
    python ddos/ddos.py
}

run_phishing() {
    echo "zpisher.sh dosyası çalıştırılıyor..."
    chmod +x phishing/zpisher.sh
    ./phishing/zpisher.sh
}

banner() {
    echo -e '
\033[37;41m
        ██╗░░░██╗░█████╗░██╗░░██╗██╗███╗░░██╗██████╗░██╗░░░██╗
        ██║░░░██║██╔══██╗██║░██╔╝██║████╗░██║██╔══██╗╚██╗░██╔╝
        ██║░░░██║███████║█████═╝░██║██╔██╗██║██║░░██║░╚████╔╝░
        ██║░░░██║██╔══██║██╔═██╗░██║██║╚████║██║░░██║░░╚██╔╝░░
        ██████╔╝██║░░██║██║░╚██╗██║██║░╚███║██████╔╝░░░██║░░░
        ╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝
    '
    echo -e '
\033[0m[1] SQL Injection
[2] DDoS
[3] Phishing
[4] Exit
    '
    read -p "Select an option: " choice
    case $choice in
        1)
            run_sqlinj
            ;;
        2)
            run_ddos
            ;;
        3)
            run_phishing
            ;;
        4)
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a valid option."
            ;;
    esac
}

while true; do
    banner
done
