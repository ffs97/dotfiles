#!/bin/bash
# ======================================================================================
#   Name:       powermenu.sh
#   Author:     Gurpreet Singh
#   Url:        https://github.com/ffs97/dotfiles/rofi/powermenu.sh
#   License:    The MIT License (MIT)
#
#   Script for rofi powermenu
# ======================================================================================

theme=$1

rofi_command="rofi -theme $HOME/.config/rofi/$theme/power.rasi"

prompt="welcome @`whoami`"

# Options
shutdown=""
suspend=""
reboot=""

options="$shutdown\n$suspend\n$reboot"

chosen="$(echo -e "$options" | $rofi_command -p "$prompt" -dmenu -selected-row 1)"
case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $suspend)
        systemctl suspend
        ;;
esac
