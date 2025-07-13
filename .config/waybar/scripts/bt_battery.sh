#!/bin/bash

# Получаем список подключённых Bluetooth-устройств
devices=$(bluetoothctl devices Connected | awk '{print $2}')

for mac in $devices; do
    # Проверяем, является ли устройство аудио (HFP, A2DP и т.д.)
    info=$(bluetoothctl info "$mac")
    if echo "$info" | grep -q -E "UUID.*Audio"; then
        # Ищем уровень заряда
        battery=$(echo "$info" | grep "Battery Percentage" | awk '{print $3}' | tr -d '%')
        name=$(echo "$info" | grep "Name" | cut -d ' ' -f2-)

        if [ -n "$battery" ]; then
            echo "$name: $battery%"
            exit 0
        else
            echo "$name: N/A"
            exit 0
        fi
    fi
done

$name: "🔊";
