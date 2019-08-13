#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
MULTI_SCREENS=$(xrandr | pcregrep -M "DP-2-2 connected(\n|.)*DP-2-3 connected")

if [ -z "$MULTI_SCREENS" ]
then
    # single screen
    $DIR/monitorSetupSingleLaptop.sh
else
    $DIR/monitorSetupDockingStation.sh
fi
