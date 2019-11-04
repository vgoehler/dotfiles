#!/bin/bash

ICON=$HOME/.xlock/icon.png
TMPBG=/tmp/screen.png

scrot $TMPBG

convert $TMPBG -scale 10% -scale 1000%  $TMPBG

if [[ -f $ICON ]]
then
    # placement x/y
    PX=0
    PY=0
    # lockscreen image info
    R=$(file $ICON | grep -o '[0-9]* x [0-9]*')
    RX=$(echo $R | cut -d' ' -f 1)
    RY=$(echo $R | cut -d' ' -f 3)
 
    SR=$(xrandr --query | grep ' connected' | sed -e 's/connected primary/connected/g' | cut -f3 -d' ')
    for RES in $SR
    do
        # monitor position/offset
        SRX=$(echo $RES | cut -d'x' -f 1)                   # x pos
        SRY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 1)  # y pos
        SROX=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 2) # x offset
        SROY=$(echo $RES | cut -d'x' -f 2 | cut -d'+' -f 3) # y offset
        PX=$(($SROX + $SRX/2 - $RX/2))
        PY=$(($SROY + $SRY/2 - $RY/2))
 
        convert $TMPBG $ICON -geometry +$PX+$PY -composite -matte  $TMPBG
    done
fi

# pause mediaplayer
playerctl pause

# lock keepass
/usr/bin/keepass2 --lock-all

i3lock --ignore-empty-password --image=$TMPBG
