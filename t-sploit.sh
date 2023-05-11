#!/bin/bash
#!/bin/sh

clear

run_sqlinj() {
    echo "SQL İnjection çalıştırılıyor..."
    python sqlinj/sqlmap.py
}

run_ddos() {
    echo "DDoS çalıştırılıyor..."
    python ddos.py
}

run_phishing() {
    echo "phishing çalıştırılıyor..."
    chmod +x phishing/zpisher.sh
    ./phishing/zpisher.sh
}

case $1 in
    "--help")
        sleep 1
        echo -e "
--help & --h   (Yardım Menüsünü Çağırır)
--ıp & --ip    (Giriş Yapmış Kişilerin Ip Adresini Listeler)
--user         (Giriş Yapılmış Username & Pass)
--mac          (Giriş Yapanların Mac Adresleri)
--location     (Belirtilen Ip Adresinin Yer Tespiti)
--ddos         (DDoS Saldırısı Başlatır)
--phishing     (Phishing Saldırısı Başlatır)
        "
        ;;
    "--h")
        sleep 1
        echo -e "
--help & --h   (Yardım Menüsünü Çağırır)
--ıp & --ip    (Giriş Yapmış Kişilerin Ip Adresini Listeler)
--user         (Giriş Yapılmış Username & Pass)
--mac          (Giriş Yapanların Mac Adresleri)
--location     (Belirtilen Ip Adresinin Yer Tespiti)
--ddos         (DDoS Saldırısı Başlatır)
--phishing     (Phishing Saldırısı Başlatır)
        "
        ;;
    "sqlinj")
        run_sqlinj
        ;;
    "ddos")
        run_ddos
        ;;
    "phishing")
        run_phishing
        ;;
esac

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
}

banner

read -p "İşlem Numarası: " islem

# İşlemi değerlendir ve il
