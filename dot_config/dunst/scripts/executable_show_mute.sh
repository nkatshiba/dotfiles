#!/bin/bash

mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print tolower($0)}')

icon="111111111111111111111111111111111"

if [[ $mute == "mute: yes" ]]; then
	icon="000000000000000000000000000000000"
fi

notify-send -t 700 -u normal "${icon}${icon}${icon}"
