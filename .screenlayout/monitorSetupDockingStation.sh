#!/bin/sh
xrandr \
    --output DP-0 --off \
    --output DP-1 --off \
    --output HDMI-0 --off \
    --output DP-2 --off \
    --output DVI-I-5-4 --off \
    --output DVI-I-4-3 --off \
    --output DVI-I-2-1 --mode 3840x2160 --pos 3840x0 --rotate normal \
    --output DVI-I-3-2 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
    --output eDP-1-0 --mode 2560x1440 --pos 7680x720 --rotate normal
