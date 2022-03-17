#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MULTI_SCREENS=$(xrandr | pcregrep -M "DP-2-2 connected(\n|.)*DP-2-3 connected") #TODO needs to change
HOME_OFFICE=$(xrandr | pcregrep -M "DVI-I-2-1 connected(\n|.)*DVI-I-3-2 connected")
LAPTOP_SCREEN_INACTIVE=$(xrandr | pcregrep -M "eDP-1-0 connected \(")

if [ -n "$MULTI_SCREENS" ]
then
    # office setup: 1 big screen, left 1 small screen, further left laptop screen
    # changed this as Ultra HD resolution is not ideal on xorg, wayland change?
    # office setup: 1 screen, left another screen, further left laptop screen
    $DIR/monitorSetupDockingStation.sh
    # TODO needs switch between closed/opened laptop
elif [ -n "$HOME_OFFICE" ]
then
    # home office setup
    if [ -n "$LAPTOP_SCREEN_INACTIVE" ]
    then
        # laptop screen is active
        $DIR/monitorSetupHomeOffice.sh
    else
        # 3 screens, laptop off
        $DIR/monitorSetupHomeOffice_closedLaptop.sh
    fi
else
    # single screen
    $DIR/monitorSetupSingleLaptop.sh
fi
