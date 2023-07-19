find $HOME/Pictures/wallpaper/* | rofi -config .config/wallchanger/config.rasi -dmenu |xargs wal -i 
wal-telegram --wal --background ~/Downloads/photo_2023-04-12_18-45-08.jpg -g
killall -q sxhkd
bspc wm -r