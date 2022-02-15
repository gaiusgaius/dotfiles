#!/bin/bash

# low_battery: Send an Alert when battery is below 10%

i3status | while read info; do
  percentage=$(echo "$info" | cut -d'|' -f 4 | cut -d' ' -f 3 | cut -d',' -f 1)
  if (( "$percentage" <= 10 )); then
    notify-send -u critical "Low Battery" "The Battery Percentage is below 10%"
    exit 0
  fi
done


