#!/bin/bash

echo "Script de pós instalação para ubuntu by:"
$$\                      $$\                                     $$$$$$$$\ 
\__|                     $$ |                                    \____$$  |
$$\  $$$$$$\  $$\    $$\ $$$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\      $$  / 
$$ |$$  __$$\ \$$\  $$  |$$  __$$\  \____$$\ $$  __$$\  \____$$\    $$  /  
$$ |$$ |  \__| \$$\$$  / $$ |  $$ | $$$$$$$ |$$ |  $$ | $$$$$$$ |  $$  /   
$$ |$$ |        \$$$  /  $$ |  $$ |$$  __$$ |$$ |  $$ |$$  __$$ | $$  /    
$$ |$$ |         \$  /   $$ |  $$ |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |$$$$$$$$\ 
\__|\__|          \_/    \__|  \__| \_______|\__|  \__| \_______|\________|
                                                                           
                                                                           
                                                                           
echo "Preparando o sistema..."

sudo apt update -y && sudo apt upgrade -y

echo "baixando utilitários..."

sudo apt install git -y
sudo apt install code -y
sudo apt install gnome-software -y
sudo apt install gnome-shell-extension-gsconnect -y

echo "Adicionando suporte a flatpak..."

sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
$ flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo