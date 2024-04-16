#!/bin/bash

user_name="$USER"

# Cleaning previous directories
echo "Cleaning directories..."

# Installing gtk-murrine
sudo dnf install gtk-murrine-engine

#Cloning required repos
#Evergreen GTK Theme and Icons
git clone https://github.com/EliverLara/Nordic.git --depth=1
mv Nordic .themes
# Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git --depth=1
# Wallpapers
git clone https://github.com/isouravgope/Nord-Wallpapers.git
mv Nord-Wallpapers/ .local/share/backgrounds/



#Setting up the theme Nordic theme
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"

#Setting up the icons
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon/
sudo ./install.sh

#Setting wallpapers

gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/.local/backgrounds/Nord-Wallpapers/wallpapers/21.png"


