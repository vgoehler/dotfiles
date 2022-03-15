#!/bin/sh
xrandr \
    --output eDP-1-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
    --output DP-2 --off \
    --output DP-1 --off \
    --output DP-0 --off \
    --output DVI-I-5-4 --off \
    --output DVI-I-4-3 --off \
    --output DVI-I-3-2 --off \
    --output DVI-I-2-1 --off
