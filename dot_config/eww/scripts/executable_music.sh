#!/bin/bash

function remove_leading_zeros() {
    local value=$1
    echo $((10#$value))
}

function time_to_seconds() {
    local time_str=$1
    local hours=${time_str%%:*}
    time_str=${time_str#*:}
    local minutes=${time_str%%:*}
    local seconds=${time_str##*:}
    hours=$(remove_leading_zeros "$hours")
    minutes=$(remove_leading_zeros "$minutes")
    seconds=$(remove_leading_zeros "$seconds")
    echo $((hours * 3600 + minutes * 60 + seconds))
}

duration=$(playerctl metadata --format "{{duration(mpris:length)}}")

atPosition=$(playerctl metadata --format "{{duration(position)}}")

song_duration_seconds=$(time_to_seconds $duration)

current_position_seconds=$(time_to_seconds $atPosition)

percentage=0

if [[ $song_duration_seconds -ne 0 ]]; then
    percentage=$(( ($current_position_seconds * 100) / $song_duration_seconds ))
fi

echo $percentage