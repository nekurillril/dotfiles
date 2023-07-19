#!/usr/bin/env bash

uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -no-config -theme ~/.config/rofi/config.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
logout=" Logout"

# Variable passed to rofi
options="$shutdown\n$reboot\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
		systemctl poweroff
        ;;
    $reboot)
		systemctl reboot
        ;;
    $logout)
		bspc quit
        ;;
esac


font-0 = monospace;2

