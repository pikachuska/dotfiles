#!/bin/bash

choice=$(echo -e "HEX\nRGB" | wofi --dmenu -p "Выбери формат:")

[ -z "$choice" ] && exit

format="hex"
[ "$choice" = "RGB" ] && format="rgb"

sleep 0.4s
color=$(hyprpicker -f $format)
echo -n "$color" | wl-copy
notify-send "🎨 Цвет ($format) скопирован" "$color"
