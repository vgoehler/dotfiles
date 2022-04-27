#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MULTI_SCREENS=$(xrandr | pcregrep -M "DP-0 connected(\n|.)*HDMI-0 connected")
HOME_OFFICE=$(xrandr | pcregrep -M "DVI-I-2-1 connected(\n|.)*DVI-I-3-2 connected")
LAPTOP_SCREEN_ACTIVE=$(xrandr | pcregrep -M "eDP-1-0 connected \(")

if [ -n "$LAPTOP_SCREEN_ACTIVE" ]
then
    # laptop off
    LAPTOP_CLOSED="_closedLaptop"
else
    # laptop screen is active
    LAPTOP_CLOSED=""
fi

if [ -n "$MULTI_SCREENS" ]
then
    SH_NAME="monitorSetupDockingStation"
elif [ -n "$HOME_OFFICE" ]
then
    SH_NAME="monitorSetupHomeOffice"
else
    # single screen
    SH_NAME="monitorSetupSingleLaptop"
fi
$DIR/${SH_NAME}${LAPTOP_CLOSED}.sh

