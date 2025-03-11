#!/bin/bash
setfont iso02-12x22
clear
# Display the ASCII art in blue
echo -e "\e[34m
___                 _                       ___  ____  
 |_ _|_ __ ___  _ __ | |__  _ __   ___ _ __  / _ \/ ___| 
  | || '_ \ _ \| '_ \| '_ \| '_ \ / _ \ '_ \| | | \___ \ 
  | || | | | | | |_) | | | | | | |  __/ | | | |_| |___) |
 |___|_| |_| |_| .__/|_| |_|_| |_|\___|_| |_|\___/|____/ 
               |_|
\e[0m"

# Check if the user is connected to the internet
echo "Mengecek Koneksi Internet"

# Ping a reliable server to check connectivity
if ping -c 1 google.com &> /dev/null; then
    echo -e "\e[32mStatus: Konek Internet.\e[0m"
    cage ./.fesnuk.sh
    exit 0
else
    echo -e "\e[31mStatus: Wallahi, gak konek Internet lurr.\e[0m"
fi

# Ask the user if they want to set up the internet
read -p "set dulu internetnya (kalau pake wifi, ethernet lanjut ae)? (Y/N): " choice

# Convert the choice to uppercase
choice=$(echo "$choice" | tr '[:lower:]' '[:upper:]')

# Check the user's choice
if [[ "$choice" == "Y" ]]; then
    echo "Setting up the internet..."
    # Add your internet setup commands here
    # For example, you can use `nmcli` or `nmtui` to set up a connection
	systemctl stop iwd
	systemctl start NetworkManager
     nmtui
else
    echo "Lanjut Boskuhh"
fi

MOZ_ENABLE_WAYLAND=1 cage ./.fesnuk.sh
