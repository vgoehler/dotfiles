#!/bin/sh
xrandr --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
    --output DP-1 --off \
    --output HDMI-0 --off \
    --output DP-2 --off \
    --output DVI-I-5-4 --off \
    --output DVI-I-4-3 --off \
    --output DVI-I-3-2 --off \
    --output eDP-1-0 --off \
    --output DVI-I-2-1 --mode 1920x1080 --pos 1920x0 --rotate normal
