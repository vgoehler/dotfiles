#!/bin/bash

TOUCHPAD_ID=13
ENABLED=$(xinput list-props $TOUCHPAD_ID | grep "Device Enabled.*:.*1")

if [[ -z $ENABLED ]] ; then
	xinput set-prop $TOUCHPAD_ID "Device Enabled" 1 ;
else	
	xinput set-prop $TOUCHPAD_ID "Device Enabled" 0 ;
fi
