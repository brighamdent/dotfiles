#!/bin/bash

# Defining the path to the Rofi theme file
rofi_theme_file="$HOME/.config/rofi/config.rasi"
rofi_power_theme="$HOME/.config/rofi/powermenu.rasi"

# Using sed to replace the background-image path within the inputbar section of the .rasi (rofi) file
sed -i "/inputbar {/,/}/ s|url(\"[^\"]*\", width)|url(\"$1\", width)|" "$rofi_theme_file"
sed -i "/inputbar {/,/}/ s|url(\"[^\"]*\", width)|url(\"$1\", width)|" "$rofi_power_theme"

#Changes background using swww
swww img --transition-type wipe --transition-angle 30 --transition-step 200 $1

#Sets pywal color scheme
wal -i $1 -n

#Refreshes swaync
swaync-client -rs
mkdir -p "$HOME/.current_wallpaper"

#Saves the current wallpaper in ~/.current_wallpaper/currentwallpaper.png
convert $1 /$HOME/.current_wallpaper/currentwallpaper.png

#Blurs the current wallpaper for wlogout to use
convert $HOME/.current_wallpaper/currentwallpaper.png -scale 10% -blur 0x4 -resize 1000% $HOME/.current_wallpaper/currentwallpaperblurred.png

