#! /bin/sh

chosen=$(printf "Log Out\nSuspend\nRestart\nPower OFF" | rofi -dmenu -i )

case "$chosen" in
	"Log Out") killall sway ;;
	"Suspend") systemctl suspend && swaylock -i ~/Pictures/backgrounds/VIM.png ;;
	"Restart") systemctl reboot ;;
	"Power OFF") systemctl poweroff ;;
	*) exit 1 ;;
esac
