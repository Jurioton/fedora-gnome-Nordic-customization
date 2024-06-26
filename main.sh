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
cp -r themes/Everforest-Dark-B ~/.themes
cp -r icons/Everforest-Dark ~/.icons

# Installing Cursor Theme
git clone https://github.com/vinceliuice/WhiteSur-cursors.git --depth=1
cd WhiteSur-cursors/
./install.sh

#Settinng up the shell theme
#Before that you need to install gnome-shell-extension-user-theme
gsettings set org.gnome.shell.extensions.user-theme name "Everforest-Dark-B"

#Setting up icon theme
gsettings set org.gnome.desktop.interface icon-theme 'Everforest-Dark'

#Setting up the cursor theme
gsettings set org.gnome.desktop.interface cursor-theme 'WhiteSur-cursors'

#Setting up the theme Nordic theme
gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Dark-B"
gsettings set org.gnome.desktop.wm.preferences theme "Everforest-Dark-B"

wallpaper/
# Wallpapers
mkdir -p ~/Pictures/
cp -r wallpaper/* ~/Pictures/ 
gsettings set org.gnome.desktop.background picture-uri "file:///home/$user_name/Pictures/2024-04-15-14-34-44-fog_forest_alt_2.png"
gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/$user_name/Pictures/2024-04-15-14-34-44-fog_forest_alt_2.png"


