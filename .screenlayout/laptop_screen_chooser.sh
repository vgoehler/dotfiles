#!/bin/bash

MULTI_SCREENS=$(xrandr | pcregrep -M "DP-2-2 connected(\n|.)*DP-2-3 connected")

if [ -z "$MULTI_SCREENS" ]
then
    # single screen
    ./monitorSetupSingleLaptop.sh
else
    ./monitorSetupDockingStation.sh
fi
