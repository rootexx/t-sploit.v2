import os
from colorama import Fore, Style

def run_sqlinj():
    print(f"{Fore.GREEN}SQL Injection özelliği çalışıyor.{Style.RESET_ALL}")
    os.system("python3 sqlinj/sqlmap.py")

def run_phishing():
    print(f"{Fore.YELLOW}Phishing özelliği çalışıyor.{Style.RESET_ALL}")
    os.system("bash phishing/shellphish.sh")

def run_ddos():
    print(f"{Fore.RED}DDoS özelliği çalışıyor.{Style.RESET_ALL}")
    os.system("python3 ddos.py")

def main():
    print("Hoş geldiniz!")
    print(f"{Fore.CYAN}1. SQL Injection")
    print(f"{Fore.CYAN}2. Phishing")
    print(f"{Fore.CYAN}3. DDoS{Style.RESET_ALL}")

    choice = input("Seçiminizi yapın: ")

    if choice == "1":
        run_sqlinj()
    elif choice == "2":
        run_phishing()
    elif choice == "3":
        run_ddos()
    else:
        print("Geçersiz seçim.")

if __name__ == "__main__":
    main()
