#!/bin/bash

user_name="$USER"

# Cleaning previous directories
echo "Cleaning directories..."

# Installing gtk-murrine
#sudo dnf install gtk-murrine-engine

#Cloning required repos
#Evergreen GTK Theme and Icons
git clone https://github.com/Fausto-Korpsvart/Everforest-GTK-Theme.git --depth=1
cd Everforest-GTK-Theme
cd themes 
cp -r Everforest-Dark-B ../../.themes
# Cursors
#git clone https://github.com/vinceliuice/WhiteSur-cursors.git --depth=1
# Wallpapers
#git clone https://github.com/isouravgope/Nord-Wallpapers.git
#mv Nord-Wallpapers/ .local/share/backgrounds/



#Setting up the theme Nordic theme
gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Dark-B"
gsettings set org.gnome.desktop.wm.preferences theme "Everforest-Dark-B"

#Setting up the icons
#git clone https://github.com/alvatip/Nordzy-icon.git
#cd Nordzy-icon/
#sudo ./install.sh

#Setting wallpapers

#gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/<user_name>/.local/backgrounds/Nord-Wallpapers/wallpapers/21.png"


