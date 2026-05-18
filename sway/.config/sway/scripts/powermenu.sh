#!/usr/bin/env bash

options="Lock\nLogout\nShutdown\nReboot"

chosen=$(echo -e "$options" | fuzzel --dmenu --hide-prompt)

case "$chosen" in
    Lock)
        swaylock -C ~/.config/swaylock/config 
        ;;
    Logout)
        swaymsg exit
        ;;
    Shutdown)
	confirm=$(printf "No\nYes" | fuzzel --dmenu -p "Shutdown ?" --placeholder='' --prompt-color=f5e0dcff)
	[ "$confirm" = "Yes" ] && systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
	    ;;
    esac
