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
                                                                           
echo "Deem uma star e compartilhem xD"
                                                                           
echo "Preparando o sistema..."

sudo apt update -y && sudo apt upgrade -y
sudo ufw enable

echo "baixando utilitários..."

sudo apt install gnome-software -y
sudo apt install gnome-shell-extension-gsconnect -y
sudo apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo apt install ./google-chrome*.deb -y
sudo apt install code

echo "instalando o gnome vanilla..."

sudo apt remove ubuntu-session -y
sudo apt purge ubuntu-desktop -y
sudo apt install gnome-session -y
sudo apt install vanilla-gnome-desktop && sudo apt install vanilla-gnome-default-settings -y

echo "Desinstalando Snaps e a dicionando suporte a flatpak..."

sudo apt purge snapd -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Preparando o sistema para jogos..."
sudo apt install wine-stable -y
sudo flatpak install flathub com.valvesoftware.Steam -y
sudo flatpak install flathub com.heroicgameslauncher.hgl -y
sudo flatpak install flathub net.davidotek.pupgui2 -y
sudo flatpak install flathub net.lutris.Lutris -y

echo "Finalizando pos instalacao e reiniciando sistema..."
sudo apt autoremove --purge -y
sudo systemctl reboot
