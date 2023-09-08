#!/bin/bash

MONITOR=$(hyprctl monitors | awk '/ID/ {gsub("[:)]",""); id=$NF} /focused: yes/ {print id}' | awk '{if (NF) print}')

~/src/clones/eww/target/release/eww open $1$MONITOR --toggle
