#!/bin/bash

echo "Script de pós instalação para ubuntu by:"

 echo   "##\                      ##\                                     ########\ " 
 echo   " \__|                     ## |                                    \____##  | "
 echo   " ##\  ######\  ##\    ##\ #######\   ######\  #######\   ######\      ##  /  "
 echo   " ## |##  __##\ \##\  ##  |##  __##\  \____##\ ##  __##\  \____##\    ##  /   "
 echo   " ## |## |  \__| \##\##  / ## |  ## | ####### |## |  ## | ####### |  ##  /    "
 echo   " ## |## |        \###  /  ## |  ## |##  __## |## |  ## |##  __## | ##  /     "
 echo   " ## |## |         \#  /   ## |  ## |\####### |## |  ## |\####### |########\  "
 echo   " \__|\__|          \_/    \__|  \__| \_______|\__|  \__| \_______|\________| "
                                                                           
                                                                           
                                                                           
echo "Preparando o sistema..."

sudo apt update -y && sudo apt upgrade -y

echo "baixando utilitários..."

sudo apt install git -y
sudo apt install gnome-software -y
sudo apt install gnome-shell-extension-gsconnect -y
sudo apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb.
sudo dpkg -i ~/Downloads/google-chrome-stable*.deb.
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb 
sudo dpkg -i vscode.deb 
sudo apt install -f

echo "instalando o gnome vanilla..."

sudo apt remove ubuntu-session -Y
sudo apt purge ubuntu-desktop -y
sudo apt install gnome-session -y
sudo apt install vanilla-gnome-desktop && sudo apt install vanilla-gnome-default-settings -y
sudo apt purge ubuntu-desktop-gnome-shell-extension-ubuntu-dock


echo "Desinstalando Snaps e a dicionando suporte a flatpak..."
sudo apt purge snapd -y
sed -i "\$a# Para evitar que os pacotes do repositório despoletem a instalação do snap," /etc/apt/preferences.d/nosnap.pref
sed -i "2i # este ficheiro proíbe que o snapd seja instalado pelo APT." /etc/apt/preferences.d/nosnap.pref
sed -i "3i Package: snapd" /etc/apt/preferences.d/nosnap.pref
sed -i "4i Pin: release a=*" /etc/apt/preferences.d/nosnap.pref
sed -i "Pin-Priority: -10" /etc/apt/preferences.d/nosnap.pref
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo apt autoremove --purge -y