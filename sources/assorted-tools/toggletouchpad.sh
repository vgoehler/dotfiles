#!/bin/bash
#Source: https://faq.i3wm.org/question/3747/enabling-multimedia-keys/?answer=3759#post-id-3759
if synclient -l | grep "TouchpadOff .*=.*0" ; then
    synclient TouchpadOff=1 ;
else
    synclient TouchpadOff=0 ;
fi
