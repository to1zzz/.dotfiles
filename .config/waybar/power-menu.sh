#!/usr/bin/env bash

if command -v sudo &>/dev/null; then
  PRIV="sudo"
elif command -v doas &>/dev/null; then
  PRIV="doas"
else
  notify-send "Ошибка" "Не найдено ни sudo, ни doas"
  exit 1
fi

SELECTION=$(echo -e "  Shutdown\n  Reboot\n  Exit to TTY" | fuzzel \
  --dmenu \
  --prompt="  Power: " \
  --lines=3 \
  --width=20)

CHOICE=$(echo "$SELECTION" | tr -d '\r\n' | xargs)

case "$CHOICE" in
"Shutdown")
  $PRIV shutdown -h now
  ;;
"Reboot")
  $PRIV reboot
  ;;
"Exit to TTY")
  #
  pkill -u "$USER"
  ;;
esac
