#!/bin/bash

notify-send -t 700 -u normal "KBD Backlight: " -h int:value:"$(brightnessctl --device='spi::kbd_backlight' -m | awk -F, '{print substr($4, 0, length($4)-1)}')"
