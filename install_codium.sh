#!/usr/bin/env bash

# Install on Debian 64bit (deb package):
# Add the GPG key of the repository:

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

# Add the ropository:

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list


# Update then install vscodium (if you want vscodium-insiders, then replace codium by codium-insiders):

sudo apt update
sudo apt install codium

 ########################################################
 # End of script
 
 sudo apt autoremove

 printf "\e[1;32mYou are finished with install! Thanks you.\e[0m\n"

