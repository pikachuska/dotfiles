#!/bin/bash

# Файл для состояния fullscreen
STATE_FILE="/tmp/hypr_fullscreen_state"

WAYBAR_PID=$(pidof waybar)

if [ ! -f "$STATE_FILE" ]; then
  # Включаем fullscreen
  hyprctl dispatch fullscreen activewindow
  # Отключаем blur (если используешь)
  hyprctl dispatch toggleblur # или другой твой метод

  echo "1" > "$STATE_FILE"
else
  # Выключаем fullscreen
  hyprctl dispatch fullscreen activewindow
  # Включаем blur (если надо)
  hyprctl dispatch toggleblur

  rm -f "$STATE_FILE"
fi
