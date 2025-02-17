#!/bin/bash

THRESHOLD=20
BATTERY_LEVEL=$(pmset -g batt | grep -Eo "[0-9]+%" | cut -d% -f1)

if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ]; then
    osascript -e 'display notification "Battery low! Plug in charger." with title "Battery Alert ⚡"'
fi

