#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MULTI_SCREENS=$(xrandr | pcregrep -M "DP-2-2 connected(\n|.)*DP-2-3 connected")
HOME_OFFICE=$(xrandr | pcregrep -M "DP-2-1 connected(\n|.)*DP-2-2 connected")

if [ -n "$MULTI_SCREENS" ]
then
    # office setup: 1 big screen, left 1 small screen, further left laptop screen
    # changed this as Ultra HD resolution is not ideal on xorg, wayland change?
    # office setup: 1 screen, left another screen, further left laptop screen
    $DIR/monitorSetupDockingStation.sh
elif [ -n "$HOME_OFFICE" ]
then
    # home office setup; 2 small screens, laptop off
    $DIR/monitorSetupHomeOffice_closedLaptop.sh
else
    # single screen
    $DIR/monitorSetupSingleLaptop.sh
fi
