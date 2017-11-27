trap '' 2

read -sp "Enter password: " PASSWORD

if [[ "$PASSWORD" != "password" ]]; then exit; else clear; echo Welcome $(whoami); fi
