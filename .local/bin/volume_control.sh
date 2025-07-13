#!/bin/bash

# Регулировка громкости
if [ "$1" == "up" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
    notify-send -u normal "Volume" "$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')" -i audio-volume-high -t 1000  # 1000ms = 1 секунда
elif [ "$1" == "down" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -5%
    notify-send -u normal "Volume" "$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')" -i audio-volume-low -t 1000  # 1000ms = 1 секунда
elif [ "$1" == "mute" ]; then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    if [ "$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')" == "yes" ]; then
        notify-send -u normal "Volume" "Muted" -i audio-volume-muted -t 1000  # 1000ms = 1 секунда
    else
        notify-send -u normal "Volume" "$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')" -i audio-volume-high -t 1000  # 1000ms = 1 секунда
    fi
fi
