#/usr/bin/bash

# Get current wallpaper
wp="$(hyprctl hyprpaper listloaded)"

# Refresh pywal colors
wal -i $wp

# Reload apps using pywal colorschemes
source ~/.dotfiles/scripts/waybar-startup.sh

sed -i "s#/home/ian/Pictures/backgrounds/.*.jpg#$wp#g" ~/.dotfiles/.config/hypr/hyprpaper.conf
