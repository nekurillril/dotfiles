#!/bin/bash
#find $HOME/Pictures/wallpaper/* | rofi -config .config/wallchanger/config.rasi -dmenu |xargs wal -i 
pic=$HOME/Pictures/wallpaper/
rofipic="$(ls "$pic" | rofi -dmenu)"

feh --bg-scale "$pic"/"$rofipic"
wal-telegram --wal --background ~/Downloads/photo_2023-04-12_18-45-08.jpg -g
killall -q sxhkd
bspc wm -r