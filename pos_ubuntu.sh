#!/bin/bash

echo "Script de pós instalação para ubuntu by:"

 echo   "$$\                      $$\                                     $$$$$$$$\ " 
 echo   " \__|                     $$ |                                    \____$$  | "
 echo   " $$\  $$$$$$\  $$\    $$\ $$$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\      $$  /  "
 echo   " $$ |$$  __$$\ \$$\  $$  |$$  __$$\  \____$$\ $$  __$$\  \____$$\    $$  /   "
 echo   " $$ |$$ |  \__| \$$\$$  / $$ |  $$ | $$$$$$$ |$$ |  $$ | $$$$$$$ |  $$  /    "
 echo   " $$ |$$ |        \$$$  /  $$ |  $$ |$$  __$$ |$$ |  $$ |$$  __$$ | $$  /     "
 echo   " $$ |$$ |         \$  /   $$ |  $$ |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$$\  "
 echo   " \__|\__|          \_/    \__|  \__| \_______|\__|  \__| \_______|\________| "
                                                                           
                                                                           
                                                                           
echo "Preparando o sistema..."

sudo apt update -y && sudo apt upgrade -y

echo "baixando utilitários..."

sudo apt install git -y
sudo apt install code -y
sudo apt install gnome-software -y
sudo apt install gnome-shell-extension-gsconnect -y

echo "Desinstalando Snaps e a dicionando suporte a flatpak..."
sudo apt purge snapd -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
$ flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo